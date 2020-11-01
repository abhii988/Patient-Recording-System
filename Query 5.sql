SQL> --Transaction Queries:
SQL> 
SQL> --1. List all uncertified doctors who have been attended an appointment for a treatment and the amount he/she have paid.
SQL> 
SQL> SELECT P.Person_Name, P.Person_Type, PA.Patient_Type, S.Staff_ID, S.Staff_Type, S.Staff_Certification, A.Appointment_ID, T.Treatment_Name, PM.Payment_Amount
  2  FROM Person P
  3  JOIN Patient PA
  4  ON P.Person_ID = PA.Person_ID
  5  JOIN Appointment A
  6  ON P.Person_ID = A.Person_ID
  7  JOIN Staff S
  8  ON P.Person_ID = S.Person_ID
  9  JOIN Treatment T
 10  ON P.Person_ID = T.Person_ID
 11  JOIN Payment PM
 12  ON A.Payment_ID = PM.Payment_ID
 13  WHERE S.Staff_Certification = 'Uncertified'
 14  AND S.Staff_Type = 'Doctor';

PERSON_NAME          PERSON_TYPE  PATIENT_TYPE                     STAFF_ID STAFF_TYPE STAFF_CERTIF APPOINTMENT_ID TREATMENT_NAME                 PAYMENT_AMOUNT                                                                                                                                                                                                                                                                                                                                                    
-------------------- ------------ ------------------------------ ---------- ---------- ------------ -------------- ------------------------------ --------------                                                                                                                                                                                                                                                                                                                                                    
Roshan Rhymaji       Doctor       Regular_Uncertified_Doctor            102 Doctor     Uncertified             306 Arthritis Treatment                      2500                                                                                                                                                                                                                                                                                                                                                    

SQL> 