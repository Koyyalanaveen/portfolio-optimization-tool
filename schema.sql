-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS portfolio_db;
USE portfolio_db;

-- Step 2: Stocks reference table
CREATE TABLE IF NOT EXISTS stocks (
    ticker      VARCHAR(10)     NOT NULL,
    company     VARCHAR(100)    NOT NULL,
    sector      VARCHAR(50)     NOT NULL,
    beta        DECIMAL(6,4),
    PRIMARY KEY (ticker)
);

-- Step 3: Price history table
CREATE TABLE IF NOT EXISTS price_history (
    ticker          VARCHAR(10)     NOT NULL,
    price_date      DATE            NOT NULL,
    adj_close       DECIMAL(12,4)   NOT NULL,
    PRIMARY KEY (ticker, price_date),
    FOREIGN KEY (ticker) REFERENCES stocks(ticker)
);

-- Step 4: Portfolios table
CREATE TABLE IF NOT EXISTS portfolios (
    portfolio_id    INT             AUTO_INCREMENT PRIMARY KEY,
    portfolio_name  VARCHAR(50)     NOT NULL,
    created_date    DATE,
    description     VARCHAR(200)
);

-- Step 5: Portfolio weights table
CREATE TABLE IF NOT EXISTS portfolio_weights (
    portfolio_id    INT             NOT NULL,
    ticker          VARCHAR(10)     NOT NULL,
    weight          DECIMAL(8,6)    NOT NULL,
    PRIMARY KEY (portfolio_id, ticker),
    FOREIGN KEY (portfolio_id) REFERENCES portfolios(portfolio_id),
    FOREIGN KEY (ticker) REFERENCES stocks(ticker)
);