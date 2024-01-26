CREATE TABLE plant (
  plantID int NOT NULL,
  plantCity varchar(45) NOT NULL,
  plantZipcode varchar(45) NOT NULL,
  PRIMARY KEY (plantID)
);

CREATE TABLE manufacturing (
  manufacturingID int NOT NULL,
  m_plantID int NOT NULL,
  PRIMARY KEY (manufacturingID),
  KEY m_plantID_idx (m_plantID),
  CONSTRAINT m_plantID FOREIGN KEY (m_plantID) REFERENCES plant (plantID)
);

CREATE TABLE trading (
  tradingID int NOT NULL,
  t_plantID int NOT NULL,
  PRIMARY KEY (tradingID),
  KEY t_plantID_idx (t_plantID),
  CONSTRAINT t_plantID FOREIGN KEY (t_plantID) REFERENCES plant (plantID)
);

CREATE TABLE customer (
  customerID int NOT NULL,
  customerName varchar(45) NOT NULL,
  customerAddress varchar(45) NOT NULL,
  customerContact int NOT NULL,
  PRIMARY KEY (customerID)
);

CREATE TABLE newcustomeid (
  n_customerID int NOT NULL,
  n_customeref int NOT NULL,
  PRIMARY KEY (n_customerID),
  KEY n_customeref_idx (n_customeref),
  CONSTRAINT n_customeref FOREIGN KEY (n_customeref) REFERENCES customer (customerID)
);

CREATE TABLE oldcustomer (
  oo_customeref int NOT NULL,
  o_customerID int NOT NULL,
  PRIMARY KEY (o_customerID),
  KEY oo_customerID_idx (oo_customeref),
  CONSTRAINT oo_customeref FOREIGN KEY (oo_customeref) REFERENCES customer (customerID)
);

CREATE TABLE feedback (
  f_customerID int NOT NULL,
  feedbackType varchar(45) DEFAULT NULL,
  KEY f_customerID_idx (f_customerID),
  CONSTRAINT f_customerID FOREIGN KEY (f_customerID) REFERENCES customer (customerID)
);

CREATE TABLE supplier (
  s_tradingID int NOT NULL,
  supplierName varchar(45) NOT NULL,
  supplierID int NOT NULL,
  PRIMARY KEY (supplierID),
  KEY s_tradingID_idx (s_tradingID),
  CONSTRAINT s_tradingID FOREIGN KEY (s_tradingID) REFERENCES trading (tradingID)
);

CREATE TABLE product (
  p_manufacturingID int NOT NULL,
  productID int NOT NULL,
  productName varchar(45) NOT NULL,
  producttype varchar(45) NOT NULL,
  PRIMARY KEY (productID),
  KEY p_manufacturingID_idx (p_manufacturingID),
  CONSTRAINT p_manufacturingID FOREIGN KEY (p_manufacturingID) REFERENCES manufacturing (manufacturingID)
);

CREATE TABLE delivery (
  d_productID int NOT NULL,
  d_supplierID int NOT NULL,
  d_customerID int NOT NULL,
  KEY d_customerID_idx (d_customerID),
  KEY d_productID_idx (d_productID),
  KEY d_supplierID_idx (d_supplierID),
  CONSTRAINT d_customerID FOREIGN KEY (d_customerID) REFERENCES customer (customerID),
  CONSTRAINT d_productID FOREIGN KEY (d_productID) REFERENCES product (productID),
  CONSTRAINT d_supplierID FOREIGN KEY (d_supplierID) REFERENCES supplier (supplierID)
);

CREATE TABLE referral (
  nr_customerID int NOT NULL,
  or_customerID int NOT NULL,
  discountAmount int NOT NULL,
  KEY nr_customerID_idx (nr_customerID),
  KEY or_customerID_idx (or_customerID),
  CONSTRAINT nr_customerID FOREIGN KEY (nr_customerID) REFERENCES newcustomeid (n_customerID),
  CONSTRAINT or_customerID FOREIGN KEY (or_customerID) REFERENCES oldcustomer (o_customerID)
);

CREATE TABLE orders (
  o_customerID int NOT NULL,
  o_plantID int NOT NULL,
  orderID int NOT NULL,
  orderType varchar(45) DEFAULT NULL,
  PRIMARY KEY (orderID),
  KEY o_customerID_idx (o_customerID),
  KEY o_plantID_idx (o_plantID),
  CONSTRAINT o_customerID FOREIGN KEY (o_customerID) REFERENCES customer (customerID),
  CONSTRAINT o_plantID FOREIGN KEY (o_plantID) REFERENCES plant (plantID)
);
ALTER TABLE customer
MODIFY COLUMN customerName varchar(145);

ALTER TABLE customer
MODIFY COLUMN customerAddress varchar(145);

ALTER TABLE customer
MODIFY COLUMN customerContact BIGINT;