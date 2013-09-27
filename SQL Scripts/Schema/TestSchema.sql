CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.6.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urlID` int(11) NOT NULL,
  `commentText` varchar(512) DEFAULT NULL,
  `createdBy` int(11) NOT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `inappropriateFlag` tinyint(1) DEFAULT NULL,
  `reportedBy` int(11) DEFAULT NULL,
  `upVotes` int(11) DEFAULT NULL,
  `downVotes` int(11) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT fk_CommentsToLinks FOREIGN KEY (urlID)
  REFERENCES Links(id),
  CONSTRAINT fk_CommentsToUsers FOREIGN KEY (createdBy)
  REFERENCES Users(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topicID` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `url` varchar(512) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upVotes` int(11) DEFAULT NULL,
  `downVotes` int(11) DEFAULT NULL,
  `brokenFlag` tinyint(1) DEFAULT NULL,
  `dateReportedBroken` datetime DEFAULT NULL,
  `reportedBrokerBy` int(11) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT NULL,
  `clickThroughCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT fk_Topics FOREIGN KEY (topicID)
  REFERENCES Topics(id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links`
VALUES 
		#--
		#--algorithms and data structures
		#--

			#--(1000,1,'Red black trees',NULL,0),
				(10001, 1000, 'introduction to reb black trees, includes c++ code samples for tree operations', 'http://www.cs.auckland.ac.nz/software/AlgAnim/red_black.html',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
			
			#--(1001, 1, 'B+/- trees', NULL, 0),
				(10011, 1001, 'Introduction to B+ trees', 'http://www.youtube.com/watch?v=CYKRMz8yzVU',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(10012, 1001, 'B+ tree insertion', 'http://www.youtube.com/watch?v=_nY8yR6iqx4',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(10013, 1001, 'B+ tree as an index to a hard disk or database', 'http://www.youtube.com/watch?v=UuncWF0Kuhw',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(10014, 1001, 'B+ tree insertion on a 2-3 tree', 'http://www.youtube.com/watch?v=bhKixY-cZHE',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
			
			#--(1002, 1, 'AVL trees', null, 0),
				(10021, 1002, 'Introduction to AVL trees', 'http://www.youtube.com/watch?v=5C8bLQBjcDI',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
			
			#--(1003, 1, 'Skew trees', null, 0),
				(10031, 1003, 'Merging and insertion of simple binary skew trees', 'http://max.cs.kzoo.edu/~kschultz/CS510/ClassPresentations/skewHeap.html',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
			
			#--(1004, 1, 'Big-O notation', null, 0),
				(10041, 1004, 'Introduction to Big O Notation','http://rob-bell.net/2009/06/a-beginners-guide-to-big-o-notation/',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
			
			#--(1005, 1, 'Sorting algorithms', null, 0),
				(10051, 1005, 'Animations for comparing various sorting techniques','http://www.sorting-algorithms.com/',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(10052, 1005, 'Sample C/C++ code for popular sorting algorithms', 'http://www.cprogramming.com/tutorial/computersciencetheory/sortcomp.html',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(10053, 1005, 'Detailed comparison of an extensive list of sorting algorithms, explanations included', 'http://bigocheatsheet.com/',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
			
			#--(1006, 1, 'Shortest path algorithm (Dijkstra)', 0),
			
			#--(1007, 1, 'Binary tree search operations', 0),
			
			#--(1008, 1, 'Disjoint sets', 0),
			
			#--(1009, 1, 'Union find', 0),
			
			#--(1010, 1, 'Prims algorithm', 0),
			
			#--(1011, 1, 'Kruskals algorithm', 0),
			
			#--(1012, 1, 'Lists', 0),
			
			#--(1013, 1, 'Stacks', 0),
			
			#--(1014, 1, 'Queues', 0),
			
			#--(1015, 1, 'Hashing', 0),
			
			#--(1016, 1, 'Algorithm analysis', 0),
			
			#--(1017, 1, 'Topological ordering', 0),
		
		
			#--introductory programming
			#--(8000,'Introductory C++',NULL,0),
				(80001, 8000, 'Functions','http://thenewboston.org/watch.php?cat=16&number=9',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80002, 8000, 'Functions with parameters','http://thenewboston.org/watch.php?cat=16&number=10',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80003, 8000, 'Functions with multiple parameters', 'http://thenewboston.org/watch.php?cat=16&number=11',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80004, 8000, 'Variables','http://thenewboston.org/watch.php?cat=16&number=4',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80005, 8000, 'For loops', 'http://thenewboston.org/watch.php?cat=16&number=22',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80006, 8000, 'While loops', 'http://thenewboston.org/watch.php?cat=16&number=18',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80007, 8000, 'Arrays', 'http://thenewboston.org/watch.php?cat=16&number=32',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80008, 8000, 'Passing arrays to functions','http://thenewboston.org/watch.php?cat=16&number=35',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				
			#--(8001,'Introductory Java',NULL,0),
			#--(8002,'Introductory Python',NULL,0),
				(80021, 8002, 'Data types and variables', 'https://www.khanacademy.org/science/computer-science/v/introduction-to-programs-data-types-and-variables',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80022, 8002, 'Lists','https://www.khanacademy.org/science/computer-science/v/python-lists',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80023, 8002, 'For Loops','https://www.khanacademy.org/science/computer-science/v/for-loops-in-python',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80024, 8002, 'While Loops','https://www.khanacademy.org/science/computer-science/v/while-loops-in-python',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80025, 8002, 'Strings','https://www.khanacademy.org/science/computer-science/v/fun-with-strings',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80026, 8002, 'Sample factorial program','https://www.khanacademy.org/science/computer-science/v/writing-a-simple-factorial-program---python-2',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80027, 8002, 'Factorial function','https://www.khanacademy.org/science/computer-science/v/defining-a-factorial-function',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80028, 8002, 'Functions','https://www.khanacademy.org/science/computer-science/v/diagramming-what-happens-with-a-function-call',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(80029, 8002, 'Recursion','https://www.khanacademy.org/science/computer-science/v/recursive-factorial-function',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(800210, 8002, 'Sample fibonacci function','https://www.khanacademy.org/science/computer-science/v/exercise---write-a-fibonacci-function',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
				(800211, 8002, 'Insertion sort','https://www.khanacademy.org/science/computer-science/v/insertion-sort-in-python',NULL,'2013-09-19 04:28:35',NULL,NULL,NULL,NULL,NULL,NULL,0)
				
			#--(8003,'Introductory C',NULL,0),
		
		;
		
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `creditToID` int(11) DEFAULT NULL,
  `clickThroughCount` int(11) DEFAULT NULL,
  `imageFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT fk_UsersToSubjects FOREIGN KEY (creditToID)
  REFERENCES Users(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` 
VALUES 	(1,'algorithms and data structures',NULL,0,'images2\\algDataStructures.png'),
		(2,'automata theory',NULL,0,'images2\\automataTheory.png'),
		(3,'calculus 1 (differential)',NULL,0,'images2\\differentialCalculus.png'),
		(4,'calculus 2 (integral)',NULL,0,'images2\\integralCalculus.png'),
		(5,'computer architecture',NULL,0,'images2\\computerArchitecture.png'),
		(6,'digital logic',NULL,0,'images2\\digitalLogic.png'),
		(7,'discrete mathematics',NULL,0,'images2\\discreteMath2.png'),
		(8,'introductory programming',NULL,0,'images2\\helloWorld!.png'),
		(9,'linear algebra',NULL,0,'images2\\linearAlgebra2.png'),
		(10,'machine learning',NULL,0,'images2\\machineLearning.png'),
		(11,'object oriented programming',NULL,0,'images2\\OOP2.png'),
		(12,'operating system concepts',NULL,0,'images2\\osConcepts.png'),
		(13,'organization of programming languages',NULL,0,'images2\\organizationOfProgrammingLanguages.png'),
		(14,'physics mechanics and heat',NULL,0,'images2\\physicsMechanicsAndHeat2.png'),
		(15,'physics electromagnetism and waves',NULL,0,'images2\\physicsElectromagnetismAndWaves.png'),
		(16,'probability and statistics',NULL,0,'images2\\probAndStatistics.png'),
		(17,'software engineering',NULL,0,'images2\\softwareEngineering.png'),
		(18,'database systems', NULL,0,'images2\\databaseSystems.png');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `topic` varchar(256) DEFAULT NULL,
  `creditToID` int(11) DEFAULT NULL,
  `clickThroughCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT fk_UsersToTopics FOREIGN KEY (creditToID)
  REFERENCES Users(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` 
VALUES	#--algorithms and data structures--
		(1000,'Red black trees',NULL,0),
		(1001, 'B+/- trees', NULL, 0),
		(1002, 'AVL trees', null, 0),
		(1003, 'Skew trees', null, 0),
		(1004, 'Big-O notation', null, 0),
		(1005, 'Sorting algorithms', null, 0),
		(1006, 'Shortest Path - Dijkstra\'s algorithm', null, 0),
		(1007, 'Binary tree search operations', null,0),
		(1008, 'Disjoint sets', null,0),
		(1009, 'Union find', null,0),
		(1010, 'Prim\'s algorithm', null,0),
		(1011, 'Kruskal\'s algorithm', null,0),
		(1012, 'Lists', null,0),
		(1013, 'Stacks', null,0),
		(1014, 'Queues', null,0),
		(1015, 'Hashing', null,0),
		(1016, 'Algorithm analysis', null,0),
		(1017, 'Topological ordering', null,0),
		
		#--automata theory--
		(2000,'deterministic finite state machines',NULL,0),
		(2001,'non-deterministic finite state machines',NULL,0),
		(2002,'Regular expressions',NULL,0),
		(2003,'Binary relations',NULL,0),
		(2004,'Digraphs',NULL,0),
		(2005,'Inductive proofs',NULL,0),
		(2006,'Regular sets',NULL,0),
		(2007,'Kleene\'s theorem',NULL,0),
		(2008,'Pumping lemma',NULL,0),
		(2009,'Closure properties',NULL,0),
		(2010,'Decision Algorithms',NULL,0),
		(2011,'Context-free grammars',NULL,0),
		(2012,'Regular grammars',NULL,0),
		(2013,'Simplified forms',NULL,0),
		(2014,'Normal forms',NULL,0),
		(2015,'Chomsky normal form',NULL,0),
		(2016,'Pushdown automaton',NULL,0),
		(2017,'CYK algorithm',NULL,0),
		(2018,'Turing machines',NULL,0),
		(2019,'Undecidability',NULL,0),
		
		#--differential calculus--
		(3000,'limits',NULL,0),
		(3001,'squeeze theorem',NULL,0),
		(3002,'Epsilon delta definiation of limits',NULL,0),
		(3003,'Slope of a line secant to a curve',NULL,0),
		(3004,'Derivative as slope of a tangent line',NULL,0),
		(3005,'Derivatives of polynomials and the power rule',NULL,0),
		(3006,'Derivatives of trigonometric functions',NULL,0),
		(3007,'Derivatives of logarithms', NULL,0),
		(3008,'Chain rule',NULL,0),
		(3009,'Product and quotient rules',NULL,0),
		(3010,'Implicit differentiation',NULL,0),
		(3011,'Minima and maxima',NULL,0),
		(3012,'Inflection and critical points',NULL,0),
		(3013,'Optimization',NULL,0),
		(3014,'Related rates of change',NULL,0),
		(3015,'Mean value theorem',NULL,0),
		(3016,'L\'Hopital\'s Rule',NULL,0),
		
		#--integral calculus--
		(4000,'Indefinite integrals of polynomials',NULL,0),
		(4001,'Riemann approximation using rectangles',NULL,0),
		(4002,'Antiderivitives of trigonometric functions',NULL,0),
		(4003,'Antiderivitives of logarithms',NULL,0),
		(4004,'Integration by parts',NULL,0),
		(4005,'U-substitution',NULL,0),
		(4006,'Definite integrals',NULL,0),
		(4007,'Trigonometric substitution',NULL,0),
		(4008,'Fundamental theorem of calculus',NULL,0),
		(4009,'Improper integrals',NULL,0),
		(4010,'Solid of a revolution - disc and shell methods',NULL,0),
		(4011,'Solid of a revolution volume',NULL,0),
		(4012,'Sequences and series',NULL,0),
		(4013,'Maclaurin and Taylor series',NULL,0),
		(4014,'Euler\'s forumla and identity',NULL,0),
		(4015,'Double integrals',NULL,0),
		(4016,'Triple integrals',NULL,0),
		(4017,'Line integrals',NULL,0),
		(4018,'Green\'s theorem',NULL,0),
		(4019,'Surface integrals',NULL,0),
		(4020,'Divergence theorem',NULL,0),
		
		#--computer architechture--
		(5000,'X86 assembly language',NULL,0),
		(5001,'MIPS assembly language',NULL,0),
		(5002,'Representing and converting data in memory',NULL,0),
		(5003,'Virtual memory',NULL,0),
		(5004,'Cache',NULL,0),
		(5005,'Datapath and control',NULL,0),
		(5006,'Pipelining',NULL,0),
		(5007,'Compilers, assemblers and linkers',NULL,0),
		(5008,'Performance measurement',NULL,0),
		(5009,'Number representations and converstions in Bin/Oct/Dec/Hex',NULL, 0),
		(5010,'Floating point arithmetic',NULL,0),
		(5011,'Addressing modes',NULL,0),
		(5012,'Instruction paralellism',NULL,0),
		(5013,'Processor Hazards',NULL,0),
		
		
		#--digital logic--
		(8,'Digital Logic place holder',NULL,0),
		
		
		#--discrete mathematics--
		(7000,'Propositional logic',NULL,0),
		(7001,'Prpositional equivalences',NULL,0),
		(7002,'Predicates and Quantifiers',NULL,0),
		(7003,'Nested Quantifiers',NULL,0),
		(7004,'Proofs',NULL,0),
		(7005,'Sets and set operations',NULL,0),
		(7006,'Discrete math functions',NULL,0),
		(7007,'Cardinality of sets',NULL,0),
		(7008,'Growth of functions',NULL,0),
		(7009,'Divisibility and modular arithmetic',NULL,0),
		(7010,'Integer representation and algorithms',NULL,0),
		(7011,'Primes and greatest common divisors',NULL,0),
		(7012,'Solving congruences',NULL,0),
		(7013,'Applications of congruences',NULL,0),
		(7014,'Cryptography',NULL,0),
		(7015,'Induction',NULL,0),
		(7016,'Counting',NULL,0),
		(7017,'Permutations and combinations',NULL,0),
		(7018,'Generalized permutations and combinations',NULL,0),
		(7019,'Recurrence relations',NULL,0),
		(7020,'Principles of inclusion and exclusion',NULL,0),
		(7021,'Binary relations and applications',NULL,0),
		(7022,'Equivalance relations',NULL,0),
		(7023,'Partial orderings',NULL,0),
		(7024,'Planar graphs',NULL,0),
		(7025,'Euler paths and circuits',NULL,0),
		(7026,'Hamilton paths and circuits',NULL,0),
		(7027,'Tree structures',NULL,0),
		(7028,'Dual graphs',NULL,0),
		
		#--introductory programming
		(8000,'Introductory C++',NULL,0),
		(8001,'Introductory Java',NULL,0),
		(8002,'Introductory Python',NULL,0),
		(8003,'Introductory C',NULL,0),
		
		#--linear algebra
		(9000,'Vector scaling and arithmetic',NULL,0),
		(9001,'Linear combinations and spans',NULL,0),
		(9002,'Linear independence',NULL,0),
		(9003,'Linear dependence',NULL,0),
		(9004,'Linear subspaces',NULL,0),
		(9005,'Dot product',NULL,0),
		(9006,'Cross Product',NULL,0),
		(9007,'Point distance to plane',NULL,0),
		(9008,'Distance between planes',NULL,0),
		(9009,'Reduced row echelon form of matrices',NULL,0),
		(9010,'Null space and column space',NULL,0),
		(9011,'Vector and Linear transformations',NULL,0),
		(9012,'Image of a subset under a transformation',NULL,0),
		(9013,'Preimage of a set',NULL,0),
		(9014,'Image of a transformation',NULL,0),
		(9015,'Matrix addition and scalar multiplication',NULL,0),
		(9016,'Linear transformations',NULL,0),
		(9017,'Projections',NULL,0),
		(9018,'Distributive property of matrix products',NULL,0),
		(9019,'Inverse functions',NULL,0),
		(9020,'Determinants',NULL,0),
		(9021,'Transpose of a matrix',NULL,0),
		(9022,'Matrix rank',NULL,0),
		(9023,'Orthogonal complements',NULL,0),
		(9024,'Orthogonal projections',NULL,0),
		(9025,'Least squares approximation',NULL,0),
		(9026,'Change of basis',NULL,0),
		(9027,'Orthonormal basis',NULL,0),
		(9028,'Gram-Schmidt Process',NULL,0),
		(9029,'Eigenvalues and eigenvectors',NULL,0),
		
		#--machine learning--
		(12,'machine learning place holder',NULL,0),
		
		#--object oriented programming
		(13,'objects in java',NULL,0),
		(14,'objects in c++',NULL,0),
		
		#--operating systems concepts--
		(15,'os concepts placeholder',NULL,0),
		
		#--concepts of programming languages--
		(16,'lhs parse trees',NULL,0),
		
		#--physics - mechanics and heat--
		(17,'newtons equations of motion',NULL,0),
		
		#--physics - electromagnetism and waves--
		(18,'circuits: capacitance, voltage, current, resistance, induction', NULL, 0),
		
		#--probability and statistics--
		(19,'bayes theorem',NULL,0),
		
		#--software engineering--
		(20,'requirements',NULL,0),
		(21,'Development methodologies',NULL,0)


;
		
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubjectsToTopics`
--

DROP TABLE IF EXISTS `SubjectsToTopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubjectsToTopics` (
  `subject` int(11) NOT NULL,
  `topic` int(11) NOT NULL,
  PRIMARY KEY (`subject`, `topic`),
  CONSTRAINT `Constr_SubjectsToTopics_subject_fk`
        FOREIGN KEY `subject_fk` (`subject`) REFERENCES `Subjects` (`id`)
        ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Constr_SubjectsToTopics_topic_fk`
        FOREIGN KEY `topic_fk` (`topic`) REFERENCES `Topics` (`id`)
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `SubjectsToTopics` WRITE;
/*!40000 ALTER TABLE `SubjectsToTopics` DISABLE KEYS */;
INSERT INTO `SubjectsToTopics`
VALUES	
		(1, 1000),
		(1, 1001),
		(1, 1002),
		(1, 1003),
		(1, 1004),
		(1, 1005),
		(1, 1006),
		(1, 1007),
		(1, 1008),
		(1, 1009),
		(1, 1010),
		(1, 1011),
		(1, 1012),
		(1, 1013),
		(1, 1014),
		(1, 1015),
		(1, 1016),
		(1, 1017),
		
		#--automata theory--
		(2, 2000),
		(2, 2001),
		(2, 2002),
		(2, 2003),
		(2, 2004),
		(2, 2005),
		(2, 2006),
		(2, 2007),
		(2, 2008),
		(2, 2009),
		(2, 2010),
		(2, 2011),
		(2, 2012),
		(2, 2013),
		(2, 2014),
		(2, 2015),
		(2, 2016),
		(2, 2017),
		(2, 2018),
		(2, 2019),
		
		#--differential calculus--
		(3,3000),
		(3,3001),
		(3,3002),
		(3,3003),
		(3,3004),
		(3,3005),
		(3,3006),
		(3,3007),
		(3,3008),
		(3,3009),
		(3,3010),
		(3,3011),
		(3,3012),
		(3,3013),
		(3,3014),
		(3,3015),
		(3,3016),
		
		#--integral calculus--
		(4,4000),
		(4,4001),
		(4,4002),
		(4,4003),
		(4,4004),
		(4,4005),
		(4,4006),
		(4,4007),
		(4,4008),
		(4,4009),
		(4,4010),
		(4,4011),
		(4,4012),
		(4,4013),
		(4,4014),
		(4,4015),
		(4,4016),
		(4,4017),
		(4,4018),
		(4,4019),
		(4,4020),
		
		#--computer architechture--
		(5, 5000),
		(5, 5001),
		(5, 5002),
		(5, 5003),
		(5, 5004),
		(5, 5005),
		(5, 5006),
		(5, 5007),
		(5, 5008),
		(5, 5009),
		(5, 5010),
		(5, 5011),
		(5, 5012),
		(5, 5013),
		
		
		#--digital logic--
		(8, 8),
		
		
		#--discrete mathematics--
		(7, 7000),
		(7, 7001),
		(7, 7002),
		(7, 7003),
		(7, 7004),
		(7, 7005),
		(7, 7006),
		(7, 7007),
		(7, 7008),
		(7, 7009),
		(7, 7010),
		(7, 7011),
		(7, 7012),
		(7, 7013),
		(7, 7014),
		(7, 7015),
		(7, 7016),
		(7, 7017),
		(7, 7018),
		(7, 7019),
		(7, 7020),
		(7, 7021),
		(7, 7022),
		(7, 7023),
		(7, 7024),
		(7, 7025),
		(7, 7026),
		(7, 7027),
		(7, 7028),
		
		#--introductory programming
		(8, 8000),
		(8, 8001),
		(8, 8002),
		(8, 8003),
		
		#--linear algebra
		(9, 9000),
		(9, 9001),
		(9, 9002),
		(9, 9003),
		(9, 9004),
		(9, 9005),
		(9, 9006),
		(9, 9007),
		(9, 9008),
		(9, 9009),
		(9, 9010),
		(9, 9011),
		(9, 9012),
		(9, 9013),
		(9, 9014),
		(9, 9015),
		(9, 9016),
		(9, 9017),
		(9, 9018),
		(9, 9019),
		(9, 9020),
		(9, 9021),
		(9, 9022),
		(9, 9023),
		(9, 9024),
		(9, 9025),
		(9, 9026),
		(9, 9027),
		(9, 9028),
		(9, 9029);
/*!40000 ALTER TABLE `SubjectsToTopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `passwordResetFlag` tinyint(1) DEFAULT NULL,
  `passwordHash` char(64) DEFAULT NULL,
  `passwordSalt` char(64) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE (userName),
  UNIQUE (email)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users`
VALUES	(1, 'redBlackCat', 'chauptli@hotmail.com', NULL, NULL, 'cfde24536654abc9cd3a59a43ba9e2c9584c95bc6465a64240c13eaef003c3a1', 'znmjRB1)rEXj0vn0ofPrjT552#!3QcZYqv4^IAdG', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
