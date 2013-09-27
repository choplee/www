/*
 * Control.TabStrip
 * 
 * Converts nested sets of <div> tags into a tabstrip widget to switch between
 * "pages" of content.
 *
 * Written and maintained by Jeremy Jongsma (jeremy@jongsma.org)
 */
if (window.Control == undefined) Control = {};

Control.TabStrip = Class.create();
Control.TabStrip.prototype = {
	initialize: function(container, options) {
		this.container = $(container);

		if (ts = this.container.retrieve('tabstrip'))
			ts.destroy();

		Element.cleanWhitespace(this.container);
		this.options = Object.extend({
				activeClass: 'active',
				inactiveClass: null,
				hoverClass: 'hover',
				disabledClass: 'disabled',
				onactivate: Prototype.emptyFunction,
				ondeactivate: Prototype.emptyFunction,
				disabled: false
			}, options || {});

		this.tabs = new Array();
		this.createTabs(this.container, this.options);
		if (this.options.activeTab)
			this.switchTab(this.options.activeTab);
		else
			this.switchTabByIndex(0);

		this.container.store('tabstrip', this);
		this.destructor = Event.on(window, 'unload', this.destroy.bind(this));
	},
	createTabs: function(cont) {
		if (cont.childNodes.length == 2) {
			var tabs = cont.childNodes[0];
			Element.cleanWhitespace(tabs);
			var panels = cont.childNodes[1];
			Element.cleanWhitespace(panels);
			if (tabs.childNodes.length == panels.childNodes.length)
				for (var i = 0; i < tabs.childNodes.length; ++i) {
					var tab = new Control.TabStrip.Tab(this, tabs.childNodes[i], panels.childNodes[i], this.options);
					if (this.options.disabled && this.options.disabled.include(tab.id)) tab.disable();
					this.tabs[this.tabs.length] = tab;
				}
		}
	},
	destroy: function() {
		this.switchTabByIndex(0);
		for (var i = 0; i < this.tabs.length; i++)
			this.tabs[i].destroy();
		this.container.store('tabstrip', null);
		this.destructor.stop();
	},
	_switchTab: function(tab) {
		for (var i = 0; i < this.tabs.length; ++i)
			if (this.tabs[i] == tab) return this.switchTabByIndex(i);
	},
	switchTab: function(htmlId) {
		for (var i = 0; i < this.tabs.length; ++i)
			if (this.tabs[i].id == htmlId) return this.switchTabByIndex(i);
	},
	switchTabByIndex: function(index) {
		if (!this.tabs[index].disabled) {
			for (var i = 0; i < this.tabs.length; ++i) {
				if (i == index) {
					if (!this.tabs[i].active) this.tabs[i].activate();
				} else {
					if (this.tabs[i].active) this.tabs[i].deactivate();
				}
			}
		}
	},
	disableTab: function(htmlId) {
		for (var i = 0; i < this.tabs.length; ++i)
			if (this.tabs[i].id == htmlId) this.tabs[i].disable();
	},
	enableTab: function(htmlId) {
		for (var i = 0; i < this.tabs.length; ++i)
			if (this.tabs[i].id == htmlId) this.tabs[i].enable();
	}
};

Control.TabStrip.Tab = Class.create();
Control.TabStrip.Tab.prototype = {
	initialize: function (control, tabDiv, panelDiv, options) {
		this.id = tabDiv.id;
		this.control = control;
		this.tabDiv = tabDiv;
		this.panel = new Control.TabStrip.Panel(panelDiv, this);
		this.options = options;
		this.active = false;
		this.disabled = false;

		this.listeners = [
			tabDiv.on('mouseover', this.hover.bindAsEventListener(this)),
			tabDiv.on('mouseout', this.restore.bindAsEventListener(this)),
			tabDiv.on('click', function(e) {
					if (!this.active) this.control._switchTab(this);
				}.bindAsEventListener(this)),
			// Block text selection
			tabDiv.on('mousedown', function(e) { return false; }.bindAsEventListener(this)),
			tabDiv.on('selectstart', function(e) { return false; }.bindAsEventListener(this))
		];
	},
	destroy: function() {
		for (var i = 0; i < this.listeners.length; i++)
			this.listeners[i].stop();
	},
	applyTabBehavior: function(tabDiv) {
	},
	hover: function(e) {
		if (!this.active && !this.disabled)
			Element.addClassName(this.tabDiv, this.options.hoverClass);
	},
	restore: function(e) {
		Element.removeClassName(this.tabDiv, this.options.hoverClass);
	},
	activate: function(e) {
		if (!this.disabled) {
			this.restore();
			Element.removeClassName(this.tabDiv, this.options.inactiveClass);
			Element.addClassName(this.tabDiv, this.options.activeClass);
			this.panel.show();
			this.active = true;
			if (this.options.onactivate)
				this.options.onactivate(this);
		}
	},
	deactivate: function(e) {
		this.panel.hide();
		Element.removeClassName(this.tabDiv, this.options.activeClass);
		Element.addClassName(this.tabDiv, this.options.inactiveClass);
		this.active = false;
		if (this.options.ondeactivate)
			this.options.ondeactivate(this);
	},
	enable: function() {
		Element.removeClassName(this.tabDiv, this.options.disabledClass);
		this.disabled = false;
	},
	disable: function() {
		Element.addClassName(this.tabDiv, this.options.disabledClass);
		this.disabled = true;
	}
};

Control.TabStrip.Panel = Class.create();
Control.TabStrip.Panel.prototype = {
	initialize: function (panelDiv, tab) {
		this.panelDiv = panelDiv;
		this.tab = tab;
		this.applyPanelBehavior(panelDiv);
		this.hide();
	},
	applyPanelBehavior: function(panelDiv) {
	},
	show: function() {
		Element.show(this.panelDiv);
	},
	hide: function() {
		Element.hide(this.panelDiv);
	}
};

if (typeof Protoplasm != 'undefined')
	Protoplasm.register('tabstrip', Control.TabStrip);
