CREATE TABLE suppliers(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    suppliername VARCHAR(100) NOT NULL,
    model_id INT,
    FOREIGN KEY(model_id) REFERENCES models(id)
);

INSERT INTO suppliers(suppliername,model_id)
VALUES ('Auto Pro Garage',1),('Gearhead Garage',1),('Speedy Fix Auto',1),('Precision Auto Care',2),('Revved Up Repairs',2),('Mechanic Masters',2),('The Wrench Wizard',3),('Grease Monkey Garage',3),('Driven Auto Solutions',3),
('Torque & Tune Garage',4),('Motor Medics',4),('Apex Auto Service',4),('Spark Plug Garage',5),('The Car Clinic',5),('Pit Stop Performance',5),('Smooth Ride Garage',6),('Turbo Tech Auto',6),('Road Ready Repairs',6),
('Fast Lane Autos',7),('Brake & Break Garage',7),('Wheelhouse Workshop',7),('Top Gear Garage',8),('ShiftGears Garage',8),('The Garage Gurus',8),('Carburetor King',9),('Bolt & Socket Auto',9),('Oil Change Oasis',9),
('Radiator Revive',10),('Speed Bumps Garage',10),('The Auto Alchemists',10),('Engine Enclave',11),('The Fix-It Factory',11),('Roadster Revival',11),('DriveTime Garage',12),('Cogworks Auto',12),('Revamp & Revive Garage',12),
('Spark & Span Auto',13),('Garage Gears',13),('Ignition Innovators',13),('Transmission Tribe',14),('Car Craftsmen',14),('Wheel Wizards',14),('Vehicle Virtuosos',15),('Gasoline Gurus',15),('Auto Oasis',15),
('QuikFix Garage',16),('Grease Guardians',17),('Highway Haven Garage',18),('Fast Track Auto',19),('Torque Titans',20),('Muffler Masters',21),('The Garage Squad',22),('Speedy Shift Garage',23),('Car Coven',24),
('DriveDoctor',25),('Rev It Up Repair',26),('The Garage Gladiators',27),('Tune-Up Temple',28),('Cruise Control Center',29),('Chassis Champ Garage',30),('Auto Aces',31),('Repair Revolution',32),('Motor Magic Garage',33),
('Carb Clinic',34),('The Fix Factory',35),('Wheelhouse Warriors',36);