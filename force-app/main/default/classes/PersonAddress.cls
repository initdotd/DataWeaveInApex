public with sharing class PersonAddress {

    @AuraEnabled public String street { get; set; }
    @AuraEnabled public String city { get; set; }
    @AuraEnabled public String state { get; set; }

    public PersonAddress() {
        return;
    }
}