* Encoding: UTF-8.
* Encoding: .
COMPUTE Ano = 0000.
if Q7 = "A38" Ano = 1980.
if Q7 = "A37" Ano = 1981.
if Q7 = "A36" Ano = 1982.
if Q7 = "A35" Ano = 1983.
if Q7 = "A34" Ano = 1984.
if Q7 = "A33" Ano = 1985.
if Q7 = "A32" Ano = 1986.
if Q7 = "A31" Ano = 1987.
if Q7 = "A30" Ano = 1988.
if Q7 = "A29" Ano = 1989.
if Q7 = "A28" Ano = 1990.
if Q7 = "A27" Ano = 1991.
if Q7 = "A26" Ano = 1992.
if Q7 = "A25" Ano = 1993.
if Q7 = "A24" Ano = 1994.
if Q7 = "A23" Ano = 1995.
if Q7 = "A22" Ano = 1996.
if Q7 = "A21" Ano = 1997.
if Q7 = "A20" Ano = 1998.
if Q7 = "A19" Ano = 1999.
if Q7 = "A18" Ano = 2000.
if Q7 = "A17" Ano = 2001.
if Q7 = "A16" Ano = 2002.
if Q7 = "A15" Ano = 2003.
if Q7 = "A14" Ano = 2004.
if Q7 = "A13" Ano = 2005.
if Q7 = "A12" Ano = 2006.
if Q7 = "A11" Ano = 2007.
if Q7 = "A10" Ano = 2008.
if Q7 = "A9" Ano = 2009.
if Q7 = "A8" Ano = 2010.
if Q7 = "A7" Ano = 2011.
if Q7 = "A6" Ano = 2012.
if Q7 = "A5" Ano = 2013.
if Q7 = "A4" Ano = 2014.
if Q7 = "A3" Ano = 2015.
if Q7 = "A2" Ano = 2016.
if Q7 = "A1" Ano = 2017.
EXECUTE.

COMPUTE Alter = 2019 - Ano.
EXECUTE.

COMPUTE Ano5_fwd = 0.
if Ano < 1996 Ano5_fwd = 1.
if Ano > 1995 and Ano < 2001 Ano5_fwd = 2.
if Ano > 2000 and Ano < 2006 Ano5_fwd = 3.
if Ano > 2005 and Ano < 2011 Ano5_fwd = 4.
if Ano > 2010 Ano5_fwd = 5.
EXECUTE.

COMPUTE Ano5_bw = 0.
if Ano < 1994 Ano5_bw = 1.
if Ano > 1993 and Ano < 1999 Ano5_bw = 2.
if Ano > 1998 and Ano < 2004 Ano5_bw = 3.
if Ano > 2003 and Ano < 2009 Ano5_bw = 4.
if Ano > 2008 Ano5_bw = 5.
EXECUTE.

USE ALL.
COMPUTE q16_opt1 = 0.
if Q17_SQ001 = 1  q16_opt1 = 1.
if Q17_SQ001 = 2  q16_opt1 = 2.
if Q17_SQ001 = 3  q16_opt1 = 3.
if Q17_SQ001 = 4  q16_opt1 = 4.
if Q17_SQ001 = 5  q16_opt1 = 5.
if Q17_SQ001 = 6  q16_opt1 = 6.
EXECUTE.

USE ALL.
COMPUTE q16_opt2 = 0.
if Q17_SQ002 = 1  q16_opt2 = 1.
if Q17_SQ002 = 2  q16_opt2 = 2.
if Q17_SQ002 = 3  q16_opt2 = 3.
if Q17_SQ002 = 4  q16_opt2 = 4.
if Q17_SQ002 = 5  q16_opt2 = 5.
if Q17_SQ002 = 6  q16_opt2 = 6.
EXECUTE.

