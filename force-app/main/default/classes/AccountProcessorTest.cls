@istest
public class AccountProcessorTest {
    
    public static testmethod void testaccountprocessor(){
        account acc = new account();
        acc.Name = 'prasad';
        insert acc;
        
        contact con = new contact();
        con.FirstName = 'sai';
        con.LastName = 'prasad';
        con.AccountId = acc.Id;
        insert con;
        
        set<id> testid = new set<id>();
        testid.add(acc.Id);
        
        Test.startTest();
            AccountProcessor.countContacts(testid);
        Test.stopTest();
        
        account ac = [select id,Number_of_Contacts__c from account where id =: acc.Id limit 1];
        system.assertEquals(integer.valueOf(ac.Number_of_Contacts__c),1);
    } 

}