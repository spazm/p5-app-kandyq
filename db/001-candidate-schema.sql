CREATE TABLE candidate (
    id         integer primary key autoincrement,
    first_name string not null,
    last_name  string not null,
    email      string,
    status     string
);
