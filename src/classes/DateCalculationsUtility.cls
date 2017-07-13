global with sharing class DateCalculationsUtility { //utility class that contains Date Calculation methods
    
	 public static decimal setRealTime(Datetime startTime, Datetime endTime, BusinessHours bhs) { //generic method to calculate real time between two dates
         
            Datetime inTime = startTime;
            Datetime outTime = endTime;  
         	//diff method is instance of BusinessHours class
            long businessMillisecondsDiff = BusinessHours.diff(bhs.id, inTime, outTime);
         	//the division converts the milliseconds to hours
            decimal businessHoursDiff = businessMillisecondsDiff / (1000.0*60.0*60.0);
            
            System.debug(businessHoursDiff + 'businessHoursDiff');
            return businessHoursDiff; 
   }
}