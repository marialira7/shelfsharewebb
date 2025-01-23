-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 23-Jan-2025 às 15:57
-- Versão do servidor: 8.3.0
-- versão do PHP: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `shelfshare`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int NOT NULL,
  `genero` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `genero`) VALUES
(1, 'Acadêmico'),
(2, 'Drama'),
(3, 'Ficção'),
(4, 'Romance '),
(5, 'Terror'),
(6, 'Tecnologia'),
(7, 'LGBTQIA+'),
(8, 'Gastronomia'),
(9, 'Infantil'),
(10, 'Suspense'),
(11, 'Autoajuda'),
(12, 'Poemas'),
(13, 'Ação e Aventura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id` int NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `genero` int NOT NULL,
  `descricao` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `capa` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id`, `title`, `author`, `genero`, `descricao`, `capa`, `user_id`) VALUES
(7, 'Amor doce', 'madu', 3, '123', '67913242c49ea', 7),
(9, 'livro', 'livro', 1, '123', '679266b37a3b3', 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `senha` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `email`, `telefone`, `senha`) VALUES
(1, 'gsoaresslv', 'guigamergg94@gmail.com', '27 998513127', '1234'),
(2, 'marialira', 'marialiramoreira7@gmail.com', '27 997020818', '1234'),
(5, 'annaajuliaft', 'annaajuliaft@gmail.com', '27 999016433', '1234'),
(6, 'martamendes', 'marta.mendes.ifes@gmail.com', '', '1234'),
(7, 'Madu', 'rapha@gmail.comm', '123', '$2y$10$lkE7uLcRXr71W/wRyVXscezGzGqbJJsXBN.zjYeuP2p/Eqs.h01u6'),
(8, '20221TIIMI0033', 'rapha1@gmail.com', '123', '$2y$10$zBvZvHBk3JidzjS1s/5w6uEIk3GawbBojFy/ZOO9z4iwTi4dXWRlS'),
(9, 'root', 'luli@gmail.com', '65432', '$2y$10$5ilZZc59ZuVAW/w0AWPM3u7x8hoiJEohbdtMe7v60WQ4qHbmUBdmO'),
(10, 'camila garcia', 'camila@gmail.com', '27997020814', '$2y$10$kPDOWywE0B6x6hLzsc3pZ.oyObve7lVh5iODMn/9fQVnEJwweFDkG'),
(11, 'root', '3123@gmail.com', '123', '$2y$10$jkXdd3d7tJo/av5VFcEJWOWfSTdfgzSLBGGLF9Cl1FqH/YQy9xhJW');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
