global class LeadProcessor implements Database.Batchable<sObject>{
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        
        return Database.getQueryLocator([select id,leadsource from lead]);
        
    }
    
    global void execute(Database.BatchableContext bc,list<lead> scope){
        for(lead le:scope){
            le.leadsource = 'DreamForce';
        }
        update scope;
    }
    
    global void finish(Database.BatchableContext bc){
        id batchid = bc.getJobId();
        
    }

}