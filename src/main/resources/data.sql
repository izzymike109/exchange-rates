
-----------------------------------------------------------------------------------------------------------------------------------------
-- CURRENCY
-----------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS currencies;

CREATE TABLE currencies (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  code VARCHAR(10) NOT NULL,
  name VARCHAR(100) NOT NULL
);


INSERT INTO currencies (code, name) VALUES ('EUR', 'Euro');
INSERT INTO currencies (code, name) VALUES ('GBP', 'British Pound');
INSERT INTO currencies (code, name) VALUES ('USD', 'US Dollar');
INSERT INTO currencies (code, name) VALUES ('CAD', 'Canadian Dollar');
INSERT INTO currencies (code, name) VALUES ('HKD', 'Hong Kong Dollar');
INSERT INTO currencies (code, name) VALUES ('AUD', 'Australian Dollar');
INSERT INTO currencies (code, name) VALUES ('NZD', 'New Zealand Dollar');
INSERT INTO currencies (code, name) VALUES ('CHF', 'Swiss Franc');


-----------------------------------------------------------------------------------------------------------------------------------------
-- RATES
-----------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS rates;

CREATE TABLE rates (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  currency VARCHAR(100) NOT NULL,
  provider VARCHAR(250) NOT NULL,
  value DECIMAL(10, 4) NOT NULL NOT NULL,
  fee DECIMAL(10, 4) NOT NULL NOT NULL,
  date TIMESTAMP DEFAULT NULL
);

INSERT INTO rates (currency, provider, value, fee, date) VALUES ('GBP', 'Bank Of Ireland', 0.91123, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('GBP', 'Bank Of Italy', 1.6246, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('HKD', 'Bank Of Ireland', 8.9676, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('NZD', 'Bank Of Ireland', 1.75486, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('CHF', 'Bank Of Ireland', 7.4429, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('CHF', 'Bank Of Spain', 1.6246, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('CAD', 'Bank Of Ireland', 1.5486, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('AUD', 'Bank Of Spain', 1.6246, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('USD', 'Bank Of Ireland', 7.4429, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('USD', 'Bank Of England', 0.91123, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('EUR', 'Bank Of Scotland', 0.91120, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('EUR', 'Bank Of England', 0.91123, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('EUR', 'Bank Of Spain', 1.6246, 0, CURRENT_TIMESTAMP());
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('EUR', 'Bank Of New Zealand', 0.8923, 0, CURRENT_TIMESTAMP());

INSERT INTO rates (currency, provider, value, fee, date) VALUES ('GBP', 'Bank Of Ireland', 0.9114, 0, CURRENT_TIMESTAMP()-1);
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('HKD', 'Bank Of Ireland', 8.9674, 0, CURRENT_TIMESTAMP()-1);
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('NZD', 'Bank Of Ireland', 1.7544, 0, CURRENT_TIMESTAMP()-1);
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('CHF', 'Bank Of Ireland', 7.4424, 0, CURRENT_TIMESTAMP()-1);
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('CAD', 'Bank Of Ireland', 1.5484, 0, CURRENT_TIMESTAMP()-1);
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('AUD', 'Bank Of Spain', 1.6244, 0, CURRENT_TIMESTAMP()-1);
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('USD', 'Bank Of England', 0.91224, 0, CURRENT_TIMESTAMP()-1);
INSERT INTO rates (currency, provider, value, fee, date) VALUES ('EUR', 'Bank Of Scotland', 0.95124, 0, CURRENT_TIMESTAMP()-1);