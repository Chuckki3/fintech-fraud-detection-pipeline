Fintech Fraud Detection Pipeline
Overview

This project implements an end-to-end fraud detection pipeline using transactional data, simulating how fintech companies identify and flag suspicious financial activity.

Built using SQL in Google BigQuery, the system applies behavioral feature engineering and a rule-based risk scoring model to detect potential fraud.

⚙️ Tech Stack

SQL

Google BigQuery

Data Engineering (ETL, Feature Engineering, Data Modeling)

 
 Pipeline Architecture
Transaction Data 
   ↓
Data Cleaning (transactions_clean)
   ↓
Feature Engineering
   ↓
Risk Scoring
   ↓
Fraud Detection Output
🔍 Feature Engineering

The system derives key behavioral indicators from transaction data:

Transaction Velocity → detects rapid activity bursts

Amount Anomaly Detection → flags unusual transaction sizes

Balance Inconsistency Check → identifies ledger mismatches

Destination Account Analysis → detects suspicious accounts

Transaction Type Risk Filtering → focuses on high-risk flows

 Risk Scoring Model

A weighted scoring system evaluates fraud risk:

Feature	Weight
High-risk transaction type	2
High velocity	1
Amount anomaly	2
Balance inconsistency	3
Destination anomaly	1

Transactions exceeding a defined threshold are flagged as suspicious.

 Project Structure
sql/
  01_create_clean_table.sql
  02_velocity_feature.sql
  03_amount_feature.sql
  04_balance_feature.sql
  05_destination_feature.sql
  06_risk_scoring.sql
  07_improved_model.sql

docs/
  methodology.md

data/
  sample_data.csv

architecture/
  architecture.md


How to Run

Execute SQL scripts sequentially:

01 → 02 → 03 → 04 → 05 → 06 → 07

Each step builds on the previous stage of the pipeline.

 Real-World Application

This project simulates a fraud detection system used in fintech environments.

While implemented in batch mode, the architecture is designed to be extended into:

real-time event-driven pipelines

API-based fraud scoring systems

streaming data platforms




Future Improvements

Machine Learning model (BigQuery ML)

Real-time fraud detection pipeline

Dashboard for monitoring fraud metrics

Feature store integration
