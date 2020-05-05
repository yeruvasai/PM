public class RandomContactFactory {
    
    public static list<contact> generateRandomContacts(integer numofcon , string lastn){
        list<contact> con = new list<contact>();
        for(integer i=0;i<numofcon;i++){
            lastn = 'Test' + i; 
            contact a = new contact (firstname = lastn,lastname = lastn);
            con.add(a);
        }
        return con;
        
        
    }

}