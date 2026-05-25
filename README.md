# 📊 Portfolio Optimization Tool

**Data Analyst / Financial Analytics Portfolio Project | Excel Modeling | MySQL | Dashboard Visualization | Risk-Return Analysis**

An educational data analytics project analyzing portfolio optimization using Modern Portfolio Theory. This project demonstrates how data analytics techniques—including correlation analysis, mathematical optimization, and scenario modeling—can support portfolio decision-making.

---

## 🎯 Business Problem

Investors need to understand:
- How to construct a portfolio that balances risk and return
- Which asset allocation maximizes risk-adjusted returns
- How diversification reduces portfolio volatility
- What range of outcomes is possible under different market conditions

This project applies quantitative analysis and visualization to explore these questions using historical stock price data.

---

## 📂 Dataset Overview

- **Assets Analyzed:** 18 stocks across 8 sectors
- **Sectors:** Technology, Energy, Financials, Healthcare, Consumer Staples, Utilities, Real Estate, Industrials
- **Time Period:** 60 months of historical data (March 2021 – February 2026)
- **Data Points:** Adjusted closing prices for return and volatility calculations
- **Database Records:** 1,080 price history records
- **Data Source:** Public historical adjusted closing price data used for educational analysis

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| MySQL | Stock price database and historical data storage |
| Excel | Correlation matrix, covariance calculation, Solver optimization, Monte Carlo simulation |
| Dashboard Screenshots | Portfolio metrics, efficient frontier, and risk analysis visualization |

---

## 📊 Data Analysis & Transformation Process

**Steps performed:**
1. **Data Collection** — Downloaded 60 months of adjusted closing prices for 18 stocks
2. **Database Design** — Created MySQL schema for stocks, price history, portfolios, and weights
3. **Return Calculations** — Computed monthly and annualized returns using compound growth formulas
4. **Volatility Analysis** — Calculated annualized volatility using square root of time rule (Risk-free rate: 4.25%)
5. **Correlation & Covariance** — Built 18×18 correlation and covariance matrices to understand asset relationships
6. **Portfolio Optimization** — Used Excel Solver (GRG Nonlinear) to maximize Sharpe Ratio
7. **Scenario Analysis** — Developed Monte Carlo simulation for 1,000 simulated 60-month periods

---

## 🔬 Portfolio Analysis Methodology

### Phase 1 — Data Collection & Storage
- Downloaded 60 months of adjusted closing prices (Mar 2021 – Feb 2026)
- 18 stocks across 8 sectors
- Stored in MySQL database with price_history table (1,080 records)

### Phase 2 — Risk & Return Analysis
- Calculated monthly returns: (Current Price - Previous Price) / Previous Price
- Annualized volatility: √12 × monthly volatility
- Risk-adjusted return metric: Sharpe Ratio = (Return - Risk-free rate) / Volatility

### Phase 3 — Correlation & Covariance Matrices
- Built 18×18 correlation matrix using CORREL function
- Built 18×18 covariance matrix: Cov(i,j) = ρ(i,j) × σᵢ × σⱼ
- Identified key diversification opportunities from negative correlations

### Phase 4 — Portfolio Optimization
- Objective: Maximize Sharpe Ratio
- Constraints: Weights sum to 100%, no short selling, max 30% per stock
- Generated efficient frontier with 30+ portfolio combinations
- Identified optimal allocation across the risk-return spectrum

### Phase 5 — Scenario Analysis
- Monte Carlo analysis with 1,000 simulated periods
- Starting capital: $10,000
- Simulated 60-month outcomes to understand possible portfolio performance ranges
- Analyzed distribution of results under historical return assumptions

---

## 📈 Key Financial KPIs

| Metric | Definition |
|--------|-----------|
| **Annual Return** | Compound annual growth rate of portfolio value |
| **Annual Volatility** | Standard deviation of annual returns |
| **Sharpe Ratio** | Risk-adjusted return: (Return - Risk-free rate) / Volatility |
| **Covariance** | Measure of how two assets move together |
| **Correlation** | Normalized measure of asset relationship (-1 to +1) |
| **Diversification Benefit** | Reduction in portfolio volatility vs. average individual asset volatility |
| **Efficient Frontier** | Set of optimal portfolios maximizing return for each risk level |

---

## 🔍 Key Insights

