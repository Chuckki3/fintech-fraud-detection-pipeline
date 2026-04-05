## Architecture Overview

The system follows a layered data engineering approach:

1. Raw transaction data is ingested into BigQuery  
2. Data is cleaned and standardized  
3. Behavioral features are engineered  
4. Features are combined into a risk scoring model  
5. High-risk transactions are flagged for analysis  

This structure mirrors real-world fraud detection pipelines used in fintech systems.
