public with sharing class LimitWatcherApex {
    public LimitWatcherApex() {

    }

    public static void getDMLLimit(){
        System.debug('total number of DML statements or the database.EmptyRecycleBin methods that can be called.: ' + Limits.getLimitDMLStatements() );
    }

    public static void getSOQLLimit(){
        System.debug('number of SOQL queries that have been issued: '+Limits.getQueries()); 
        System.debug('total number of SOQL queries that can be issued: '+Limits.getLimitQueries()); 
    }
               
    public static void getCPULimit(){
        System.debug('CPU timeout limit: '+Limits.getLimitCPUTime()); 
    }
    
    public static void getAggregateLimit(){
        System.debug('Number of aggregate queries that have been processed with any SOQL query statement: '+Limits.getAggregateQueries());
    }
    
    public static void getCalloutLimit(){
     System.debug('total number of Web service statements that can be processed: '+Limits.getLimitCallouts()); 
    }

    
}

/*
System.debug('number of child relationship objects that have been returned.: '+Limits.getChildRelationshipsDescribes()); 
System.debug('total number of child relationship objects that can be returned.: '+Limits.getLimitChildRelationshipsDescribes()); 
System.debug('CPU time (in milliseconds) accumulated on the Salesforce servers in the current transaction: '+Limits.getCpuTime() ); 
System.debug('time limit (in milliseconds) of CPU usage in the current transaction.: '+Limits.getLimitCpuTime()); 
System.debug('number of records that have been processed with any statement that counts against DML limits, such as DML statements, the Database.emptyRecycleBin method, and other methods.: '+Limits.getDMLRows()); 
System.debug('total number of records that can be processed with any statement that counts against DML limits, such as DML statements, the database.EmptyRecycleBin method, and other methods.: '+Limits.getLimitDMLRows()); 
System.debug('number of DML statements (such as insert, update or the database.EmptyRecycleBin method) that have been called.: '+Limits.getDMLStatements()); 
System.debug('total number of email invocation (such as sendEmail) that can be called.: '+Limits.getLimitEmailInvocations()); 
System.debug('number of field describe calls that have been made: '+Limits.getFieldsDescribes()); 
System.debug('total number of field describe calls that can be made: '+Limits.getLimitFieldsDescribes()); 
System.debug('number of field set describe calls that have been made: '+Limits.getFieldSetsDescribes()); 
System.debug('total number of field set describe calls that can be made: '+Limits.getLimitFieldSetsDescribes()); 
System.debug('number of methods with the future annotation that have been executed (not necessarily completed): '+Limits.getFutureCalls()); 
System.debug('total number of methods with the future annotation that can be executed (not necessarily completed): '+Limits.getLimitFutureCalls()); 
System.debug('approximate amount of memory (in bytes) that has been used for the heap: '+Limits.getHeapSize()); 
System.debug('total amount of memory (in bytes) that can be used for the heap: '+Limits.getLimitHeapSize()); 

System.debug('number of PicklistEntry objects that have been returned: '+Limits.getPicklistDescribes()); 
System.debug('total number of PicklistEntry objects that can be returned: '+Limits.getLimitPicklistDescribes()); 
System.debug('number of records that have been returned by the Database.getQueryLocator method: '+Limits.getQueryLocatorRows()); 
System.debug('total number of records that have been returned by the Database.getQueryLocator method: '+Limits.getLimitQueryLocatorRows()); 
System.debug('number of records that have been returned by issuing SOQL queries: '+Limits.getQueryRows()); 
System.debug('total number of records that can be returned by issuing SOQL queries: '+Limits.getLimitQueryRows()); 
System.debug('number of RecordTypeInfo objects that have been returned: '+Limits.getRecordTypesDescribes()); 
System.debug('total number of RecordTypeInfo objects that can be returned: '+Limits.getLimitRecordTypesDescribes()); 
System.debug(' number of SOSL queries that have been issued: '+Limits.getSoslQueries()); 
System.debug(' total number of SOSL queries that can be issued: '+Limits.getLimitSoslQueries());*/