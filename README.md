# 📊 Portfolio Optimization Tool
### Quantitative Finance Project — Modern Portfolio Theory

## 🎯 Project Overview

Built a complete institutional-grade portfolio optimization system 
for 18 stocks across 8 sectors using Modern Portfolio Theory. 
Identified the optimal portfolio maximizing risk-adjusted returns, 
validated through Monte Carlo simulation.

---

## 📈 Key Results

| Metric | Equal Weight | Optimal Portfolio |
|--------|-------------|------------------|
| Annual Return | 15.72% | 26.11% |
| Annual Volatility | 14.39% | 14.81% |
| Sharpe Ratio | 0.7967 | **1.4764** |

### Optimal Portfolio Weights
| Stock | Company | Weight |
|-------|---------|--------|
| GOOGL | Alphabet Inc. | 30.00% |
| XOM | Exxon Mobil | 30.00% |
| KO | Coca-Cola | 16.42% |
| JPM | JPMorgan Chase | 10.15% |
| JNJ | Johnson & Johnson | 4.14% |
| CAT | Caterpillar | 4.03% |

---

## 🛠️ Tech Stack

- **MySQL** — price history database (1,080 rows)
- **Excel** — covariance matrix, Solver optimization, Monte Carlo
- **Power BI** — 3-page interactive dashboard

---

## 📁 Project Structure
```
portfolio-optimization-tool/
│
├── data/
│   └── stock_prices.csv          # 18 stocks × 60 months
│
├── sql/
│   └── portfolio_db_schema.sql   # Database schema
│    
│
├── excel/
│   └── Portfolio_Optimization_Project.xlsx
│
└── README.md
```

---

## 🔬 Methodology

### Phase 1 — Data Collection
- Downloaded 60 months of adjusted closing prices (Mar 2021 – Feb 2026)
- 18 stocks across 8 sectors: Technology, Energy, Financials, Healthcare,
  Consumer Staples, Utilities, Real Estate, Industrials
- Stored in MySQL database with 1,080 price records

### Phase 2 — Risk & Return Analysis
- Calculated monthly and annualised returns using compound formula
- Computed annualised volatility using square root of time rule
- Risk-free rate: 4.25% (10-year US Treasury)

### Phase 3 — Correlation & Covariance Matrices
- Built 18×18 correlation matrix using CORREL function
- Built 18×18 covariance matrix: Cov(i,j) = ρ(i,j) × σᵢ × σⱼ
- Key insight: AMZN/JNJ correlation = −0.20 (strongest diversifier)

### Phase 4 — Portfolio Optimization
- Used Excel Solver (GRG Nonlinear) to maximise Sharpe Ratio
- Constraints: weights sum to 1, no short selling, max 30% per stock
- Generated 30-point efficient frontier from 8% to 37% target return

### Phase 5 — Monte Carlo Simulation
- 1,000 simulated paths over 60 months
- Starting value: $10,000
- Results: $34,913 median, 95.4% probability of doubling

---

## 📊 Dashboard Preview

### Page 1 — Portfolio Overview
KPI cards, optimal weights bar chart, sector allocation donut

### Page 2 — Efficient Frontier
Risk vs return scatter plot, 3-portfolio comparison, Sharpe curve

### Page 3 — Risk Analysis
Monte Carlo distribution, probability gauge, simulation summary

---

## 🏆 Key Findings

1. **Energy outperformed**: XOM delivered Sharpe 1.02 — highest in the universe — driven by Russia-Ukraine oil price surge
2. **Diversification benefit**: Portfolio volatility (14.81%) lower than average individual stock volatility (25.4%)
3. **Negative Sharpe stocks excluded**: UNH (−0.11) and AMT (−0.09) received zero weight
4. **Min Variance portfolio**: 11.14% volatility — lower than every individual stock
5. **Time diversification**: In 1,000 Monte Carlo scenarios, zero scenarios resulted in a 5-year loss

---

## 📚 Concepts Demonstrated

`Modern Portfolio Theory` `Efficient Frontier` `Sharpe Ratio`
`Covariance Matrix` `Excel Solver` `GRG Nonlinear Optimization`
`Monte Carlo Simulation` `Value at Risk (VaR)` `Sector Diversification`
`SQL Window Functions` `Power BI DAX` `yfinance API`
