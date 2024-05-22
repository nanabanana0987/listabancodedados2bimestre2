-- Inserir Novo Livro
INSERT INTO Livros (titulo, autor, ano_publicacao, disponibilidade, categoria, ISBN, editora, num_paginas, idioma)
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');

-- Inserir Múltiplos Livros
INSERT INTO Livros (titulo, autor, ano_publicacao, disponibilidade, categoria, ISBN, editora, num_paginas, idioma)
VALUES 
('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, TRUE, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, TRUE, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, TRUE, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');

-- Inserir Livro com Categoria Específica
INSERT INTO Livros (titulo, autor, ano_publicacao, disponibilidade, categoria, ISBN, editora, num_paginas, idioma)
VALUES ('História Fictícia', 'Autor Fictício', 2020, TRUE, 'História', '000-0000000000', 'Editora Fictícia', 300, 'Português');

-- Atualizar Disponibilidade para livros anteriores a 2000
UPDATE Livros
SET disponibilidade = FALSE
WHERE ano_publicacao < 2000;

-- Atualizar Editora para "Plume Books" para o livro "1984"
UPDATE Livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

-- Atualizar Idioma para "Inglês" para livros da editora "Penguin Books"
UPDATE Livros
SET idioma = 'Inglês'
WHERE editora = 'Penguin Books';

-- Atualizar Título para "Harry Potter e a Pedra Filosofal (Edição Especial)"
UPDATE Livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE ISBN = '978-0439708180';

-- Deletar por Categoria "Terror"
DELETE FROM Livros
WHERE categoria = 'Terror';

-- Deletar por Idioma e Ano
DELETE FROM Livros
WHERE idioma = 'Francês' AND ano_publicacao < 1970;

-- Deletar Livro Específico
DELETE FROM Livros
WHERE titulo = 'As Crônicas de Nárnia';

-- Deletar por Editora "Penguin Books"
DELETE FROM Livros
WHERE editora = 'Penguin Books';

-- Selecionar com WHERE (Páginas > 500)
SELECT * FROM Livros
WHERE num_paginas > 500;

-- Selecionar com GROUP BY (Contagem por Categoria)
SELECT categoria, COUNT(*) AS quantidade FROM Livros
GROUP BY categoria;

-- Selecionar com LIMIT (5 primeiros livros adicionados)
SELECT * FROM Livros
LIMIT 5;

-- Selecionar com SUM e COUNT (Total e Média de Páginas em "Drama")
SELECT SUM(num_paginas) AS total_paginas, AVG(num_paginas) AS media_paginas FROM Livros
WHERE categoria = 'Drama';

-- Selecionar com AVG (Média de Ano de Publicação para livros disponíveis)
SELECT AVG(ano_publicacao) AS media_ano_publicacao FROM Livros
WHERE disponibilidade = TRUE;

-- Selecionar com MAX e MIN (Livro mais recente e mais antigo)
SELECT MAX(ano_publicacao) AS ano_mais_recente, MIN(ano_publicacao) AS ano_mais_antigo FROM Livros;

-- Selecionar com ORDER BY (Ordem decrescente por Ano de Publicação)
SELECT * FROM Livros
ORDER BY ano_publicacao DESC;

-- Selecionar com UNION (Títulos em Inglês e Português)
(SELECT titulo FROM Livros WHERE idioma = 'Inglês')
UNION
(SELECT titulo FROM Livros WHERE idioma = 'Português');

-- Selecionar Livros de um Autor Específico (George Orwell)
SELECT * FROM Livros
WHERE autor = 'George Orwell';

