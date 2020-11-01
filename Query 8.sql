SQL> 
SQL> --4. List all patients booked for an appointment on a given date.
SQL> 
SQL> SELECT P.Person_Name, PA.Patient_ID, PA.Patient_Type, A.Appointment_ID, A.Appointment_Booking_Date, A.Appointment_Date
  2  FROM Person P
  3  JOIN Patient PA
  4  ON P.Person_ID = PA.Person_ID
  5  JOIN Appointment A
  6  ON P.Person_ID = A.Person_ID
  7  WHERE A.Appointment_Booking_Date = '12-Nov-19';

PERSON_NAME          PATIENT_ID PATIENT_TYPE                   APPOINTMENT_ID APPOINTME APPOINTME                                                                                                                                                                                                                                                                                                                                                                                                                   
-------------------- ---------- ------------------------------ -------------- --------- ---------                                                                                                                                                                                                                                                                                                                                                                                                                   
Anurag Dhungana             112 New                                       302 12-NOV-19 12-NOV-19                                                                                                                                                                                                                                                                                                                                                                                                                   
Shuvechha Shrestha          113 Regular                                   303 12-NOV-19 13-NOV-19                                                                                                                                                                                                                                                                                                                                                                                                                   
Shuvechha Shrestha          113 Regular                                   309 12-NOV-19 13-NOV-19                                                                                                                                                                                                                                                                                                                                                                                                                   

SQL>
