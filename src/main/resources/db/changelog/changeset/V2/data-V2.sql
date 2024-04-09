--liquibase formatted sql
--changeset mykhailo:2

-- -- FOR USER AUTHORITY
-- -- SELECT USER_INFO.ID , LOGIN , PASSWORD, talent_id , AUTHORITY FROM
-- --     USER_INFO
-- --         JOIN user_authorities ON talent_id = USER_INFO.ID
-- --         JOIN AUTHORITY ON AUTHORITY.ID = id

insert into authority (id, authority)
values (1, 'TALENT');
insert into authority (id, authority)
values (2, 'SPONSOR');

insert into talent (first_name, last_name, specialization, image)
values ('Andrii', 'Lazarenko', 'Java-Developer', null);
insert into talent_description (talent_id, BIO, addition_info)
values((select id from talent order by id desc limit 1), 'Hello! I was born in Ukraine. My profession is Java Back-end developer. Now I`m developing a Java backend using Spring Boot.', 'My cat`s name is Igor');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Java Core');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Spring Core');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Spring boot');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'H2 Database');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'first_contact');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'second_contact');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'third_contact');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'Here I wrote a program that transforms the written code into music', 'PUBLISHED', '2022-01-04 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to second proof', 'DRAFT', '2023-03-04 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to third proof', 'HIDDEN', '2021-06-08 16:00:19');

insert into user_info (talent_id, login, password)
values ((select id from talent order by id desc limit 1), 'AndriiLazarenko@gmail.com', '$2a$10$EzYxG1DEUek/veK.HzP7B.ynSKE42VbLb4pvFd/v4OwGPNol6buEC');
insert into user_authorities (user_id, authority_id)
values ((select id from user_info order by id desc limit 1),
       (select authority.id from authority where id = 1));

insert into talent (first_name, last_name, specialization, image)
values ('Taras', 'Shapoval', 'Java-Developer', null);
insert into talent_description (talent_id, BIO, addition_info)
values((select id from talent order by id desc limit 1), 'Hello! I was born in Ukraine. My profession is Java Back-end developer. Now I`m developing a Java backend using Spring Boot.', 'I very like anime');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Java Core');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Hibernate');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Spring Boot');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Git');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'first_contact');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'second_contact');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'third_contact');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to first proof', 'DRAFT', '2022-08-07 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to second proof', 'HIDDEN', '2022-04-08 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to third proof', 'DRAFT', '2022-09-02 16:00:19');

insert into user_info (talent_id, login, password)
values ((select id from talent order by id desc limit 1), 'Shapoval@gmail.com', '$2a$10$XD60M86n1MDf3AMIixgnnOQq9JVYnnX/umlNFcre0GoC2XgSN/Cfq');
insert into user_authorities (user_id, authority_id)
values ((select id from user_info order by id desc limit 1),
       (select authority.id from authority where id = 1));

insert into talent (first_name, last_name, specialization, image)
values ('Pavlo', 'Datsenko', 'Java-Developer', null);
insert into talent_description (talent_id, BIO, addition_info)
values((select id from talent order by id desc limit 1), 'Hello! I was born in Ukraine. My profession is Java Back-end developer. Now I`m developing a Java backend using Spring Boot.', 'I`m a student ');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Java Core');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Spring Security');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Spring Core');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'first_contact');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'second_contact');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'third_contact');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to first proof', 'DRAFT', '2022-02-04 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to second proof', 'DRAFT', '2021-09-04 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to third proof', 'DRAFT', '2023-04-04 16:00:19');

insert into user_info (talent_id, login, password)
values ((select id from talent order by id desc limit 1), 'Datsenko@gmail.com', '$2a$10$tLm27FGH8Sabz57eNkTwm.bSnhmJHINcqt7dNfZI0NfOwD2o/Drse');
insert into user_authorities (user_id, authority_id)
values ((select id from user_info order by id desc limit 1),
       (select authority.id from authority where id = 1));

insert into talent (first_name, last_name, specialization, image)
values ('Ostap', 'Sokolov', 'Java-Developer', null);
insert into talent_description (talent_id, BIO, addition_info)
values((select id from talent order by id desc limit 1), 'Hello! I was born in Ukraine. My profession is Java Back-end developer. Now I`m developing a Java backend using Spring Boot.', 'I will get married soon');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Java Core');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'REST API');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'first_contact');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'second_contact');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'third_contact');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');

insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'Here I describe my rest api project in java', 'PUBLISHED', '2021-08-04 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to second proof', 'DRAFT', '2022-06-04 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to third proof', 'DRAFT', '2023-05-04 16:00:19');

insert into user_info (talent_id, login, password)
values ((select id from talent order by id desc limit 1), 'Sokolov@gmail.com', '$2a$10$X.d4hR.yRf3cK0Go20aTTukOI9u/Zu2cj5WU0iTcDihyhJ5vUHXkq');
insert into user_authorities (user_id, authority_id)
values ((select id from user_info order by id desc limit 1),
       (select authority.id from authority where id = 1));

insert into talent (first_name, last_name, specialization, image)
values ('Oleksandr', 'Tymchuk', 'Dev-Ops', null);
insert into talent_description (talent_id, BIO, addition_info)
values((select id from talent order by id desc limit 1), 'I am instructing a team that is currently writing my own biography for me.', 'He-he-he, hello everyone!');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_link (talent_id, link)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Git');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Docker');
insert into talent_talents (talent_id, talent_name)
values ((select id from talent order by id desc limit 1), 'Mentor');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'first_contact');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'second_contact');
insert into talent_contact (talent_id, contact)
values ((select id from talent order by id desc limit 1), 'third_contact');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');
insert into talent_attached_file (talent_id, attached_file)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ');

insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://github.com/ProvedCode', 'My project where I am a team mentor', 'PUBLISHED', '2023-02-08 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to second proof', 'DRAFT', '2021-03-03 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to third proof', 'DRAFT', '2023-09-05 16:00:19');

insert into user_info (talent_id, login, password)
values ((select id from talent order by id desc limit 1), 'Tymchuk@gmail.com', '$2a$10$J2Yuh10BWHy8XYk.T5rd2uOwk/h5EYG1eVXTAOkTkTdQcc5Qzd9.y');
insert into user_authorities (user_id, authority_id)
values ((select id from user_info order by id desc limit 1),
       (select authority.id from authority where id = 1));




insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'Here is my JavaScript library', 'PUBLISHED', '2023-06-04 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'Here is my main project in Angular', 'PUBLISHED', '2023-06-04 16:00:19');
insert into talent_proofs (talent_id, link, text, status, created)
values ((select id from talent order by id desc limit 1), 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'text to third proof', 'DRAFT', '2023-06-04 16:00:19');




