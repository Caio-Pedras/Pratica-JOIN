-- Questão 1:
SELECT users.id, users.name, cities.name AS city
FROM users
JOIN cities ON users."cityId" =cities.id
WHERE cities.name = 'Rio de Janeiro';

-- Questão 2:
SELECT testimonials.id, user1.name AS writer, user2.name AS recipient ,testimonials.message
FROM testimonials
JOIN  users user1 ON testimonials."writerId" = user1.id
JOIN  users user2 ON testimonials."recipientId" = user2.id

-- Questão 3:
SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate" 
FROM educations
JOIN users ON educations."userId" = users.id
JOIN courses ON educations."courseId" = courses.id
JOIN schools ON educations."schoolId" = schools.id
WHERE users.id = 30

-- Questão 4:
SELECT users.id, users.name, r.name AS role, companies.name AS company, experiences."startDate" 
FROM experiences 
JOIN users ON experiences."userId" = users.id
JOIN roles r ON experiences."roleId" = r.id
JOIN companies ON experiences."companyId" = companies.id
WHERE users.id=50
AND experiences."endDate" IS NULL