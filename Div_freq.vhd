			--Chavez, Mauro.
			--Santamaria, Araceli.
			--Sánchez, Lourdes.
--
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.numeric_std.all;
 use std.textio.all;
 

 -- DEBE TENER EN CUENTA QUE LA MAXIMA CANTIDAD DE BITS QUE PUEDEN DIRECCIONAR 'ADDR_i' ES 10 ('size'), QUE SERIAS LOS 10 BITS
                                       -- MENOS SIGNIFICATIVO DE LOS 64 BITS DE ENTRADA. 
entity Div_freq is
      
     port (
         CLK_i: in std_logic;
         CLK_ot: out std_logic
         );
		
 end entity Div_freq;
 
 
 architecture MyHDL of Div_freq is

signal aux : integer := 0;
signal CLK_out: std_logic :='0' ;
 
  begin

  CLK_ot<= CLK_out;

CLK: process (CLK_i) is
 begin
     	
	  if (CLK_i'event and CLK_i='1' ) then
	  aux<=aux+1;
         if (aux=200) then    
			aux<=0;
			CLK_out<= not(CLK_out);
			end if;	 
   	end if;
	
end process CLK; 
 end architecture MyHDL;