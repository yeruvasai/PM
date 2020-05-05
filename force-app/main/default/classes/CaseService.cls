public with sharing class CaseService 
{
    public static void closeCases (set<id> Caseids,string closeCases)
    {
        list<case> cases = [select Status,Reason	from case where id in :Caseids];  
    }
    
}