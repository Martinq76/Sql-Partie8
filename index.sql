SOURCE 'bdd.sql';

use development;

SELECT languages.name, frameworks.name FROM languages LEFT JOIN frameworks ON languages.id = frameworks.languagesId;

SELECT languages.name, frameworks.name FROM languages INNER JOIN frameworks ON languages.id = frameworks.languagesId;

SELECT languages.name, COUNT(frameworks.name) FROM languages LEFT JOIN frameworks ON languages.id = frameworks.languagesId GROUP BY languages.name HAVING COUNT(frameworks.name);

SELECT languages.name, COUNT(frameworks.name) FROM languages LEFT JOIN frameworks ON languages.id = frameworks.languagesId GROUP BY languages.name HAVING COUNT(frameworks.name) > 3;