SQL> 
SQL> --2. List the appointments that have been conducted in an emergency ward.
SQL> 
SQL> SELECT A.Appointment_ID, A.Appointment_Booking_Date, A.Appointment_Date, A.Appointment_Time, W.Ward_Number, W.Ward_Name, W.Ward_Floor
  2  FROM Appointment A
  3  JOIN Ward W
  4  ON A.Ward_Number = W.Ward_Number
  5  WHERE W.Ward_Name = 'Emergency Ward';

APPOINTMENT_ID APPOINTME APPOINTME APPOINTMENT_TIME WARD_NUMBER WARD_NAME            WARD_FLOOR                                                                                                                                                                                                                                                                                                                                                                                                                     
-------------- --------- --------- ---------------- ----------- -------------------- --------------------                                                                                                                                                                                                                                                                                                                                                                                                           
           302 12-NOV-19 12-NOV-19             1230         312 Emergency Ward       Ground Floor                                                                                                                                                                                                                                                                                                                                                                                                                   

SQL> 