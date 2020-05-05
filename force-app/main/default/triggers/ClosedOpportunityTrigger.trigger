trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    
    list<task> listtask = new list<task>();
    
    for(opportunity p:trigger.new){
        
        if(p.StageName == 'Closed Won'){
            task t = new task();
            t.Subject = 'Follow Up Test Task';
            t.WhatId = p.Id;
            listtask.add(t);
        }
        
    }
    if(listtask.size()>0){
    insert listtask;
    }
    
}