USE ALL.
COMPUTE q16_opt3 = 0.
if Q17_SQ003 = 1  q16_opt3 = 1.
if Q17_SQ003 = 2  q16_opt3 = 2.
if Q17_SQ003 = 3  q16_opt3 = 3.
if Q17_SQ003 = 4  q16_opt3 = 4.
if Q17_SQ003 = 5  q16_opt3 = 5.
if Q17_SQ003 = 6  q16_opt3 = 6.
EXECUTE.

USE ALL.
COMPUTE q16_opt4 = 0.
if Q17_SQ004 = 1  q16_opt4 = 1.
if Q17_SQ004 = 2  q16_opt4 = 2.
if Q17_SQ004 = 3  q16_opt4 = 3.
if Q17_SQ004 = 4  q16_opt4 = 4.
if Q17_SQ004 = 5  q16_opt4 = 5.
if Q17_SQ004 = 6  q16_opt4 = 6.
EXECUTE.

USE ALL.
COMPUTE q16_opt5 = 0.
if Q17_SQ005 = 1  q16_opt5 = 1.
if Q17_SQ005 = 2  q16_opt5 = 2.
if Q17_SQ005 = 3  q16_opt5 = 3.
if Q17_SQ005 = 4  q16_opt5 = 4.
if Q17_SQ005 = 5  q16_opt5 = 5.
if Q17_SQ005 = 6  q16_opt5 = 6.
EXECUTE.

USE ALL.
COMPUTE q16_opt6 = 0.
if Q17_SQ006 = 1  q16_opt6 = 1.
if Q17_SQ006 = 2  q16_opt6 = 2.
if Q17_SQ006 = 3  q16_opt6 = 3.
if Q17_SQ006 = 4  q16_opt6 = 4.
if Q17_SQ006 = 5  q16_opt6 = 5.
if Q17_SQ006 = 6  q16_opt6 = 6.
EXECUTE.

USE ALL.
COMPUTE q16_opt7 = 0.
if Q17_SQ007 = 1  q16_opt7 = 1.
if Q17_SQ007 = 2  q16_opt7 = 2.
if Q17_SQ007 = 3  q16_opt7 = 3.
if Q17_SQ007 = 4  q16_opt7 = 4.
if Q17_SQ007 = 5  q16_opt7 = 5.
if Q17_SQ007 = 6  q16_opt7 = 6.
EXECUTE.

COMPUTE v_17 = 0.
if Q18 = "A6" v_17 = 0.
if Q18 = "A5" v_17 = 1.
if Q18 = "A4" v_17 = 2.
if Q18 = "A3" v_17 = 3.
if Q18 = "A2" v_17 = 4.
if Q18 = "A1" v_17 = 5.
EXECUTE.

COMPUTE v_18 = 0.
if Q19_SQ001 = 6 v_18 = 0.
if Q19_SQ001 = 5 v_18 = 1.
if Q19_SQ001 = 4 v_18 = 2.
if Q19_SQ001 = 3 v_18 = 3.
if Q19_SQ001 = 2 v_18 = 4.
if Q19_SQ001 = 1 v_18 = 5.
EXECUTE.

COMPUTE v_18_2 = 0.
if Q19_SQ002 = 6 v_18_2 = 0.
if Q19_SQ002 = 5 v_18_2 = 1.
if Q19_SQ002 = 4 v_18_2 = 2.
if Q19_SQ002 = 3 v_18_2 = 3.
if Q19_SQ002 = 2 v_18_2 = 4.
if Q19_SQ002 = 1 v_18_2 = 5.
EXECUTE.

COMPUTE v_18_4 = 0.
if Q19_SQ004 = 6 v_18_4 = 0.
if Q19_SQ004 = 5 v_18_4 = 1.
if Q19_SQ004 = 4 v_18_4 = 2.
if Q19_SQ004 = 3 v_18_4 = 3.
if Q19_SQ004 = 2 v_18_4 = 4.
if Q19_SQ004 = 1 v_18_4 = 5.
EXECUTE.

