-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Out-2020 às 17:57
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entreterimento'),
(3, 'Política'),
(4, 'Saúde'),
(5, 'Infra Estrutura'),
(6, 'Economia'),
(7, 'Sociedade'),
(8, 'Futebol'),
(9, 'Educação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `noticia` text DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `noticia`, `titulo`, `codCategoria`, `codRedator`, `mes`, `ano`, `dia`) VALUES
(1, 'O presidente dos EUA, Donald Trump, votará no próximo sábado na Flórida, anunciou a Casa Branca nesta quinta-feira (22). \r\n\r\n\"O presidente Trump planeja votar no início do sábado em West Palm Beach, Flórida\", disse o porta-voz Judd Deere. \r\n\r\nA residência de Trump quando ele não está na Casa Branca é oficialmente na Flórida, onde ele possui dois grandes resorts de golfe, um deles em West Palm Beach. \r\n\r\nA eleição nos Estados Unidos, na qual Trump buscará a reeleição contra o candidato democrata Joe Biden, ocorrerá em 3 de novembro, mas os cidadãos podem votar antecipadamente em muitos estados. \r\n\r\nPrincipalmente por conta da pandemia, os números se multiplicaram este ano: mais de 45 milhões de americanos já votaram pelo correio ou pessoalmente, o que equivale a mais de 30% do total de votos em 2016, segundo o independente Elections Project.', 'Donald Trump votará este sábado na Flórida', 3, 2, 10, 2020, 7),
(2, 'Um prédio antigo de 7 mil toneladas em Xangai, na China, foi mudado de lugar graças a pernas robóticas instaladas na base do edifício. Na \"caminhada\", a estrutura percorreu 60 metros em 18 dias entre setembro e outubro. A edificação abrigava uma escola primária – o terreno vai dar lugar a um moderno centro comercial previsto para ficar pronto em 2023. Para não demolir o prédio construído em 1935, as autoridades decidiram mudá-lo de lugar.', 'Chineses mudam de lugar prédio de 7 mil toneladas;', 5, 1, 10, 2020, 12),
(3, 'Neste feriado de 12 de outubro os aeroportos brasileiros devem receber mais de 713 mil passageiros. Os aeroportos com maior movimentação devem ser o de Brasília, com 129 mil pessoas viajando, e o Santos Dumont (RJ), com 75 mil.\r\n\r\nA previsão é do Ministério do Turismo, que realizou levantamento a partir de consultas às empresas administradoras de aeroportos de todo o país. São Paulo, Rio de Janeiro, Recife e Fortaleza são os destinos mais buscados no feriado. Como foi o primeiro levantamento feito pelo Ministério do Turismo, não há comparação com outros feriados para aferir os impactos da pandemia e se esses números representam uma retomada. Mas a diferença pode ser medida com os números dos aeroportos da Infraero. Nestes devem passar 389.135 passageiros no feriado, segundo a empresa. A previsão de dias mais movimentos são hoje (9) e a próxima terça-feira (13). O número de passageiros deste ano representa 41% do registrado no ano passado, quando viajaram nos aeroportos da Infraero 941.411 pessoas.', 'Mais de 700 mil pessoas devem movimentar os aeroportos no feriado ', 7, 4, 10, 2020, 10),
(4, 'Neste momento de pandemia, os aeroportos e companhias aéreas permanecem sujeitas a protocolos estabelecidos pela Agência Nacional de Vigilância Sanitária (Anvisa) e pela Agência Nacional de Aviação Civil (Anac). Entre elas estão a observância do distanciamento de pelo menos dois metros, obrigação de uso de máscaras por passageiros, adoção de equipamentos de proteção individual por trabalhadores e higienização dos aeroportos e das aeronaves.', 'Pandemia', 4, 5, 10, 2020, 10),
(5, 'De acordo com o Boletim Epidemiológico do Ministério da Saúde divulgado ontem(8), o Brasil é o 3º país em número de casos, atrás da Índia (6,4 milhões) e Estados Unidos (7,3 milhões), ambos bem mais populosos. Já no ranking de mortes por covid-19, o Brasil ocupa a 2ª colocação, atrás dos Estados Unidos (208,7 mil).\r\n\r\nNa lista de incidência por países (casos por 1 milhão de habitantes), o Brasil está na 8ª posição, com 23,3 mil. Já no ranking de mortalidade (mortes por 1 milhão de habitantes, o país ficou na 3ª colocação (694,7), atrás apenas de Bélgica (867) e Peru (989).', 'Comparação internacional', 4, 3, 10, 2020, 10),
(6, 'Informe da Secretaria de Estado da Saúde divulgado nesta sexta-feira (9) relata mais 1.512 infecções e 25 mortes em decorrência da Covid-19 no Paraná. Os dados acumulados do monitoramento mostram que o Estado soma 187.610 casos e 4.692 mortos em decorrência da doença. Há ajuste de casos confirmados detalhados ao final do texto.\r\n\r\nINTERNADOS – Nesta sexta-feira, 830 pacientes com diagnósticos confirmados de Covid-19 estão internados. São 694 pacientes em leitos SUS (338 em UTI e 356 em enfermaria) e 136 em leitos da rede particular (59 em UTI e 77 em enfermaria).\r\n\r\nHá outros 916 pacientes internados, 373 em leitos UTI e 543 em enfermaria, que aguardam resultados de exames. Eles estão em leitos das redes pública e particular e são considerados casos suspeitos de infecção pelo Sars-CoV-2.\r\n\r\nÓBITOS – Os 25 pacientes que faleceram estavam internados. São 10 mulheres e 15 homens, com idades que variam de 34 a 89 anos. Os óbitos ocorreram entre os dias 13 de setembro e 9 de outubro.\r\n\r\nOs pacientes que foram a óbito residiam em Curitiba (8), Cascavel (2), Foz do Iguaçu (2), Pinhais (2). A Secretaria da Saúde  confirma também um óbito em cada um dos seguintes municípios: Apucarana, Arapongas, Bandeirantes, Ibema, Londrina, Mandaguari, Paraíso do Norte, Piraquara, Ponta Grossa, São José dos Pinhais e Sertanópolis.\r\n\r\nFORA DO PARANÁ – O monitoramento da Saúde registra 1.993 casos de residentes de fora, sendo que 44 pessoas foram a óbito.', 'Boletim registra 1.512 infecções e 25 mortes pela Covid-19', 4, 2, 10, 2020, 10),
(7, 'Uma operação conjunta, envolvendo Exército, Marinha e Aeronáutica, reuniu cerca de mil homens das três forças, com o apoio do Porta-Helicópteros Atlântico, nesta sexta-feira (9), no Rio de Janeiro. O exercício militar foi parte da Operação Poseidon e contou com as presenças do ministro da Defesa, general Fernando Azevedo e Silva, e do comandante da Marinha, almirante de esquadra Ilques Barbosa Júnior.\r\n\r\nA operação consistiu em adestrar pilotos do Exército e da Força Aérea à rotina operacional do porta helicópteros da Marinha, unificando procedimentos e linguagens. A missão era levar grupos de Forças Especiais ao teatro de operações em terra e posteriormente resgatá-los, trazendo as equipes à bordo em segurança.\r\n\r\n“Hoje é um dia especial, pois eu venho participar de um exercício conjunto, envolvendo a Marinha do Brasil, o Exército Brasileiro e a Força Aérea. Pela primeira vez colocamos em ação os helicópteros H-XBR [H 225M fabricado pela Helibras, versão do Super Puma da Airbus Helicopters], projeto que vem desde 2008. Testamos a mesma aeronave das três forças, pousando e se adestrando ao navio. Outro objetivo foi ter as tropas de Forças Especiais agindo conjuntamente, da Marinha, do Exército e da Força Aérea”, disse o ministro, durante coletiva de imprensa em alto mar.', 'Exercício militar reúne mil homens no Rio de Janeiro', 7, 5, 10, 2020, 10),
(8, 'Vasco e Flamengo entram em campo neste sábado, às 17h (horário de Brasília), em São Januário, em momentos completamente distintos. O Clássico dos Milhões abre a 15ª rodada do Campeonato Brasileiro e, mesmo sem público, o estádio de São Januário vai ferver. O Gigante da Colina vem de quatro jogos sem vencer na competição, sendo um empate e três derrotas. Sofreu sete gols nos últimos dois jogos e marcou apenas um. Para piorar, o clube demitiu o técnico Ramon Menezes e toda a comissão técnica após perder para o Bahia na última quarta-feira (7). Como se não bastasse, o Vasco está há menos de um mês da eleição presidencial, e a tensão política cresce a cada momento. Do lado Rubro-Negro a situação é completamente diferente. Na terceira posição do Brasileiro e com duas vitórias consecutivas, o técnico Doménec acertou a equipe e o atual campeão já ameaça o líder Atlético-MG, que está três pontos na frente.', 'Vasco e Flamengo se enfrentam em momentos distintos no Brasileirão', 8, 4, 10, 2020, 10),
(9, 'A seleção brasileira estreou da melhor forma possível pelas Eliminatórias Sul-Americana para a Copa do Mundo do Catar (2022), jogou bem e goleou a Bolívia por 5 a 0 em partida realizada nesta sexta (9) na Neo Química Arena, em São Paulo. Com a vitória o Brasil assumiu a liderança das Eliminatórias Sul-Americanas com os mesmos três pontos de Colômbia (2º), Uruguai (3º) e Argentina (4º), mas com ampla vantagem no saldo de gols.', 'Seleção estreia nas Eliminatórias com goleada de 5 a 0 sobre a Bolívia', 8, 4, 5, 2020, 10),
(10, 'O tenista número um do mundo, Novak Djokovic, resistiu resolutamente aos ataques do grego Stefanos Tsitsipas para conquistar uma vitória por 3 sets a 2 (parciais de 6-3, 6-2, 5-7, 4-6 e 6-1) em uma disputa emocionante, nesta sexta-feira (9), para avançar para a final do torneio de Roland Garros. O sérvio enfrentará na decisão Rafael Nadal (que nesta sexta derrotou o argentino Diego Schwartzman por 3 sets a 0), 12 vezes campeão do aberto da França, em outro confronto de dar água na boca, no próximo domingo (11), com o espanhol em busca de igualar o recorde de Roger Federer de 20 títulos de Grand Slam.', 'Djokovic supera Tsitsipas e disputa final de Roland Garros com Nadal', 1, 5, 10, 2020, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `ddd`, `telefone`, `cidade`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'Luana', 'Rocha', 'luana@gmail.com', 11, '11111-2222', 'Mauá', 1, 3, 10, 1992),
(2, 'Alana', 'Catarina', 'alana@gmail.com', 11, '98267-1360', 'Ribeirão Pires', 5, 17, 3, 2000),
(3, 'Jaqueline ', 'Stefany', 'jaqueline@gmail.com', 11, '98508-1026', 'Mauá', 2, 5, 5, 1993),
(4, 'Thales', 'Edson', 'thales@gmail.com', 11, '99913-0400', 'Santo André', 6, 15, 4, 1990),
(5, 'Pietro', 'Cauã', 'pietro@gmail.com', 11, '99263-5968', 'Ribeirão Pires', 3, 18, 4, 1990);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`),
  ADD KEY `dia` (`dia`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
