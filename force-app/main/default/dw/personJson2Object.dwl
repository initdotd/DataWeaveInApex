%dw 2.0
input records application/json
output application/apex
---
records map(record) -> {
    firstName: record.firstName,
    lastName: record.lastName,
    address: {
        street: record.address.street,
        city: record.address.city,
        state: record.address.state
    }
} as Object {class: "Person"}
