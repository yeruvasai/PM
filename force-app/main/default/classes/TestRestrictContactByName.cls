@istest
public class TestRestrictContactByName {
    
    public static testmethod void preventionName(){
        
        contact con = new contact(LastName='INVALIDNAME',FirstName='Error');
        Test.startTest();
        try{
            insert con ;
        }
        catch(exception e){
            Test.stopTest();
        }
        
    }

}