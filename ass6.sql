--select extract(month from Now());

--SELECT position( 'b' in 'abcbcb');  -- for two parameter 
                                    -- first occurence dega
                                    
  SELECT INSTR4('abcb', 'b', 1) 

 
--  CREATE OR REPLACE FUNCTION instr4(p_str VARCHAR, p_substr VARCHAR, 
--      p_start INT, p_occurrence INT)
--   RETURNS integer AS $$
--   DECLARE
--     v_str   VARCHAR DEFAULT p_str;
--     v_pos0  INT DEFAULT 0;
--     v_pos   INT DEFAULT 0;
--     v_found INT DEFAULT p_occurrence;
--   BEGIN
--     IF p_start >= 1 THEN
--       v_str = SUBSTR(p_str, p_start);
--       v_pos0 = p_start;
--     END IF;
 
--     WHILE 1=1 LOOP
-- 	-- Find the next occurrence
-- 	v_pos = POSITION(p_substr IN v_str);
 
-- 	-- Nothing found
-- 	IF v_pos IS NULL OR v_pos = 0 THEN
-- 	  RETURN v_pos;
-- 	END IF;
 
-- 	-- The required occurrence found
-- 	IF v_found = 1 THEN
-- 	  EXIT;
-- 	END IF;
 
-- 	-- Prepare to find another one occurrence
-- 	v_found := v_found - 1;
--         v_pos0 := v_pos0 + v_pos;
-- 	v_str := SUBSTR(v_str, v_pos);
--     END LOOP;
 
--     RETURN v_pos0 + v_pos;
--   END;
--   $$ LANGUAGE plpgsql STRICT IMMUTABLE


--Select date_format(now(), '%M %d, %Y'), now(); 