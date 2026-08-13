# ShopSphere E-Commerce Funnel Analysis

An end-to-end e-commerce analytics project analyzing customer acquisition, engagement, conversion, revenue performance, and user behavior using SQL, Python, Pandas, and Power BI.

The project transforms raw Google Analytics sample data into business-focused insights covering the complete e-commerce funnel — from visitors and product views to purchases and revenue.

---

## 📌 Project Overview

E-commerce businesses generate large volumes of behavioral and transaction data, but raw data alone does not explain where customers are being lost or which channels, devices, countries, pages, and time periods are driving performance.

This project analyzes the ShopSphere e-commerce dataset to answer key business questions such as:

- How efficiently are visitors moving through the purchase funnel?
- Where are the largest conversion drop-offs occurring?
- Which marketing channels generate the most traffic and revenue?
- Which countries contribute the most revenue?
- How does performance vary across devices?
- Which pages attract the most users?
- How does conversion rate change over time?
- What time periods show stronger customer activity?
- Which traffic sources generate high engagement?
- What opportunities exist to improve e-commerce conversion?

---

## 🎯 Business Objectives

The main objectives of this project are to:

1. Measure overall e-commerce performance.
2. Analyze the customer conversion funnel.
3. Identify major funnel drop-off points.
4. Compare revenue across countries.
5. Compare performance across devices.
6. Evaluate marketing and traffic sources.
7. Analyze landing pages and viewed pages.
8. Identify time-based conversion patterns.
9. Build an interactive Power BI dashboard.
10. Translate analytical results into actionable business recommendations.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| SQL / Google BigQuery | Data extraction, transformation and analysis |
| Python | Data analysis and exploration |
| Pandas | Data manipulation and analysis |
| Jupyter Notebook | Python-based analysis |
| Power BI | Interactive dashboard and visualization |
| GitHub | Project documentation and version control |

---

## 📊 Data Source

The analysis uses the Google Analytics sample e-commerce dataset available through Google BigQuery Public Datasets.

The dataset contains information related to:

- Website sessions
- Visitors
- Page views
- Product interactions
- Transactions
- Traffic sources
- Marketing channels
- Devices
- Geographic information
- User engagement

---

# 🔎 Analysis Performed

## 1. Overall E-Commerce KPIs

Analyzed high-level performance indicators including:

- Unique visitors
- Total transactions
- Total page views
- Purchases
- Overall conversion performance

These metrics provide a baseline view of the business before deeper segmentation.

---

## 2. E-Commerce Funnel Analysis

The customer journey was analyzed across multiple stages:

**Visitors → Product Viewers → Cart Users → Checkout Users → Purchasers**

The analysis identifies where the largest number of users leave the funnel and highlights potential areas for conversion optimization.

---

## 3. Funnel Conversion Rates

Calculated conversion performance between different stages of the customer journey to understand:

- Visitor-to-product-view conversion
- Product-view-to-cart conversion
- Cart-to-checkout conversion
- Checkout-to-purchase conversion

This helps identify the stages creating the greatest friction.

---

## 4. Revenue Analysis

Revenue was analyzed across multiple dimensions including:

- Country
- Device
- Marketing channel
- Traffic source
- Time period

This helps identify the strongest contributors to commercial performance.

---

## 5. Geographic Performance

Analyzed customer and revenue performance across countries to identify:

- High-performing markets
- Revenue concentration
- Differences in conversion behavior
- Potential geographic growth opportunities

---

## 6. Device Performance

Compared e-commerce performance across devices such as:

- Desktop
- Mobile
- Tablet

Metrics analyzed include traffic, transactions, revenue, and conversion behavior.

---

## 7. Marketing & Traffic Source Analysis

Traffic sources and marketing channels were evaluated based on:

- Visitors
- Transactions
- Revenue
- Engagement
- Conversion performance

This provides insight into which acquisition sources bring valuable customers rather than simply generating traffic.

---

## 8. Page & Landing Page Performance

Analyzed website pages to identify:

- Most viewed pages
- Landing page performance
- Page engagement
- Potential high-traffic / low-conversion areas