COMPUTE v_22 = 0.
if Q22 = "A6" v_22 = 0.
if Q22 = "A5" v_22 = 1.
if Q22 = "A4" v_22 = 2.
if Q22 = "A3" v_22 = 3.
if Q22 = "A2" v_22 = 4.
if Q22 = "A1" v_22 = 5.
EXECUTE.

COMPUTE v_34 = 0.
if Q34 = "A6" v_34 = 0.
if Q34 = "A5" v_34 = 1.
if Q34 = "A4" v_34 = 2.
if Q34 = "A3" v_34 = 3.
if Q34 = "A2" v_34 = 4.
if Q34 = "A1" v_34 = 5.
EXECUTE.

VALUE LABELS  v_34
 "1" "Mais que 10 Anos"
 "2" "De 7 á 10 anos"
 "3" "De 3 á 6 anos"
 "4" "De 1 á 3 anos"
 "5" "Menos que 1 Ano"
 "0" "Omissao".

COMPUTE v_35 = 0.
if Q35 = "A6" v_35 = 0.
if Q35 = "A5" v_35 = 1.
if Q35 = "A4" v_35 = 2.
if Q35 = "A3" v_35 = 3.
if Q35 = "A2" v_35 = 4.
if Q35 = "A1" v_35 = 5.
EXECUTE.

VALUE LABELS  v_35
 "1" "Mais que 10 Anos"
 "2" "De 7 á 10 anos"
 "3" "De 3 á 6 anos"
 "4" "De 1 á 3 anos"
 "5" "Menos que 1 Ano"
 "0" "Omissao".
 
COMPUTE v_36 = 0.
if Q36 = 1 v_36 = 1.
if Q36 = 2 v_36 = 2.
EXECUTE.

VALUE LABELS  v_36
 "1" "Muito Boa"
 "2" "Ruim"
 "0" "Indifetente".

use all.
COMPUTE v2 = 0.
if Q2 = "A1" v2 = 1.
if Q2 = "A2" v2 = 2.
if Q2 = "A3" v2 = 3.
if Q2 = "A4" v2 = 4.
if Q2 = "A5" v2 = 5.
if Q2 = "A6" v2 = 6.
if Q2 = "A7" v2 = 7.
EXECUTE.

COMPUTE v25 = 0.
if Q25_SQ001 = "A1" v25 = 1.
if Q25_SQ001 = "A2" v25 = 2.
if Q25_SQ001 = "A3" v25 = 3.
if Q25_SQ001 = "A4" v25 = 4.
if Q25_SQ001 = "A5" v25 = 5.
if Q25_SQ001 = "A6" v25 = 6.
if Q25_SQ001 = "A7" v25 = 0.
EXECUTE.

COMPUTE v25__U2 = 0.
if Q25_SQ002 = "A1" v25__U2 = 1.
if Q25_SQ002 = "A2" v25__U2 = 2.
if Q25_SQ002 = "A3" v25__U2 = 3.
if Q25_SQ002 = "A4" v25__U2 = 4.
if Q25_SQ002 = "A5" v25__U2 = 5.
if Q25_SQ002 = "A6" v25__U2 = 6.
if Q25_SQ002 = "A7" v25__U2 = 0.
EXECUTE.

USE ALL.
COMPUTE v26 = 0.
if Q26_SQ001 = "A1" v26 = 1.
if Q26_SQ001 = "A2" v26 = 2.
if Q26_SQ001 = "A3" v26 = 3.
if Q26_SQ001 = "A4" v26 = 4.
if Q26_SQ001 = "A5" v26 = 5.
if Q26_SQ001 = "A6" v26 = 6.
if Q26_SQ001 = "A7" v26 = 0.
EXECUTE.

COMPUTE v26__U2 = 0.
if Q26_SQ002 = "A1" v26__U2 = 1.
if Q26_SQ002 = "A2" v26__U2 = 2.
if Q26_SQ002 = "A3" v26__U2 = 3.
if Q26_SQ002 = "A4" v26__U2 = 4.
if Q26_SQ002 = "A5" v26__U2 = 5.
if Q26_SQ002 = "A6" v26__U2 = 6.
if Q26_SQ002 = "A7" v26__U2 = 0.
EXECUTE.


