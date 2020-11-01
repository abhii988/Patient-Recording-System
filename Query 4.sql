SQL> 
SQL> --4. List all staffs that are also a patient.
SQL> 
SQL> SELECT P.Person_ID, P.Person_Name, P.Person_Type, S.Staff_ID, S.Staff_Type, S.Staff_Certification, PT.Patient_ID, PT.Patient_Type
  2  FROM Staff S
  3  JOIN Person P
  4  ON S.Person_ID = P.Person_ID
  5  JOIN Patient PT
  6  ON S.Person_ID = PT.Person_ID;

 PERSON_ID PERSON_NAME          PERSON_TYPE    STAFF_ID STAFF_TYPE STAFF_CERTIF PATIENT_ID PATIENT_TYPE                                                                                                                                                                                                                                                                                                                                                                                                             
---------- -------------------- ------------ ---------- ---------- ------------ ---------- ------------------------------                                                                                                                                                                                                                                                                                                                                                                                           
         6 Roshan Rhymaji       Doctor              102 Doctor     Uncertified         116 Regular_Uncertified_Doctor                                                                                                                                                                                                                                                                                                                                                                                               
         7 Ram Kumar Shrestha   Doctor              103 Doctor     Certified           117 New_Certified_Doctor                                                                                                                                                                                                                                                                                                                                                                                                     
         9 Binita Maharjan      Nurse               105 Nurse      Uncertified         115 New_Uncertified_Nurse                                                                                                                                                                                                                                                                                                                                                                                                    
        12 Shikha KC            Nurse               108 Nurse      Certified           118 Regular_Certified_Nurse                                                                                                                                                                                                                                                                                                                                                                                                  

SQL> 