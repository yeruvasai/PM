@istest
public class LeadProcessorTest {

    public static testmethod void testlead(){
        list<lead> le = new list<lead>();
        for(integer i=0;i<200;i++){
            le.add(new lead(lastname = 'test'+i,firstname = 'test'+i,company='spr'+i,leadsource='web'));
        }
        insert le;
        Test.startTest();
        	leadprocessor leads = new leadprocessor();
        	Database.executeBatch(leads);
        Test.stopTest();
    }
    
}