USE ALL.
COMPUTE v18 = 0.
if Q18 = "A1"  v18 = 1.
if Q18 = "A2"  v18 = 2.
if Q18 = "A3"  v18 = 3.
if Q18 = "A4"  v18 = 4.
if Q18 = "A5"  v18 = 5.
if Q18 = "A6"  v18 = 6.
EXECUTE.

 * Questão 19 - Ajuste de Conteúdo

*RECODE Q19_SQ001 ('A1'='1') ('A2'='2') ('A3'='3') ('A4'='4') ('A5'='5') ('A6'='6').
*EXECUTE.
*RECODE Q19_SQ002 ('A1'='1') ('A2'='2') ('A3'='3') ('A4'='4') ('A5'='5') ('A6'='6').
*EXECUTE.
*RECODE Q19_SQ003 ('A1'='1') ('A2'='2') ('A3'='3') ('A4'='4') ('A5'='5') ('A6'='6').
*EXECUTE.
*RECODE Q19_SQ004 ('A1'='1') ('A2'='2') ('A3'='3') ('A4'='4') ('A5'='5') ('A6'='6'). 
*EXECUTE.
*RECODE Q19_SQ005 ('A1'='1') ('A2'='2') ('A3'='3') ('A4'='4') ('A5'='5') ('A6'='6').
*EXECUTE.

 * Questão 19 -  Ajuste de Rótulo
 
VALUE LABELS  Q19_SQ001 
 "1" "Concordo Completamente"
 "2" "Concordo Parcialmente"
 "3" "Não Concordo nem Discordo"
 "4" "Discordo Parcialmente"
 "5" "Discordo  Completamente"
 "6" "Eu Não Sei".
 
VALUE LABELS  Q19_SQ001 
 "1" "Concordo Completamente"
 "2" "Concordo Parcialmente"
 "3" "Não Concordo nem Discordo"
 "4" "Discordo Parcialmente"
 "5" "Discordo  Completamente"
 "6" "Eu Não Sei".
 
VALUE LABELS  Q19_SQ002
 "1" "Concordo Completamente"
 "2" "Concordo Parcialmente"
 "3" "Não Concordo nem Discordo"
 "4" "Discordo Parcialmente"
 "5" "Discordo  Completamente"
 "6" "Eu Não Sei".
 
VALUE LABELS  Q19_SQ003 
 "1" "Concordo Completamente"
 "2" "Concordo Parcialmente"
 "3" "Não Concordo nem Discordo"
 "4" "Discordo Parcialmente"
 "5" "Discordo  Completamente"
 "6" "Eu Não Sei".
 
VALUE LABELS  Q19_SQ004 
 "1" "Concordo Completamente"
 "2" "Concordo Parcialmente"
 "3" "Não Concordo nem Discordo"
 "4" "Discordo Parcialmente"
 "5" "Discordo  Completamente"
 "6" "Eu Não Sei".
 
VALUE LABELS  Q19_SQ005 
 "1" "Concordo Completamente"
 "2" "Concordo Parcialmente"
 "3" "Não Concordo nem Discordo"
 "4" "Discordo Parcialmente"
 "5" "Discordo  Completamente"
 "6" "Eu Não Sei".

 * Questão 20 - Ajuste de Conteúdo

