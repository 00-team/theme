#include <stdio.h>
#include <stdbool.h>
#include <string.h>

#define PEOPLE_DB "people.db"
#define member_size(type, member) sizeof(((type*)0)->member)

bool X = true;
bool Y = false;

typedef struct {
    char name[20];
    unsigned int age;
} Person;

void read_db(void) {
    FILE *db;
    db = fopen(PEOPLE_DB, "r");

    if (db == NULL)
        return;

    fclose(db);
}

int main() {
    Person person;
    memcpy(person.name, "Ludwig", 6);
    person.age = 12;

    printf("sizeof Person: %ld\n", sizeof(Person));
    printf("sizeof Person.name: %ld\n", member_size(Person, name));

    read_db();

    return 0;
}