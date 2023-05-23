--INSERT INTO tb_teste_trigger(texto) VALUES ('teto qualquer');


-- CREATE OR REPLACE FUNCTION
-- 	fn_antes_de_um_insert() RETURNS TRIGGER
-- LANGUAGE plpgsql
-- AS $$
-- BEGIN
-- 	RAISE NOTICE 'Estamos no trigger BEFORE';
-- 	RAISE NOTICE 'OLD: %', OLD;
-- 	RAISE NOTICE 'NEW: %', NEW;
-- 	RAISE NOTICE 'OLD.texto: %', OLD.texto;
-- 	RAISE NOTICE 'NEW.texto: %', NEW.texto;
-- 	RAISE NOTICE 'TG_NAME: %', TG_NAME;
-- 	RAISE NOTICE 'TG_LEVEL: %', TG_LEVEL;
-- 	RAISE NOTICE 'TG_WHEN: %', TG_WHEN;
-- 	RAISE NOTICE 'TG_TABLE_NAME: %', TG_TABLE_NAME;
-- 	RAISE NOTICE 'TG_NARGS: %', TG_NARGS;
-- 	FOR i IN 0..TG_NARGS - 1 LOOP
-- 		RAISE NOTICE '%', TG_ARGV[i]
-- 	END LOOP;
-- 	RETURN NEW
-- END;
-- $$
	


-- CREATE OR REPLACE TRIGGER tg_depois_do_insert
-- BEFORE INSERT OR UPDATE ON tb_teste_trigger
-- FOR EACH STATEMENT
-- 	EXECUTE PROCEDURE
-- 		fn_antes_de_um_insert('Depois: V1', 'Depois: V2', 'Depois: V3');


-- DROP TRIGGER tg_antes_do_insert ON tb_teste_trigger;
-- CREATE OR REPLACE TRIGGER tg_antes_do_insert
-- BEFORE INSERT OR UPDATE ON tb_teste_trigger
-- FOR EACH STATEMENT
-- 	EXECUTE PROCEDURE
-- 		fn_antes_de_um_insert('Antes: V1', 'Antes: V2');


-- SELECT * FROM tb_teste_trigger_cod_teste_trigger_seq

-- ALTER SEQUENCE tb_teste_trigger_cod_teste_trigger_seq
-- RESTART WITH 1;


-- CREATE OR REPLACE TRIGGER tg_depois_do_insert2
-- AFTER INSERT ON tb_teste_trigger
-- FOR EACH STATEMENT
-- 	EXECUTE FUNCTION fn_depois_de_um_insert();


-- CREATE OR REPLACE TRIGGER tg_antes_do_insert2
-- BEFORE INSERT ON tb_teste_trigger
-- FOR EACH STATEMENT
-- 	EXECUTE PROCEDURE fn_antes_de_um_insert();



-- INSERT INTO tb_teste_trigger(texto) VALUES ('teste tg');

-- CREATE OR REPLACE TRIGGER tg_depois_do_insert
-- AFTER INSERT ON tb_teste_trigger
-- FOR STATEMENT
-- 	EXECUTE FUNCTION fn_depois_de_um_insert();
	
	
	
	
-- CREATE OR REPLACE FUNCTION fn_depois_de_um_insert()
-- RETURNS TRIGGER
-- LANGUAGE plpgsql AS $$
-- BEGIN 
-- 	RAISE NOTICE 'Trigger foi chamado depois do INSERT';
-- 	RETURN NULL;
-- END;
-- $$




-- CREATE TABLE tb_teste_trigger(
-- 	cod_teste_trigger SERIAL PRIMARY KEY,
-- 	texto VARCHAR(200)
-- );

-- CREATE OR REPLACE FUNCTION fn_antes_de_um_insert ()
-- 	RETURNS TRIGGER
-- LANGUAGE plpgsql
-- AS $$
-- BEGIN 
-- 	RAISE NOTICE 'Trigger foi chamado antes de um insert';
-- 	RETURN NULL;
-- END;
-- $$

-- CREATE OR REPLACE TRIGGER tg_antes_do_insert
-- BEFORE INSERT ON tb_teste_trigger
-- FOR EACH STATEMENT
-- 	EXECUTE PROCEDURE fn_antes_de_um_insert();
	
-- INSERT INTO tb_teste_trigger(texto)
-- VALUES ('Testando trigger...');