*RECODE Q20_SQ001 ('A1'='1') ('A2'='2') ('A3'='3') ('A4'='4') ('A5'='5') ('A6'='6').
*EXECUTE.
*RECODE Q20_SQ002 ('A1'='1') ('A2'='2') ('A3'='3') ('A4'='4') ('A5'='5') ('A6'='6').
*EXECUTE.
*RECODE Q20_SQ003 ('A1'='1') ('A2'='2') ('A3'='3') ('A4'='4') ('A5'='5') ('A6'='6').
*EXECUTE.
*RECODE Q20_SQ004 ('A1'='1') ('A2'='2') ('A3'='3') ('A4'='4') ('A5'='5') ('A6'='6').
*EXECUTE.
*RECODE Q20_SQ005 ('A1'='1') ('A2'='2') ('A3'='3') ('A4'='4') ('A5'='5') ('A6'='6').
*EXECUTE.

 * Questão 19 -  Ajuste de Rótulo
 
VALUE LABELS  Q20_SQ001 
 "1" "Concordo Completamente"
 "2" "Concordo Parcialmente"
 "3" "Não Concordo nem Discordo"
 "4" "Discordo Parcialmente"
 "5" "Discordo  Completamente"
 "6" "Eu Não Sei".
 
VALUE LABELS  Q20_SQ002
 "1" "Concordo Completamente"
 "2" "Concordo Parcialmente"
 "3" "Não Concordo nem Discordo"
 "4" "Discordo Parcialmente"
 "5" "Discordo  Completamente"
 "6" "Eu Não Sei".
 
VALUE LABELS  Q20_SQ003 
 "1" "Concordo Completamente"
 "2" "Concordo Parcialmente"
 "3" "Não Concordo nem Discordo"
 "4" "Discordo Parcialmente"
 "5" "Discordo  Completamente"
 "6" "Eu Não Sei".
 
VALUE LABELS  Q20_SQ004 
 "1" "Concordo Completamente"
 "2" "Concordo Parcialmente"
 "3" "Não Concordo nem Discordo"
 "4" "Discordo Parcialmente"
 "5" "Discordo  Completamente"
 "6" "Eu Não Sei".
 
VALUE LABELS  Q20_SQ005 
 "1" "Concordo Completamente"
 "2" "Concordo Parcialmente"
 "3" "Não Concordo nem Discordo"
 "4" "Discordo Parcialmente"
 "5" "Discordo  Completamente"
 "6" "Eu Não Sei".

* Questão 36 - Ajuste de Conteúdo - RECODE

*RECODE Q36 ('A1'='1') ('A2'='2') ('A3'='3') ('A4'='4') ('A5'='5') ('A6'='6').
*EXECUTE.

* Questão 36 - Ajuste de Conteúdo - AJUSTE DE VARIAVEIS

VALUE LABELS  Q36
 "1" "Muito Boa"
 "2" "Muito Ruim"
 "3" "Indiferente".

USE ALL.
COMPUTE q23_opt1 = 0.
IF Q23_SQ001 = 1 q23_opt1 = 1.
EXECUTE.

USE ALL.
COMPUTE q23_opt2 = 0.
IF Q23_SQ002 = 1 q23_opt2 = 1.
EXECUTE.

USE ALL.
COMPUTE q23_opt3 = 0.
IF Q23_SQ003 = 1 q23_opt3 = 1.
EXECUTE.

USE ALL.
COMPUTE q23_opt4 = 0.
IF Q23_SQ004 = 1 q23_opt4 = 1.
EXECUTE.

USE ALL.
COMPUTE q23_opt5 = 0.
IF Q23_SQ005 = 1 q23_opt5 = 1.
EXECUTE.


USE ALL.
COMPUTE v24__U1 = 0.
if Q24_SQ001 = "A1"  v24__U1 = 1.
if Q24_SQ001 = "A2"  v24__U1 = 2.
if Q24_SQ001 = "A3"  v24__U1 = 3.
if Q24_SQ001 = "A4"  v24__U1 = 4.
if Q24_SQ001 = "A5"  v24__U1 = 5.
if Q24_SQ001 = "A6"  v24__U1 = 6.
EXECUTE.

