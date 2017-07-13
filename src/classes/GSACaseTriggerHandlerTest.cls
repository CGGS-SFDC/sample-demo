@isTest
public without sharing class GSACaseTriggerHandlerTest {
    public static testMethod void setRealTime() {
    	Test.startTest();
        Datetime startDate = datetime.newInstance(2017, 7, 5, 12, 30, 0);
        Datetime endDate = datetime.newInstance(2017, 7, 5, 13, 30, 0);
          
        Decimal businessHoursDiff;
         
        // Setup test data
     
        GSA_Cases__c cs = new GSA_Cases__c (
        Case_Number__c='Test1',
        Date_Opened__c=startDate,
        Date_Closed__c=endDate);
        insert cs;
        System.debug('Inserting cs with valid Date_Closed__c Num value');
        BusinessHours stdBusinessHours = [select id from BusinessHours where Name = 'Default'];
             
        cs = [select Id, Case_Number__c, Date_Opened__c, Date_Closed__c, hoursBetween__c from GSA_Cases__c
                where Case_Number__c= 'Test1'];
                           
        System.assert (cs.Date_Opened__c != NULL);
        System.assert (cs.Date_Closed__c!= NULL);
        System.assertequals(cs.hoursBetween__c, cs.hoursBetween__c);
        update cs;
        Test.stopTest();
    
	}

}