Run the steps in following order:
1. Create a database in SQL Server called 'foodinspection'
2. Run the Date_Dimensional_Script.sql on this database to create Date Dimension
3. Run the DC_Dimensional_Model.sql on this database to create Dimensional Model tables
4. Run the Staging_Chicago_BusinessLicense workflow
5. Run the Staging_Chicago_FoodInspectionResults workflow
6. Run the Staging_Dallas_FoodInspectionResults workflow
7. Run the Chicago_BusinessLicense_Dimension_ETL workflow
8. Run the Dallas_Chicago_Dimension_ETL workflow
9. Run the Dallas_FCT_FoodInspection_ETL workflow
10. Run the Dallas_FCT_FoodInspectionViolation_ETL workflow
11. Run the Chicago_FCT_FoodInspection_ETL workflow
12. Run the Chicago_FCT_FoodInpsectionViolation workflow