COMPUTE v24__U2 = 0.
if Q24_SQ002 = "A1"  v24__U2 = 1.
if Q24_SQ002 = "A2"  v24__U2 = 2.
if Q24_SQ002 = "A3"  v24__U2 = 3.
if Q24_SQ002 = "A4"  v24__U2 = 4.
if Q24_SQ002 = "A5"  v24__U2 = 5.
if Q24_SQ002 = "A6"  v24__U2 = 6.
EXECUTE.

COMPUTE v24__U3 = 0.
if Q24_SQ003 = "A1"  v24__U3 = 1.
if Q24_SQ003 = "A2"  v24__U3 = 2.
if Q24_SQ003 = "A3"  v24__U3 = 3.
if Q24_SQ003 = "A4"  v24__U3 = 4.
if Q24_SQ003 = "A5"  v24__U3 = 5.
if Q24_SQ003 = "A6"  v24__U3 = 6.
EXECUTE.

COMPUTE v24__U4 = 0.
if Q24_SQ004 = "A1"  v24__U4 = 1.
if Q24_SQ004 = "A2"  v24__U4 = 2.
if Q24_SQ004 = "A3"  v24__U4 = 3.
if Q24_SQ004 = "A4"  v24__U4 = 4.
if Q24_SQ004 = "A5"  v24__U4 = 5.
if Q24_SQ004 = "A6"  v24__U4 = 6.
EXECUTE.

COMPUTE v24__U5 = 0.
if Q24_SQ005 = "A1"  v24__U5 = 1.
if Q24_SQ005 = "A2"  v24__U5 = 2.
if Q24_SQ005 = "A3"  v24__U5 = 3.
if Q24_SQ005 = "A4"  v24__U5 = 4.
if Q24_SQ005 = "A5"  v24__U5 = 5.
if Q24_SQ005 = "A6"  v24__U5 = 6.
EXECUTE.

COMPUTE v24__U6 = 0.
if Q24_SQ006 = "A1"  v24__U6 = 1.
if Q24_SQ006 = "A2"  v24__U6 = 2.
if Q24_SQ006 = "A3"  v24__U6 = 3.
if Q24_SQ006 = "A4"  v24__U6 = 4.
if Q24_SQ006 = "A5"  v24__U6 = 5.
if Q24_SQ006 = "A6"  v24__U6 = 6.
EXECUTE.

COMPUTE v24__U7 = 0.
if Q24_SQ007 = "A1"  v24__U7 = 1.
if Q24_SQ007 = "A2"  v24__U7 = 2.
if Q24_SQ007 = "A3"  v24__U7 = 3.
if Q24_SQ007 = "A4"  v24__U7 = 4.
if Q24_SQ007 = "A5"  v24__U7 = 5.
if Q24_SQ007 = "A6"  v24__U7 = 6.
EXECUTE.

 * z

COMPUTE v24__U8 = 0.
if Q24_SQ008 = "A1"  v24__U8 = 1.
if Q24_SQ008 = "A2"  v24__U8 = 2.
if Q24_SQ008 = "A3"  v24__U8 = 3.
if Q24_SQ008 = "A4"  v24__U8 = 4.
if Q24_SQ008 = "A5"  v24__U8 = 5.
if Q24_SQ008 = "A6"  v24__U8 = 6.
EXECUTE.

FREQUENCIES VARIABLES=v24__U1 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=v24__U2
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=v24__U3 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=v24__U4 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=v24__U5 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=v24__U6 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=v24__U7 
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=v24__U8 
  /ORDER=ANALYSIS.

