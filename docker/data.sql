-- -----------------------------------------------------
-- Schema full-stack-sportscenter
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS `sportscenter`;

USE `sportscenter` ;

-- Drop existing tables if they exist
DROP TABLE IF EXISTS Brand;
DROP TABLE IF EXISTS Type;
DROP TABLE IF EXISTS Product;

-- Create the Brand table
CREATE TABLE `Brand` (
                         `Id` INT AUTO_INCREMENT PRIMARY KEY,
                         `Name` VARCHAR(255) NOT NULL
);

-- Insert data into the Brand table
INSERT INTO Brand (Name) VALUES
                             ('Adidas'),
                             ('ASICS'),
                             ('Victor'),
                             ('Yonex'),
                             ('Puma'),
                             ('Nike'),
                             ('Babolat');

-- Create the Type table
CREATE TABLE `Type` (
                        `Id` INT AUTO_INCREMENT PRIMARY KEY,
                        `Name` VARCHAR(255) NOT NULL
);

-- Insert data into the Type table
INSERT INTO Type (Name) VALUES
                            ('Shoes'),
                            ('Rackets'),
                            ('Football'),
                            ('Kit Bags');

-- Create the Product table
CREATE TABLE `Product` (
                           `Id` INT AUTO_INCREMENT PRIMARY KEY,
                           `Name` VARCHAR(255) NOT NULL,
                           `Description` TEXT,
                           `Price` DECIMAL(10, 2) NOT NULL,
                           `PictureUrl` VARCHAR(255),
                           `ProductTypeId` INT NOT NULL,
                           `ProductBrandId` INT NOT NULL,
                           FOREIGN KEY (`ProductTypeId`) REFERENCES `Type`(`Id`),
                           FOREIGN KEY (`ProductBrandId`) REFERENCES `Brand`(`Id`)
);

