
1.

create table users_base(
id serial primary key,
name varchar(50), 
pwd varchar(50), 
email varchar(50), 
gender varchar(10)
);

INSERT INTO users_base (name, pwd, email, gender) values 
('Vasya', '21341234qwfsdf', 'mmm@mmail.com', 'm'), 
('Alex', '21341234', 'mmm@gmail.com', 'm'), 
('Alexey', 'qq21341234Q', 'alexey@gmail.com', 'm'), 
('Helen', 'MarryMeeee', 'hell@gmail.com', 'f'),
('Jenny', 'SmakeMyb', 'eachup@gmail.com', 'f'), 
('Lora', 'burn23', 'tpicks@gmail.com', 'f');


select * from users_base;

 id |  name  |      pwd       |      email       | gender
----+--------+----------------+------------------+--------
  1 | Vasya  | 21341234qwfsdf | mmm@mmail.com    | m
  2 | Alex   | 21341234       | mmm@gmail.com    | m
  3 | Alexey | qq21341234Q    | alexey@gmail.com | m
  4 | Helen  | MarryMeeee     | hell@gmail.com   | f
  5 | Jenny  | SmakeMyb       | eachup@gmail.com | f
  6 | Lora   | burn23         | tpicks@gmail.com | f
(6 rows)


2.

SELECT CONCAT('This is ', name, ', ', CASE WHEN gender = 'm' THEN 'he' ELSE 'she' END, ' has email ', email) AS info FROM users_base;

                     info
-----------------------------------------------
 This is Vasya, he has email mmm@mmail.com
 This is Alex, he has email mmm@gmail.com
 This is Alexey, he has email alexey@gmail.com
 This is Helen, she has email hell@gmail.com
 This is Jenny, she has email eachup@gmail.com
 This is Lora, she has email tpicks@gmail.com
(6 rows)

3.

SELECT 'We have ' || COUNT(*) || ' boys!' AS "Gender information:"
FROM users_base
WHERE gender = 'm'
UNION ALL
SELECT 'We have ' || COUNT(*) || ' girls!' AS "Gender information:"
FROM users_base
WHERE gender = 'f';


 Gender information:
---------------------
 We have 3 boys!
 We have 3 girls!
(2 rows)


4.
 id |  name   | info
----+---------+------
  1 | animals |
  2 | school  |
  3 | nature  |
  4 | human   |
  5 | SF      |
(5 rows)


 id |   word    | vocabulary_id
----+-----------+---------------
  1 | turtle    |             1
  2 | pig       |             1
  3 | dog       |             1
  4 | cat       |             1
  5 | lizard    |             1
  6 | cow       |             1
  7 | rabbit    |             1
  8 | frog      |             1
  9 | headgehog |             1
 10 | goat      |             1
 11 | desk      |             2
 12 | book      |             2
 13 | chalk     |             2
 14 | pen       |             2
 15 | pencil    |             2
 16 | copybook  |             2
 17 | lesson    |             2
 18 | teacher   |             2
 19 | pupils    |             2
 20 | school    |             2
 21 | ray       |             3
 22 | thunder   |             3
 23 | sun       |             3
 24 | field     |             3
 25 | hill      |             3
 26 | mountain  |             3
 27 | river     |             3
 28 | forest    |             3
 29 | grass     |             3
 30 | rain      |             3
 31 | hair      |             4
 32 | nail      |             4
 33 | finger    |             4
 34 | eye       |             4
 35 | tooth     |             4
 36 | knee      |             4
 37 | elbow     |             4
 38 | leg       |             4
 39 | arm       |             4
 40 | head      |             4
 41 | engine    |             5
 42 | steel     |             5
 43 | power     |             5
 44 | nuclear   |             5
 45 | shotgun   |             5
 46 | laser     |             5
 47 | flight    |             5
 48 | energy    |             5
 49 | Moon      |             5
 50 | splace    |             5
(50 rows)


5.
SELECT v.name, COUNT(w.id) AS words
FROM vocabulary v
JOIN word w ON v.id = w.vocabulary_id
GROUP BY v.name;

  name   | words
---------+-------
 animals |    10
 school  |    10
 SF      |    10
 human   |    10
 nature  |    10
(5 rows)