COMPUTE Ano = 0000.
if Q7 = "A38" Ano = 1980.
if Q7 = "A37" Ano = 1981.
if Q7 = "A36" Ano = 1982.
if Q7 = "A35" Ano = 1983.
if Q7 = "A34" Ano = 1984.
if Q7 = "A33" Ano = 1985.
if Q7 = "A32" Ano = 1986.
if Q7 = "A31" Ano = 1987.
if Q7 = "A30" Ano = 1988.
if Q7 = "A29" Ano = 1989.
if Q7 = "A28" Ano = 1990.
if Q7 = "A27" Ano = 1991.
if Q7 = "A26" Ano = 1992.
if Q7 = "A25" Ano = 1993.
if Q7 = "A24" Ano = 1994.
if Q7 = "A23" Ano = 1995.
if Q7 = "A22" Ano = 1996.
if Q7 = "A21" Ano = 1997.
if Q7 = "A20" Ano = 1998.
if Q7 = "A19" Ano = 1999.
if Q7 = "A18" Ano = 2000.
if Q7 = "A17" Ano = 2001.
if Q7 = "A16" Ano = 2002.
if Q7 = "A15" Ano = 2003.
if Q7 = "A14" Ano = 2004.
if Q7 = "A13" Ano = 2005.
if Q7 = "A12" Ano = 2006.
if Q7 = "A11" Ano = 2007.
if Q7 = "A10" Ano = 2008.
if Q7 = "A9" Ano = 2009.
if Q7 = "A8" Ano = 2010.
if Q7 = "A7" Ano = 2011.
if Q7 = "A6" Ano = 2012.
if Q7 = "A5" Ano = 2013.
if Q7 = "A4" Ano = 2014.
if Q7 = "A3" Ano = 2015.
if Q7 = "A2" Ano = 2016.
if Q7 = "A1" Ano = 2017.
EXECUTE.

COMPUTE Alter = 2019 - Ano.
EXECUTE.

COMPUTE Ano5_fwd = 0.
if Ano < 1996 Ano5_fwd = 1.
if Ano > 1995 and Ano < 2001 Ano5_fwd = 2.
if Ano > 2000 and Ano < 2006 Ano5_fwd = 3.
if Ano > 2005 and Ano < 2011 Ano5_fwd = 4.
if Ano > 2010 Ano5_fwd = 5.
EXECUTE.

COMPUTE Ano5_bw = 0.
if Ano < 1994 Ano5_bw = 1.
if Ano > 1993 and Ano < 1999 Ano5_bw = 2.
if Ano > 1998 and Ano < 2004 Ano5_bw = 3.
if Ano > 2003 and Ano < 2009 Ano5_bw = 4.
if Ano > 2008 Ano5_bw = 5.
EXECUTE.

VALUE LABELS  Ano5_bw
 "1" "Mais que 20 Anos"
 "2" "Entre 15 e 20 Anos"
 "3" "Entre 10 e 15 Anos"
 "4" "Entre 5 e 10 Anos"
 "5" "Menos que 5 Anos"
 "0" "Menos que 1 Ano".

USE ALL. 
COMPUTE q38_opt1 = 0.
IF Q38_SQ001 = 1  q38_opt1 = 1.
EXECUTE.

COMPUTE q38_opt2 = 0.
IF Q38_SQ002 = 1  q38_opt2 = 1.
EXECUTE.

COMPUTE q38_opt3 = 0.
IF Q38_SQ003 = 1  q38_opt3 = 1.
EXECUTE.

COMPUTE q38_opt4 = 0.
IF Q38_SQ004 = 1  q38_opt4 = 1.
EXECUTE.

COMPUTE q38_opt5 = 0.
IF Q38_SQ005 = 1  q38_opt5 = 1.
EXECUTE.

USE ALL.
COMPUTE v19 = 0.
if Q19_SQ001 = 1 v19 = 1.
if Q19_SQ001 = 2 v19 = 2.
if Q19_SQ001 = 3 v19 = 3.
if Q19_SQ001 = 4 v19 = 4.
if Q19_SQ001 = 5 v19 = 5.
if Q19_SQ001 = 6 v19 = 6.
EXECUTE.

USE ALL.
COMPUTE v19__U2 = 0.
if Q19_SQ002 = 1 v19__U2 = 1.
if Q19_SQ002 = 2 v19__U2 = 2.
if Q19_SQ002 = 3 v19__U2 = 3.
if Q19_SQ002 = 4 v19__U2 = 4.
if Q19_SQ002 = 5 v19__U2 = 5.
if Q19_SQ002 = 6 v19__U2 = 6.
EXECUTE.