-- Insert data into the Product table
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES
                                                                                              ('Adidas Quick Force Indoor Badminton Shoes', 'Projetado para jogadores profissionais e amadores de badminton. Estes sapatos indoor são fabricados com parte superior sintética que proporciona um ajuste natural, enquanto a entressola de EVA oferece amortecimento leve. Os sapatos podem ser usados para Badminton e Squash.', 3500, 'images/Product/adidas_shoe-1.png', 1, 1),
                                                                                              ('Adidas Quick Force Indoor Badminton Shoes', 'Projetado para jogadores profissionais e amadores de badminton. Estes sapatos indoor são fabricados com parte superior sintética que proporciona um ajuste natural, enquanto a entressola de EVA oferece amortecimento leve. Os sapatos podem ser usados para Badminton e Squash.', 3375, 'images/Product/adidas_shoe-2.png', 1, 1),
                                                                                              ('Adidas Quick Force Indoor Badminton Shoes', 'Projetado para jogadores profissionais e amadores de badminton. Estes sapatos indoor são fabricados com parte superior sintética que proporciona um ajuste natural, enquanto a entressola de EVA oferece amortecimento leve. Os sapatos podem ser usados para Badminton e Squash.', 3375, 'images/Product/adidas_shoe-3.png', 1, 1),
                                                                                              ('Asics Gel Rocket 8 Indoor Court Shoes', 'Os Asics Gel Rocket 8 Indoor Court Shoes (Laranja/Prata) vão mantê-lo motivado e pronto para performar no seu pico no vôlei, squash e outros esportes indoor. Jogadores iniciantes e intermediários têm tecnologias de ponta a um preço acessível. Este modelo de entrada é durável e oferece muita estabilidade.', 4249, 'images/Product/asics_shoe-1.png', 1, 2),
                                                                                              ('Asics Gel Rocket 8 Indoor Court Shoes', 'Os Asics Gel Rocket 8 Indoor Court Shoes (Laranja/Prata) vão mantê-lo motivado e pronto para performar no seu pico no vôlei, squash e outros esportes indoor. Jogadores iniciantes e intermediários têm tecnologias de ponta a um preço acessível. Este modelo de entrada é durável e oferece muita estabilidade.', 3499, 'images/Product/asics_shoe-2.png', 1, 2),
                                                                                              ('Asics Gel Rocket 8 Indoor Court Shoes', 'Os Asics Gel Rocket 8 Indoor Court Shoes (Laranja/Prata) vão mantê-lo motivado e pronto para performar no seu pico no vôlei, squash e outros esportes indoor. Jogadores iniciantes e intermediários têm tecnologias de ponta a um preço acessível. Este modelo de entrada é durável e oferece muita estabilidade.', 3499, 'images/Product/asics_shoe-3.png', 1, 2),
                                                                                              ('Victor SHW503 F Badminton Shoes', 'Couro PU, Malha, EVA, ENERGY MAX, Folha de nylon, Borracha.', 2392, 'images/Product/victor_shoe-1.png', 1, 3),
                                                                                              ('Victor SHW503 F Badminton Shoes', 'Couro PU, Malha, EVA, ENERGY MAX, Folha de nylon, Borracha.', 3000, 'images/Product/victor_shoe-2.png', 1, 3),
                                                                                              ('YONEX Super Ace Light Badminton Shoes', 'Domine o jogo com o Super Ace Light, destaca-se pela absorção máxima de choque, rápida recuperação da compressão. Sua alta resiliência garante que as palmilhas YONEX mantenham sua forma por mais tempo. Minuciosamente contornado para conforto. Proporciona estabilidade nas áreas dianteira do pé e dedos.', 2590, 'images/Product/yonex_shoe-1.png', 1, 4),
                                                                                              ('YONEX Super Ace Light Badminton Shoes', 'Domine o jogo com o Super Ace Light, destaca-se pela absorção máxima de choque, rápida recuperação da compressão. Sua alta resiliência garante que as palmilhas YONEX mantenham sua forma por mais tempo. Minuciosamente contornado para conforto. Proporciona estabilidade nas áreas dianteira do pé e dedos.', 3500, 'images/Product/yonex_shoe-2.png', 1, 4),
                                                                                              ('YONEX Super Ace Light Badminton Shoes', 'Domine o jogo com o Super Ace Light, destaca-se pela absorção máxima de choque, rápida recuperação da compressão. Sua alta resiliência garante que as palmilhas YONEX mantenham sua forma por mais tempo. Minuciosamente contornado para conforto. Proporciona estabilidade nas áreas dianteira do pé e dedos.', 3700, 'images/Product/yonex_shoe-3.png', 1, 4),
                                                                                              ('Puma 19 FH Rubber Spike Cricket Shoes', 'Com características e funções projetadas para suportar longas horas no campo, esses sapatos de borracha one8 19 FH foram desenvolvidos para oferecer conforto aos jogadores de críquete.', 4999, 'images/Product/puma_shoe-1.png', 1, 5),
                                                                                              ('Puma 19 FH Rubber Spike Cricket Shoes', 'Com características e funções projetadas para suportar longas horas no campo, esses sapatos de borracha one8 19 FH foram desenvolvidos para oferecer conforto aos jogadores de críquete.', 5200, 'images/Product/puma_shoe-2.png', 1, 5),
                                                                                              ('Puma 19 FH Rubber Spike Cricket Shoes', 'Com características e funções projetadas para suportar longas horas no campo, esses sapatos de borracha one8 19 FH foram desenvolvidos para oferecer conforto aos jogadores de críquete.', 5700, 'images/Product/puma_shoe-3.png', 1, 5),
                                                                                              ('Babolat Shadow Spirit Mens Badminton Shoes (Cloisonne/Strike)', 'Sapatos de badminton masculinos Babolat Shadow Spirit (Cloisonne/Strike).', 4125, 'images/Product/babolat_shoe-1.png', 1, 7),
                                                                                              ('Babolat Shadow Tour Mens Badminton Shoes (White/Blue)', 'Sapatos de badminton masculinos Babolat Shadow Tour (Branco/Azul).', 5249, 'images/Product/babolat_shoe-2.png', 1, 7),
                                                                                              ('Babolat Shadow Team Womens Badminton Shoes (Black/Peony)', 'Sapatos de badminton femininos Babolat Shadow Team (Preto/Peônia).', 2999, 'images/Product/babolat_shoe-3.png', 1, 7),
                                                                                              ('Yonex VCORE Pro 100 A Tennis Racquet (270gm, Strung)', 'Para jogadores ofensivos que buscam ganhar com spin e potência transformadores.', 6099, 'images/Product/yonex-racket-1.png', 2, 4),
                                                                                              ('Yonex VCORE Pro 100 A Tennis Racquet (290gm, Strung)', 'Para jogadores ofensivos que buscam ganhar com spin e potência transformadores.', 6399, 'images/Product/yonex-racket-2.png', 2, 4),
                                                                                              ('Yonex VCORE Pro 100 2019 Tennis Racquet (280gm, Unstrung)', 'Para jogadores ofensivos que buscam ganhar com spin e potência transformadores.', 13299, 'images/Product/yonex-racket-3.png', 2, 4),
                                                                                              ('Babolat Boost D Tennis Racquet (260gm, Strung)', 'Raquete de tênis Babolat Boost D (260gm, Strung).', 6999, 'images/Product/babolat-racket-1.png', 2, 7),
                                                                                              ('Buy Babolat Pure Aero 2019 Superlite Tennis Racquet (Unstrung, 255gm) and get Free Stringing with Babolat RPM Blast String!!', 'Raquete de tênis Babolat Pure Aero 2019 Superlite (Unstrung, 255gm) e ganhe Encordoamento Grátis com Babolat RPM Blast String!!', 13000, 'images/Product/babolat-racket-2.png', 2, 7),
                                                                                              ('Babolat Pure Drive VS Tennis Racquet (Pair, 300gm, Strung)', 'Raquete de tênis Babolat Pure Drive VS (Par, 300gm, Strung).', 34000, 'images/Product/babolat-racket-3.png', 2, 7),
                                                                                              ('Adidas FIFA World Cup 2018 OMB Football (White/Red/Black)','Apresenta um design inovador de painel de superfície, este é o bola oficial usada durante a Copa do Mundo da FIFA™. Inspirado nas paisagens urbanas da Rússia, um gráfico pixelado presta homenagem à icônica bola Telstar. Sua superfície termicamente unida oferece design sem costuras.',
                                                                                               2499, 'images/Product/adidas_football-1.png', 3, 1),
                                                                                              ('Adidas FIFA World Cup 2018 OMB Football', 'Apresenta um design inovador de painel de superfície, este é o bola oficial usada durante a Copa do Mundo da FIFA™. Inspirado nas paisagens urbanas da Rússia, um gráfico pixelado presta homenagem à icônica bola Telstar. Sua superfície termicamente unida oferece design sem costuras.',
                                                                                               3200, 'images/Product/adidas_football-2.png', 3, 1),
                                                                                              ('Adidas FIFA World Cup Top Glider Ball', 'Apresenta um design inovador de painel de superfície, este é o bola oficial usada durante a Copa do Mundo da FIFA™. Inspirado nas paisagens urbanas da Rússia, um gráfico pixelado presta homenagem à icônica bola Telstar. Sua superfície termicamente unida oferece design sem costuras.',
                                                                                               2499, 'images/Product/adidas_football-3.png', 3, 1),
                                                                                              ('Nike Pitch Premier League Football (Yellow/Purple)', 'Bola Nike Pitch Premier League (Amarelo/Roxo) é feita com gráficos coloridos que se destacam no campo para um rastreamento mais fácil da bola. Sua cobertura TPU costurada à máquina oferece excelente toque e durabilidade durante o jogo.', 1525, 'images/Product/Nike-Football-1.png', 3, 6),
                                                                                              ('Nike Manchester City Supporters Football (Berry)', 'Bola Nike Manchester City Supporters (Berry) é feita com gráficos coloridos que se destacam no campo para um rastreamento mais fácil da bola. Sua cobertura TPU costurada à máquina oferece excelente toque e durabilidade durante o jogo.', 1525, 'images/Product/Nike-Football-2.png', 3, 6),
                                                                                              ('Nike Mercurial Veer Football (White/Green/Black)', 'Bola Nike Mercurial Veer (Branco/Verde/Preto) é feita com gráficos coloridos que se destacam no campo para um rastreamento mais fácil da bola. Sua cobertura TPU costurada à máquina oferece excelente toque e durabilidade durante o jogo.', 1450, 'images/Product/Nike-Football-3.png', 3, 6),
                                                                                              ('Babolat Team Line Racket 12 Kit Bag (Fluorescent Red)', 'A bolsa de raquete Babolat Team Line é altamente durável e fashion, comportando até 12 raquetes.', 4550, 'images/Product/babolat-kitback-1.png', 4, 7),
                                                                                              ('Babolat Pure Strike RH X12 Kit Bag (White/Red)', 'A Bolsa Babolat Pure Strike 12-Pack irá manter a maioria dos seus equipamentos necessários para ser bem sucedido na quadra.', 9799, 'images/Product/babolat-kitback-2.png', 4, 7),
                                                                                              ('Babolat Team Line 12 Racquet Kit Bag (Silver)', 'Bolsa de Raquete Babolat Team Line 12 (Prata) para jogadores que têm tênis no sangue, a Babolat traz para você a Bolsa de Tênis Babolat Team Line India - Babolat Team Line Red 12 Pack.', 4550, 'images/Product/babolat-kitback-3.png', 4, 7),
                                                                                              ('Yonex SUNR 4826TK BT6-SR Badminton Kit Bag (Black/Red/White)', 'Bolsa de Raquete Yonex SUNR 4826TK BT6-SR Badminton (Preto/Vermelho/Branco).', 1999, 'images/Product/yonex-kitback-1.png', 4, 4),
                                                                                              ('Yonex SUNR LRB05 MS BT6 S Badminton Kit Bag (Blue/Red)', 'Bolsa de Raquete Yonex SUNR LRB05 MS BT6 S Badminton (Azul/Vermelho).', 1499, 'images/Product/yonex-kitback-2.png', 4, 4),
                                                                                              ('Yonex SUNR LRB05 MS BT6 S Badminton Kit Bag (Grey/Orange)', 'Bolsa de Raquete Yonex SUNR LRB05 MS BT6 S Badminton (Cinza/Laranja).', 1499, 'images/Product/yonex-kitback-3.png', 4, 4);

