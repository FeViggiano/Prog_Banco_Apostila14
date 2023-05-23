--UPDATE tb_pessoa SET saldo = -100 WHERE cod_pessoa = 1;


-- INSERT INTO tb_pessoa
-- (nome, idade, saldo)
-- VALUES
-- ('João', 20, 100),
-- ('Pedro', 22, -100),
-- ('Maria', 22, 400);

-- SELECT * FROM tb_pessoa;

-- CREATE TRIGGER tg_validador_de_saldo
-- BEFORE INSERT OR UPDATE ON tb_pessoa
-- FOR EACH ROW
-- 	EXECUTE PROCEDURE fn_validador_de_saldo()



-- CREATE OR REPLACE FUNCTION fn_validador_de_saldo()
-- RETURNS TRIGGER
-- LANGUAGE plpgsql AS $$
-- BEGIN
-- se o saldo do NEW for pelo menos zero
-- confirmo a operação (ou seja, devolvo NEW)
-- senão, faço um RAISE
-- e devolvo null
-- 	IF NEW.saldo >= 0 THEN
-- 		RETURN NEW;
-- 	ELSE
-- 		RAISE NOTICE 'Valor de saldo R$% inválido', NEW.saldo;
-- 		RETURN NULL;
-- 	END IF;

-- END;
-- $$

-- CREATE TABLE IF NOT EXISTS tb_pessoa(
-- 	cod_pessoa SERIAL PRIMARY KEY,
-- 	nome VARCHAR(200) NOT NULL,
-- 	idade INT NOT NULL,
-- 	saldo NUMERIC(10, 2) NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS tb_auditoria(
-- 	cod_auditoria SERIAL PRIMARY KEY,
-- 	cod_pessoa INT NOT NULL,
-- 	idade INT NOT NULL,
-- 	saldo_antigo NUMERIC(10, 2),
-- 	saldo_atual NUMERIC(10, 2)

-- );