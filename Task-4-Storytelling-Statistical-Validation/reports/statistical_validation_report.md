# Statistical Validation Report

## ApexPlanet Data Analytics Internship

---

# Objective

The objective of this phase was to validate business insights obtained during Exploratory Data Analysis using statistical techniques. Statistical validation helps determine whether observed patterns are statistically significant and suitable for business decision-making.

---

# Statistical Techniques Used

| Technique | Purpose |
|-----------|---------|
| Descriptive Statistics | Summarize numerical variables |
| Distribution Analysis | Understand data distribution |
| Outlier Detection (IQR) | Detect extreme observations |
| Correlation Analysis | Measure relationships between variables |
| Pearson Correlation Test | Validate linear association |
| Independent Sample T-Test | Compare gender-wise sales |
| One-Way ANOVA | Compare sales across age groups |
| Confidence Interval | Estimate population mean |

---

# Descriptive Statistics

Key observations:

- Total records analyzed: **1000**
- Average Total Sales: **₹139,399**
- Median Total Sales: **₹108,594**
- Maximum Sales: **₹493,677**
- Average Quantity Sold: **5.44 units**

The distribution indicates that most transactions are concentrated in the lower sales range with a small number of high-value orders.

---

# Distribution Analysis

Histogram analysis showed that Total Sales follows a **positively skewed distribution**, where a majority of transactions are smaller while a limited number of premium transactions contribute substantially to overall revenue.

---

# Outlier Detection

The Interquartile Range (IQR) method was used.

| Metric | Value |
|--------|-------|
| Q1 | ₹47,066.63 |
| Q3 | ₹203,722.88 |
| IQR | ₹156,656.25 |
| Upper Bound | ₹438,707.26 |
| Total Outliers | 19 |

These outliers represent high-value business transactions rather than data quality issues and were retained for analysis.

---

# Correlation Analysis

The correlation matrix revealed:

- Quantity vs Total Sales → **0.65**
- Unit Price vs Total Sales → **0.69**
- Age showed negligible correlation with sales.

Revenue is primarily influenced by product pricing and purchase quantity.

---

# Pearson Correlation Test

Correlation Coefficient:

**r = 0.6466**

P-value:

**< 0.001**

### Interpretation

A statistically significant positive relationship exists between Quantity Sold and Total Sales.

---

# Independent Sample T-Test

Objective:

Compare Total Sales between Male and Female customers.

Results:

- T Statistic = 0.6826
- P-value = 0.4950

### Decision

Fail to reject the null hypothesis.

There is no statistically significant difference in sales between genders.

---

# One-Way ANOVA

Objective:

Compare Total Sales among different Age Groups.

Results:

- F Statistic = 0.0765
- P-value = 0.9727

### Decision

Fail to reject the null hypothesis.

Age groups exhibit similar purchasing behavior.

---

# Confidence Interval

95% Confidence Interval for Mean Total Sales

| Lower Bound | Upper Bound |
|-------------|-------------|
| ₹132,319 | ₹146,480 |

This interval estimates the true population mean with 95% confidence.

---

# Statistical Conclusions

- Revenue is strongly associated with Quantity and Unit Price.
- Customer demographics have minimal influence on sales.
- High-value transactions are legitimate business events.
- Statistical tests support the reliability of the analytical findings.
- The dataset is appropriate for dashboarding and business intelligence applications.

---

# Business Impact

The statistical validation confirms that business recommendations derived from this project are supported by data and can assist stakeholders in making informed, evidence-based decisions.