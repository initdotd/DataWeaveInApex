public with sharing class PersonService {

    /*
    String personJson = '{"firstName":"Jeff","lastName":"Watson"}';
     */
    public static List<Person> transformPerson(String peopleJson) {
        DataWeave.Script personJson2ObjectScript = DataWeave.Script.createScript('personJson2Object');
        DataWeave.Result dwResult = personJson2ObjectScript.execute(new Map<String, Object> {'records' => peopleJson});
        return (List<Person>) dwResult.getValue();
    }
}