global with sharing class GSACasesHelperClass {
    //Helper class for GSA_Cases__c object
	public static void setRealTime(List<SObject> newItems) {
    
        BusinessHours bh = [SELECT id  From BusinessHours Where Name='Default'];
         for (GSA_Cases__c c : (List<GSA_Cases__c>)newItems){   
            
            Datetime inTime = c.Date_Opened__c; 
            Datetime outTime = c.Date_Closed__c;
             //assign the nummber of hours after calculation to variable businessHoursDiff
            decimal businessHoursDiff = DateCalculationsUtility.setRealTime(inTime, outTime, bh);//calls the method from Utility class
             
             //hoursBetween__c field is on GSA_Cases__c record type page layout
            c.hoursBetween__c = businessHoursDiff; 
       }
   }
}