-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
-- SET time_zone = "+00:00";

CREATE TABLE Products (
  ProductID int NOT NULL,
  ProductName varchar(100) DEFAULT NULL,
  Description text,
  Price decimal(10,2) DEFAULT NULL,
  StockQuantity int DEFAULT NULL,
  PRIMARY KEY (ProductID)
);

INSERT INTO Products (ProductID, ProductName, Description, Price, StockQuantity) VALUES
(1, 'Smartphone', 'A high-end smartphone with advanced features.', 599.99, 100),
(2, 'Laptop', 'Powerful laptop with a large display and fast processor.', 899.99, 50),
(3, 'Headphones', 'Wireless headphones with noise-cancellation technology.', 199.99, 75),
(4, 'Tablet', 'Compact tablet with a high-resolution screen.', 349.99, 30),
(5, 'Desk Lamp', 'Adjustable desk lamp with LED lighting.', 39.99, 55),
(6, 'Backpack', 'Durable backpack with multiple compartments.', 69.99, 65),
(7, 'Coffee Maker', 'Programmable coffee maker with built-in grinder.', 129.99, 30),
(8, 'Toaster', 'Stainless steel toaster with wide slots for bagels.', 49.99, 40),
(9, 'Blender', 'High-powered blender for smoothies and shakes.', 89.99, 25),
(10, 'Microwave', 'Compact microwave oven with multiple power levels.', 99.99, 20),
(11, 'Vacuum Cleaner', 'Bagless vacuum cleaner with HEPA filtration.', 199.99, 15),
(12, 'Hair Dryer', 'Ionic hair dryer with multiple heat settings.', 79.99, 35),
(13, 'Electric Toothbrush', 'Rechargeable electric toothbrush with multiple brush heads.', 59.99, 45),
(14, 'Shaving Kit', 'Gentleman\s shaving kit with razor and shaving cream.', 49.99, 50),
(15, 'Yoga Mat', 'Non-slip yoga mat for comfortable workouts.', 29.99, 60),
(16, 'Dumbbell Set', 'Adjustable dumbbell set with multiple weight plates.', 149.99, 20),
(17, 'Resistance Bands', 'Set of resistance bands for strength training.', 19.99, 75),
(18, 'Jump Rope', 'Adjustable jump rope for cardio workouts.', 9.99, 90),
(19, 'Tennis Racket', 'Professional tennis racket for competitive play.', 149.99, 10),
(20, 'Golf Clubs', 'Complete set of golf clubs with bag.', 499.99, 5),
(21, 'Camping Tent', 'Lightweight camping tent for outdoor adventures.', 199.99, 15),
(22, 'Sleeping Bag', 'Insulated sleeping bag for camping trips.', 79.99, 25),
(23, 'Fishing Rod', 'Fishing rod with reel and tackle box.', 79.99, 30),
(24, 'Guitar', 'Acoustic guitar with spruce top and mahogany back.', 299.99, 8),
(25, 'Keyboard Stand', 'Adjustable keyboard stand for musicians.', 49.99, 20),
(26, 'Digital Piano', '88-key digital piano with weighted keys.', 699.99, 10),
(27, 'Drum Set', 'Complete drum set with cymbals and drum throne.', 999.99, 5),
(28, 'Violin', 'Full-size violin with bow and case.', 199.99, 15),
(29, 'Saxophone', 'Alto saxophone with gold lacquer finish.', 799.99, 3),
(30, 'Flute', 'Silver-plated flute with French-style keys.', 499.99, 5),
(31, 'Trumpet', 'Bb trumpet with brass construction.', 299.99, 7),
(32, 'Clarinet', 'Bb clarinet with grenadilla wood body.', 399.99, 6),
(33, 'Cello', 'Full-size cello with bow and soft case.', 899.99, 4),
(34, 'Triangle', 'Small percussion instrument for orchestral music.', 9.99, 30),
(35, 'Harmonica', '10-hole diatonic harmonica in the key of C.', 19.99, 40),
(36, 'Accordion', '120-bass piano accordion with shoulder straps.', 999.99, 2),
(37, 'Banjo', '5-string banjo with resonator and geared tuners.', 299.99, 5),
(38, 'Mandolin', 'A-style mandolin with spruce top and maple back.', 199.99, 8),
(39, 'Ukulele', 'Soprano ukulele with nylon strings.', 49.99, 15),
(40, 'Didgeridoo', 'Traditional Australian didgeridoo made of eucalyptus wood.', 79.99, 3),
(41, 'Kalimba', 'Thumb piano with solid mahogany construction.', 29.99, 25),
(42, 'Xylophone', '25-note chromatic xylophone with mallets.', 99.99, 10),
(43, 'Bongos', 'Traditional Cuban bongos with natural skin heads.', 59.99, 12),
(44, 'Congas', 'Pair of conga drums with height-adjustable stands.', 299.99, 6),
(45, 'Djembe', 'African djembe drum with goat skin head.', 149.99, 8),
(46, 'Tambourine', 'Wooden tambourine with jingles.', 19.99, 20),
(47, 'Maracas', 'Pair of colorful wooden maracas.', 14.99, 30),
(48, 'Cowbell', 'Steel cowbell with integrated clapper.', 9.99, 40),
(49, 'Rainstick', 'Traditional South American rainstick instrument.', 39.99, 15),
(50, 'Pan Flute', 'Handcrafted pan flute made of bamboo.', 49.99, 10),
(51, 'Theremin', 'Electronic musical instrument controlled without physical contact.', 299.99, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Products`
--
-- ALTER TABLE Products
--   ADD PRIMARY KEY (ProductID);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Products`
-- --
-- ALTER TABLE Products
--   MODIFY 'ProductID' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
