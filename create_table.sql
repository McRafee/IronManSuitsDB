-- create_table.sql
CREATE TABLE iron_man_suits (
    suit_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    suit_name VARCHAR2(50),
    characteristics VARCHAR2(100),
    movie_appearance VARCHAR2(100)
);
