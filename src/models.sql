CREATE TABLE models(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    modelname VARCHAR(100) NOT NULL,
    styles VARCHAR(1000),
    brand_id INT,
    FOREIGN KEY(brand_id) REFERENCES brands(id)
);

INSERT INTO models(modelname,styles,brand_id)
VALUES ('Tiguan','spacious and versatile interior with impressive cargo capacity',1),('Taigun','stylish design, robust build, and advanced technology features',1),('Virtus','simple and consistent interface for working with attributes',1),
('Q8 E-Tron',' cutting-edge technology, impressive performance, and a spacious interior',2),('E-Tron GT','0-60 mph time of 3.1 seconds with cutting-edge technology and a stylish design',2),('Q3 Sportback','stylish and compact luxury SUV with a coupe-like design',2),
('Aventador','powerful V12 engine and striking, aggressive design',3),('Huracan','stunning design, powerful V10 engine, and lightning-fast acceleration',3),('Urus','4.0-liter twin-turbo V8 engine, delivering exceptional speed and agility',3),
('Continental GT','powerful performance, exquisite craftsmanship, and timeless design',4),('Flying Spur','exceptional craftsmanship, powerful performance, and opulent interior',4),('Bentayga','opulent interior, powerful performance, and advanced technology',4),
('Veyron','incredible speed, boasting a top speed of over 250 mph',5),('Chiron','8.0-liter quad-turbocharged W16 engine producing over 1,500 horsepower',5),('Divo','powerful and exclusive hypercar experience with stunning design and exceptional performance',5),
('Kodiaq','comfort, practicality, and style for families and adventure seekers',6),('Slavia','affordable pricing and efficient fuel economy',6),('Kushaq','spacious interior, strong build quality, and advanced technology',6),
('Cruze','fuel-efficient performance',7),('Camaro','high-performance, muscular design, and powerful V8 engines',7),('Spark','compact size and affordability, making it ideal for urban driving and budget-conscious consumers',7),
('Firebird',' powerful V8 engine and iconic Trans Am styling',8),('Grand Prix','aerodynamic efficiency, designed to compete in top-tier motorsport events',8),('Vibe','fuel-efficient engine and a spacious interior for comfortable commuting',8),
('Enclave','spacious and luxurious interior',9),('LaCrosse','luxurious and comfortable ride',9),('Regal','combination of luxury, style, and performance',9),
('CTS','protect catalytic converters from theft',10),('XT5','luxury and comfort in a midsize SUV package',10),('XTS','luxurious and spacious design with advanced technology and comfort amenities',10),
('Terrain','off-road performance and can navigate challenging landscapes with ease',11),('Yukon','spacious interior and powerful performance',11),('Sierra','advanced off-road capabilities and rugged design',11),
('Ion','zero emissions and is powered by electricity',12),('Vue','innovative hybrid powertrain for exceptional fuel efficiency',12),('Sky','convertible design with a retractable hardtop roof',12);