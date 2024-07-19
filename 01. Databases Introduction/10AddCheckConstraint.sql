ALTER TABLE Users
    ADD CONSTRAINT Password_Five_Char
    CHECK(LEN(Password) > 5)