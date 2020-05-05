public class AccountProcessor {
    
    @future
    public static void countContacts(set<id> accountid){
       
        list<account> accid = [select id,Number_of_Contacts__c,(select id from contacts) from account where id =: accountid];
        for(account acc:accid){
            acc.Number_of_Contacts__c = acc.contacts.size();
        }
        update accid;
    } 

}