USE ALL.
COMPUTE v19__U3 = 0.
if Q19_SQ003 = 1 v19__U3 = 1.
if Q19_SQ003 = 2 v19__U3 = 2.
if Q19_SQ003 = 3 v19__U3 = 3.
if Q19_SQ003 = 4 v19__U3 = 4.
if Q19_SQ003 = 5 v19__U3 = 5.
if Q19_SQ003 = 6 v19__U3 = 6.
EXECUTE.

USE ALL.
COMPUTE v19__U4 = 0.
if Q19_SQ004 = 1 v19__U4 = 1.
if Q19_SQ004 = 2 v19__U4 = 2.
if Q19_SQ004 = 3 v19__U4 = 3.
if Q19_SQ004 = 4 v19__U4 = 4.
if Q19_SQ004 = 5 v19__U4 = 5.
if Q19_SQ004 = 6 v19__U4 = 6.
EXECUTE.

USE ALL.
COMPUTE v19__U5 = 0.
if Q19_SQ005 = 1 v19__U5 = 1.
if Q19_SQ005 = 2 v19__U5 = 2.
if Q19_SQ005 = 3 v19__U5 = 3.
if Q19_SQ005 = 4 v19__U5 = 4.
if Q19_SQ005 = 5 v19__U5 = 5.
if Q19_SQ005 = 6 v19__U5 = 6.
EXECUTE.

USE ALL.
COMPUTE v20 = 0.
if Q20_SQ001 = 1 v20 = 1.
if Q20_SQ001 = 2 v20 = 2.
if Q20_SQ001 = 3 v20 = 3.
if Q20_SQ001 = 4 v20 = 4.
if Q20_SQ001 = 5 v20 = 5.
if Q20_SQ001 = 6 v20 = 6.
EXECUTE.

USE ALL.
COMPUTE v20__U2 = 0.
if Q20_SQ002 = 1 v20__U2 = 1.
if Q20_SQ002 = 2 v20__U2 = 2.
if Q20_SQ002 = 3 v20__U2 = 3.
if Q20_SQ002 = 4 v20__U2 = 4.
if Q20_SQ002 = 5 v20__U2 = 5.
if Q20_SQ002 = 6 v20__U2 = 6.
EXECUTE.

USE ALL.
COMPUTE v20__U3 = 0.
if Q20_SQ003 = 1 v20__U3 = 1.
if Q20_SQ003 = 2 v20__U3 = 2.
if Q20_SQ003 = 3 v20__U3 = 3.
if Q20_SQ003 = 4 v20__U3 = 4.
if Q20_SQ003 = 5 v20__U3 = 5.
if Q20_SQ003 = 6 v20__U3 = 6.
EXECUTE.

USE ALL.
COMPUTE v20__U4 = 0.
if Q20_SQ004 = 1 v20__U4 = 1.
if Q20_SQ004 = 2 v20__U4 = 2.
if Q20_SQ004 = 3 v20__U4 = 3.
if Q20_SQ004 = 4 v20__U4 = 4.
if Q20_SQ004 = 5 v20__U4 = 5.
if Q20_SQ004 = 6 v20__U4 = 6.
EXECUTE.

USE ALL.
COMPUTE v20__U5 = 0.
if Q20_SQ005 = 1 v20__U5 = 1.
if Q20_SQ005 = 2 v20__U5 = 2.
if Q20_SQ005 = 3 v20__U5 = 3.
if Q20_SQ005 = 4 v20__U5 = 4.
if Q20_SQ005 = 5 v20__U5 = 5.
if Q20_SQ005 = 6 v20__U5 = 6.
EXECUTE.



SAVE OUTFILE='L:\SPSS\Pesquisa-Até-20072019\dados_anonimizados.sav' 
  /COMPRESSED.

