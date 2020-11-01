SQL> --3. List all staffs (certified and uncertified) who have conducted or will conduct an appointment on a given date.
SQL> 
SQL> SELECT P.Person_Name, P.Person_Type, S.Staff_ID, S.Staff_Type, S.Staff_Certification, A.Appointment_ID, A.Appointment_Date, A.Appointment_Time
  2  FROM Staff S
  3  JOIN Appointment A
  4  ON S.Staff_ID = A.Staff_ID
  5  JOIN Person P
  6  ON S.Person_ID = P.Person_ID
  7  WHERE A.Appointment_Date = '16-Nov-19';

PERSON_NAME          PERSON_TYPE    STAFF_ID STAFF_TYPE STAFF_CERTIF APPOINTMENT_ID APPOINTME APPOINTMENT_TIME                                                                                                                                                                                                                                                                                                                                                                                                      
-------------------- ------------ ---------- ---------- ------------ -------------- --------- ----------------                                                                                                                                                                                                                                                                                                                                                                                                      
Roshan Rhymaji       Doctor              102 Doctor     Uncertified             305 16-NOV-19             1200                                                                                                                                                                                                                                                                                                                                                                                                      
Ram Kumar Shrestha   Doctor              103 Doctor     Certified               306 16-NOV-19             1115                                                                                                                                                                                                                                                                                                                                                                                                      

SQL> 