# AdventureWorks-ADF-Data-Ingestion

## Project Overview
This project demonstrates the ingestion of data from a on-prem SQL Server (hosted locally) to Azure Data Lake Storage (ADLS) using Azure Data Factory (ADF). The data used is from the AdventureWorks database ( bicycle manufacturer). The project focuses on the process of transferring data from SQL Server to the data lake.

## Tech Stack
- SQL Server 
- Azure Data Factory (ADF)
- Azure Data Lake Storage (ADLS)
- Azure Key Vault (AKV)

## Database Overview
The AdventureWorks database contains 10 tables used in this project:

Address, Customer, CustomerAddress, Product, ProductCategory, ProductDescription, ProductModel, ProductModelProductDescription, SalesOrderDetail, SalesOrderHeader

## Project Steps
- Create Linked Services:
    - Established a linked service between ADF and the locally hosted SQL Server.
    - Established a linked service between ADF and Azure Data Lake Storage (ADLS).
    - Configured Azure Key Vault to securely store SQL Server credentials and used it for authentication.
    
- Extract Table Names:
   - Used the Lookup operator in ADF to retrieve a list of table names using dynamic query from the AdventureWorks database.

- Ingest Data:
    - Used the For Each operator to loop through each table.
    - Implemented the Copy Data operator to transfer data from SQL Server tables into corresponding folders in the ADLS (bronze layer).
    - Data from each table was stored in separate directories in ADLS in Parquet format.
 
## Data Flow Diagram
![Data Flow Diagram](https://github.com/SHIVAM-MANDHAN/AdventureWorks-ADF-Data-Ingestion/blob/main/assets/AW%20Data%20Flow%20(2).png)

ADF Overview:

![ADF Overview](https://github.com/SHIVAM-MANDHAN/AdventureWorks-ADF-Data-Ingestion/blob/main/assets/AW%20ADF.png)



## Future Enhancements
- Perform data cleaning, transformation and load the data into silver layer.
- Perform data modeling and load the data into gold layer.
- Set up automated triggers for regular data ingestion.

## Conclusion
This project showcases the end-to-end process of ingesting on-premises data into Azure, ensuring scalable, cloud-based storage and processing for analytics and further data engineering tasks.
