create database Market;
use Market;

CREATE TABLE Employee (
    EmployeeID int PRIMARY KEY NOT NULL auto_increment,
    EmployeeLastName VARCHAR(50) NOT NULL,
    EmployeeFirstName VARCHAR(50) NOT NULL,
    EmployeeFullName VARCHAR(255) NOT NULL,
    EmployeeAddress VARCHAR(200) NOT NULL,
    EmployeeCity VARCHAR(50) NOT NULL,
    isEmployeeActive BOOLEAN
);
    
CREATE TABLE Costumer (
    CostumerID int PRIMARY KEY NOT NULL auto_increment,
    CostumerLastName varchar(50) NOT NULL,
    CostumerFirstName varchar(50) NOT NULL,
    CostumerAddress varchar(200) NOT NULL,
    CostumerCity varchar(50) NOT NULL,
    isCostumerActive BOOLEAN
);

CREATE TABLE Car (
    CarID int PRIMARY KEY NOT NULL auto_increment,
    CarModel varchar(50) NOT NULL,
    CarYear varchar(4) NOT NULL,
    CarCity varchar(50) NOT NULL,
    CarTaxes int,
    isCarActive BOOLEAN
);

CREATE TABLE Orders (
    OrdersID int PRIMARY KEY NOT NULL auto_increment,
    OrdersName varchar(95) NOT NULL,
    OrdersCategory int NOT NULL,
    OrdersPrice int NOT NULL
);


ALTER TABLE  Car add constraint fk_car_costumer foreign key (CarID) references Costumer ( CostumerID);
ALTER TABLE  Orders add constraint fk_orders_employee foreign key (OrdersID) references Employee ( EmployeeID);

-- INSERTS --

-- INSERT Employee (view: select * from Employee;)
INSERT INTO `conquer`.`employee`
(`EmployeeLastName`, `EmployeeFirstName`, `EmployeeFullName`, `EmployeeAddress`, `EmployeeCity`, `isEmployeeActive`) VALUES ("Anaximenes", "Raphael", "Raphael Anaximenes", "Rua 1, 208", "Mogi Mirim", 1);

-- INSERT Costumer (view: select * from Costumer;)

INSERT INTO `conquer`.`costumer`
(`CostumerLastName`, `CostumerFirstName`, `CostumerAddress`, `CostumerCity`, `isCostumerActive`) VALUES ("da Silva", "Xuxa", "Xuxa's Planet", "Xuxa Island", 1);

-- INSERT Car (view: select * from Car;)

INSERT INTO `conquer`.`car`
(`CarModel`, `CarYear`, `CarCity`, `CarTaxes`, `isCarActive`)
VALUES
("Volkswagen", "2011", "Mogi Mirim", "0", 1);

-- INSERT Orders (view: select * from Orders;)
INSERT INTO `conquer`.`orders`
(`OrdersName`, `OrdersCategory`, `OrdersPrice`)
VALUES ( "Lavagem Simples", 1, 500);
