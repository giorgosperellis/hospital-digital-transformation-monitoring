# Hospital Digital Transformation Monitoring & Performance Evaluation

### Healthcare Data Analytics | Business Intelligence | Performance Monitoring

## 📊 Project Overview

This project presents a data analytics and reporting workflow designed to support the monitoring and evaluation of digital transformation initiatives across hospitals.

The original workflow was developed in the context of the 1st Regional Health Authority of Attica, Greece.

It combines Microsoft Excel, Power Query, Power Pivot and DAX to support monthly progress monitoring, historical data analysis and weighted performance evaluation.

## 🎯 Business Challenge

Monitoring digital transformation projects requires more than identifying whether an initiative has been completed.

The reporting process must also capture:

- The implementation status of each project.
- Changes in project status over time.
- Differences in implementation progress between hospitals.
- The timing of project implementation.
- Differences in hospital size and operational capacity.
- The contribution of individual projects to overall performance.

Traditional Excel Pivot Tables have limitations when displaying text-based project status responses chronologically across multiple reporting periods.

A structured data transformation and reporting workflow was therefore required.

## 🔄 Data Processing Workflow

The reporting process consists of the following stages:

1. Monthly Data Collection
   - Collect Excel reports submitted by hospitals.

2. Data Validation
   - Apply structured Excel formulas and validation checks.
   - Identify inconsistencies before further processing.

3. Data Preparation
   - Organize and transform the collected information.

4. Historical Data Consolidation
   - Maintain a centralized dataset containing multiple reporting periods.

5. Progress Monitoring
   - Use Power Query, Power Pivot and DAX to support chronological analysis.
   - Display the evolution of project implementation status by hospital and month.

6. Performance Evaluation
   - Support hospital classification based on hospital type, staffing levels and bed capacity.
   - Provide historical information to support management assessment.
   - Allow management to enter project performance scores.

7. Weighted Score Calculation
   - Calculate overall performance using predefined project weights and management-assigned scores.

8. Management Reporting
   - Present evaluation results and comparative performance indicators.

## 🛠️ Technologies

| Technology | Application |
|------------|-------------|
| Microsoft Excel | Data collection, validation and reporting |
| Power Query | Data preparation and transformation |
| Power Pivot | Data modeling and analysis |
| DAX | Data analysis and reporting calculations |
| Excel Formulas | Validation and weighted score calculations |
| Pivot Tables | Comparative reporting and data presentation |

## 📈 Time-Based Performance Monitoring

A key feature of the workflow is the ability to examine how project implementation status changes over time.

This historical perspective supports the evaluation of implementation progress and response times.

Hospital classification takes into account:

- Hospital type
- Total staffing levels
- Bed capacity

These characteristics inform differentiated expectations regarding implementation timelines.

Performance scores are assigned by management based on the applicable evaluation criteria.

## ⚖️ Weighted Performance Evaluation

The evaluation framework supports different weights for individual digital transformation projects.

For example:

| Project | Management Score | Weight | Weighted Contribution |
|---------|------------------|--------|-----------------------|
| Project A | 7/10 | 20% | 1.40 |
| Project B | 9/10 | 30% | 2.70 |
| Project C | 8/10 | 50% | 4.00 |
| **Total** | | **100%** | **8.10/10** |

The values above are illustrative and do not represent actual hospital evaluations.

The final weighted score is calculated from management-assigned project scores and their respective weights.

## 💡 Project Value

The workflow supports:

- Consistent monthly monitoring.
- Historical tracking of project implementation.
- Improved data validation and organization.
- Comparative analysis across hospitals.
- Performance evaluation based on differentiated criteria.
- Automated calculation of weighted evaluation results.
- Structured management reporting.

## 🔐 Data Privacy

This repository documents the methodology and technical structure of the reporting workflow.

Original organizational datasets, confidential information and internal evaluation records are not included.

Any demonstration datasets or example reports will use synthetic data.

## 👤 Author

**Georgios Perellis**

Statistician | Data Analyst | SQL & Business Intelligence | Process Automation

BSc in Statistics and Insurance Science  
University of Piraeus
