public with sharing class Person {

    @AuraEnabled public String firstName { get; set; }
    @AuraEnabled public String lastName { get; set; }
    @AuraEnabled public PersonAddress address { get; set; }

    public Person() {
        this.address = new PersonAddress();
        return;
    }
}