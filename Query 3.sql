SQL> 
SQL> --3. For a given certified doctor, find all the appointments he/she have conducted and the amount he/she got for conducting the appointment.
SQL> 
SQL> SELECT P.Person_ID, P.Person_Name, P.Person_Type, S.Staff_ID, S.Staff_Certification, S.Staff_Type, A.Appointment_ID, T.Treatment_Name, T.Staff_Charge
  2  FROM Appointment A
  3  JOIN Person P
  4  ON A.Person_ID = P.Person_ID
  5  JOIN Staff S
  6  ON A.Staff_ID = S.Staff_ID
  7  JOIN Treatment T
  8  ON A.Appointment_ID = T.Appointment_ID
  9  WHERE S.Staff_ID = 103;

 PERSON_ID PERSON_NAME          PERSON_TYPE    STAFF_ID STAFF_CERTIF STAFF_TYPE APPOINTMENT_ID TREATMENT_NAME                 STAFF_CHARGE                                                                                                                                                                                                                                                                                                                                                                          
---------- -------------------- ------------ ---------- ------------ ---------- -------------- ------------------------------ ------------                                                                                                                                                                                                                                                                                                                                                                          
         2 Anurag Dhungana      Patient             103 Certified    Doctor                302 Cardiopulmonary Resuscitation          1500                                                                                                                                                                                                                                                                                                                                                                          
         6 Roshan Rhymaji       Doctor              103 Certified    Doctor                306 Arthritis Treatment                     400                                                                                                                                                                                                                                                                                                                                                                          

SQL> 