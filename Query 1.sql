SQL> --Information Queries:
SQL> 
SQL> --1. List all patients, regular and new
SQL> 
SQL> SELECT Person_ID, Person_Name, Person_Age, Person_Gender, Person_Type, Patient_Type
  2  FROM Patient
  3  JOIN Person
  4  USING (Person_ID);

 PERSON_ID PERSON_NAME          PERSON_AGE PERSON PERSON_TYPE  PATIENT_TYPE                                                                                                                                                                                                                                                                                                                                                                                                                                         
---------- -------------------- ---------- ------ ------------ ------------------------------                                                                                                                                                                                                                                                                                                                                                                                                                       
         1 Raj Gurung                   25 Male   Patient      New                                                                                                                                                                                                                                                                                                                                                                                                                                                  
         2 Anurag Dhungana              26 Male   Patient      New                                                                                                                                                                                                                                                                                                                                                                                                                                                  
         3 Shuvechha Shrestha           24 Female Patient      Regular                                                                                                                                                                                                                                                                                                                                                                                                                                              
         4 Sushant Chhetri              28 Male   Patient      Regular                                                                                                                                                                                                                                                                                                                                                                                                                                              
         6 Roshan Rhymaji               36 Male   Doctor       Regular_Uncertified_Doctor                                                                                                                                                                                                                                                                                                                                                                                                                           
         7 Ram Kumar Shrestha           46 Male   Doctor       New_Certified_Doctor                                                                                                                                                                                                                                                                                                                                                                                                                                 
         9 Binita Maharjan              26 Female Nurse        New_Uncertified_Nurse                                                                                                                                                                                                                                                                                                                                                                                                                                
        12 Shikha KC                    25 Female Nurse        Regular_Certified_Nurse                                                                                                                                                                                                                                                                                                                                                                                                                              

8 rows selected.

SQL> 