These insights can help prioritize website optimization efforts.

---

## 9. Time-Based Analysis

Analyzed performance across:

- Month
- Hour of day
- Conversion rate trends

The goal was to identify periods of stronger customer activity and conversion.

---

# 📈 Power BI Dashboard

The Power BI dashboard converts the analytical results into an interactive business reporting layer.

### Dashboard Coverage

- Overall E-commerce KPIs
- Visitor and purchaser trends
- Monthly conversion rate
- Funnel analysis
- Revenue performance
- Geographic analysis
- Device performance
- Marketing channel performance
- Traffic source analysis
- Time-based performance

### Dashboard Preview

#### Page 1 — Overall E-Commerce Overview

![Power BI Dashboard - Overview](page-1-overview.png)

#### Page 2 — E-Commerce Performance

![Power BI Dashboard - Page 2](page-2-overview.png)

#### Page 3 — E-Commerce Analysis

![Power BI Dashboard - Page 3](page-3-overview.png)

#### Page 4 — E-Commerce Analysis

![Power BI Dashboard - Page 4](page-4-overview.png)

---

# 💡 Key Business Insights

The analysis demonstrates how e-commerce performance can be evaluated across the complete customer journey rather than relying on revenue alone.

Key areas of insight include:

- Significant user drop-off occurs between stages of the conversion funnel.
- Traffic volume does not necessarily translate directly into purchases.
- Revenue contribution varies considerably by acquisition source and customer segment.
- Device-level performance can reveal opportunities for improving mobile or desktop experiences.
- Geographic analysis can identify markets with stronger commercial potential.
- Time-based analysis can reveal periods of higher conversion activity.
- Page and landing-page performance can highlight areas for website optimization.

> Specific business recommendations should be interpreted together with the SQL results and Power BI dashboard rather than relying on a single KPI.

---

# 🚀 Business Recommendations

Based on the analytical framework, an e-commerce business could:

### 1. Optimize Funnel Drop-Offs
Focus product, cart, and checkout improvements on the stages with the largest conversion losses.

### 2. Improve Underperforming Acquisition Channels
Evaluate marketing channels using revenue and conversion rather than traffic volume alone.

### 3. Optimize Device Experience
Investigate significant conversion differences between mobile, desktop, and tablet users.

### 4. Prioritize High-Value Markets
Allocate marketing and localization resources toward countries demonstrating strong revenue and conversion potential.

### 5. Improve Landing Pages
Investigate high-traffic pages with weak downstream conversion.

### 6. Use Time-Based Insights
Align campaigns and promotional activity with periods showing stronger customer engagement and conversion.

---

# 📁 Repository Structure

```text
ShopSphere-Ecommerce-Funnel-Analysis/
│
├── 01_overall_ecommerce_kpis.sql
├── 02_ecommerce_funnel_analysis.sql
├── 03_funnel_conversion_rates.sql
├── 04_revenue_by_country.sql
├── 05_revenue_by_device.sql
├── 06_revenue_by_marketing_channel.sql
├── 07_device_performance_analysis.sql
├── 08_funnel_conversion_rates.sql
├── 09_geographic_performance.sql
├── 10_hourly_conversion_rate_analysis.sql
├── 11_landing_page_performance.sql
├── 12_overall_ecommerce_kpis.sql
├── 13_page_performance_analysis.sql
├── 14_revenue_transaction_performance.sql
├── 15_revenue_by_country.sql
├── 16_revenue_by_device.sql
├── 17_revenue_by_marketing_channel.sql
├── 18_shopsphere_daily_ecommerce_dataset.sql
├── 19_time_of_day_performance_analysis.sql
├── 20_top_viewed_pages.sql
├── 21_traffic_source_engagement_revenue.sql
├── 22_traffic_source_performance.sql
│
├── ShopSphere_Ecommerce_Analytics.ipynb
├── Shopsphere_Ecommerce_funnel.pbix
│
├── page-1-overview.png
├── page-2-overview.png
├── page-3-overview.png
├── page-4-overview.png
│
└── README.md
