@istest
private class TestVerifyDate
{
    public static testmethod void dateverify(){
        date date1 = date.today();
        date date2 = date1.addDays(29);
        date t = VerifyDate.CheckDates(date1,date2);
            system.assertEquals(t,date2);
    }
    public static testmethod void nextdays(){
        date date1 = date.today();
        date date2 = date1.addDays(31);
        date t = verifydate.CheckDates(date1,date2);
        system.assertNotEquals(t,date1);
    }

}