1. **Diversification Reduces Risk** — Optimal portfolio volatility lower than average individual stock volatility, demonstrating the benefit of diversification

2. **Asset Allocation Matters** — Different weightings significantly impact both return and risk profiles; optimization identified specific allocation for risk-adjusted returns

3. **Correlation Drives Diversification** — Negative correlations between certain asset pairs provide stronger diversification benefits than random allocation

4. **Sector Representation** — The optimal allocation includes representation across multiple sectors, reducing concentration risk

5. **Scenario Analysis Helps Risk Understanding** — Long-term simulations help compare possible portfolio outcomes under historical return assumptions

---

## 💡 Investment & Business Insights

1. **Optimal Asset Allocation** — Data-driven approach to portfolio construction can improve risk-adjusted returns
2. **Diversification Value** — Multi-sector allocation reduces volatility relative to concentrated portfolios
3. **Risk-Return Tradeoff** — Higher return targets require accepting higher volatility; efficient frontier shows this relationship
4. **Long-term Perspective** — Historical data and scenario analysis suggest favorable outcomes for long-term holding periods
5. **Data-Driven Decision Support** — Quantitative analysis provides framework for comparing portfolio options

---

## 🎓 Skills Demonstrated

- **Financial Analysis:** Return and volatility calculations, Sharpe Ratio, risk-adjusted performance metrics
- **Data Modeling:** Correlation and covariance matrix construction, portfolio mathematics
- **Excel Expertise:** Solver optimization, advanced formulas, scenario modeling
- **Database Management:** MySQL schema design, historical data storage and retrieval
- **Optimization Techniques:** Excel Solver (GRG Nonlinear), Sharpe Ratio maximization
- **Scenario Analysis:** Reviewed simulated portfolio outcomes to understand potential risk-return ranges
- **Data Visualization:** Dashboard presentation of portfolio metrics and efficient frontier
- **Quantitative Methods:** Modern Portfolio Theory, efficient frontier analysis, diversification concepts

---

## 📁 Repository Structure

```
portfolio-optimization-tool/
│
├── Portfolio_Optimization_Project.xlsx    # Excel model with optimization and analysis
├── schema.sql                             # MySQL database schema for price history
├── stock data/                            # Historical stock price data directory
│
├── Portfolio Overview.png                 # Dashboard screenshot (metrics & allocation)
├── Efficient Frontier.png                 # Dashboard screenshot (risk-return curve)
├── Risk Analysis.png                      # Dashboard screenshot (scenario analysis)
│
└── README.md                              # Project documentation
```

---

## 👀 How Recruiters Can Review This Project

1. **Understand the Business Context (5 minutes)** — Read the Business Problem and Insights sections to understand the portfolio optimization approach

2. **Review Dashboard Visualizations (10 minutes)** — View the three PNG screenshots:
   - Portfolio Overview: Allocation and performance metrics
   - Efficient Frontier: Risk-return comparison and optimization curve
   - Risk Analysis: Scenario simulation results and outcomes

3. **Examine Excel Model (15 minutes)** — Open the XLSX file to review:
   - Correlation and covariance matrices
   - Solver optimization setup and results
   - Scenario analysis calculations
   - Formula logic for financial metrics

4. **Review Database Schema (5 minutes)** — Open schema.sql to understand:
   - Data structure for stock information and price history
   - Relationships between tables
   - How historical data is organized

5. **Analyze Results & Methodology (10 minutes)** — Review Key Results and Methodology sections to understand:
   - Optimization approach and constraints
   - Portfolio construction logic
   - Risk-return tradeoffs

**Total Review Time:** ~45 minutes

---

## 👤 Author

**Naveen Koyyala**
- **Target Roles:** Data Analyst, BI Analyst, MIS Analyst, Reporting Analyst, SQL Analyst, Financial Data Analytics Fresher
- **Location:** Hyderabad, India | Open to Pan India opportunities
- **LinkedIn:** https://www.linkedin.com/in/naveen-koyyala/
- **Email:** koyyalanaveen566@gmail.com
- **GitHub:** https://github.com/Koyyalanaveen

---

**Disclaimer:** This project is for educational and analytical purposes. It demonstrates portfolio optimization techniques and does not constitute investment advice. Past performance and simulations based on historical data do not guarantee future results.

**Status:** Completed ✓ | **Last Updated:** 2026-05-25
