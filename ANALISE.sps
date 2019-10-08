* Encoding: UTF-8.
* Número de Menus Usados
* A Questão 05. Sua empresa  usa algum sistema classificado como Enterprise Resource Planning (ERP)?
* A Questão 16. Quais tipos de menu são oferecidos pelo seu sistema? Por favor, escolha os tipos que mais se aproximam do seu. O conteúdo dos menus não importa, pois são só um exemplo.

USE ALL.
COMPUTE menu_num = Q17_SQ001 + Q17_SQ002 + Q17_SQ003 + Q17_SQ004 + Q17_SQ005 + Q17_SQ006 + Q17_SQ007.
EXECUTE. 

COMPUTE filter_menu = 0.
if missing(Q5) or Q5 = "A2" filter_menu = 1.
if missing(menu_num) filter_menu = 2.
EXECUTE. 

USE ALL.
COMPUTE filter_$=(filter_menu = 0).
VARIABLE LABELS filter_$ 'filter_menu = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CTABLES
  /VLABELS VARIABLES=menu_num DISPLAY=LABEL
  /TABLE BY menu_num [S][MEAN].

CTABLES 
  /VLABELS VARIABLES=menu_num DISPLAY=LABEL 
  /TABLE BY menu_num [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=menu_num ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES= Q17_SQ001 Q17_SQ002 Q17_SQ003 Q17_SQ004 Q17_SQ005 Q17_SQ006 Q17_SQ007 DISPLAY=LABEL 
  /TABLE BY Q17_SQ001 [ROWPCT.COUNT F40.2] + Q17_SQ002 [ROWPCT.COUNT F40.2] + Q17_SQ003 [ROWPCT.COUNT F40.2] + Q17_SQ004 [ROWPCT.COUNT F40.2] 
+ Q17_SQ005 [ROWPCT.COUNT F40.2] + Q17_SQ006 [ROWPCT.COUNT F40.2] + Q17_SQ007 [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Q17_SQ001 Q17_SQ002 Q17_SQ003 Q17_SQ004 Q17_SQ005 Q17_SQ006 Q17_SQ007 ORDER=A KEY=VALUE EMPTY=EXCLUDE.

* Menus relacionados e avaliação de menus melhorados e estratégias de busca.
* Relacionado ao número de menus que um Vpn tem.
* A Questão 05. Sua empresa  usa algum sistema classificado como Enterprise Resource Planning (ERP)?
* A Questão 23. Como você avalia as seguintes estratégias para lidar com problemas no uso do sistema ERP?
* Opção 6. Tipos de Menu e Estruturas Aprimorados - Discordo Completamente

USE ALL.
COMPUTE filter_menu = 0.
if missing(Q5) or Q5 = "A2" filter_menu = 1.
if missing(menu_num) filter_menu = 2.
if missing(Q24_SQ006) or Q24_SQ006 = "A6" filter_menu = 3.
EXECUTE.

COMPUTE Q24_SQ006_N = 7.
if Q24_SQ006 = "A1" Q24_SQ006_N = 1.
if Q24_SQ006 = "A2" Q24_SQ006_N = 2.
if Q24_SQ006 = "A3" Q24_SQ006_N = 3.
if Q24_SQ006 = "A4" Q24_SQ006_N = 4.
if Q24_SQ006 = "A5" Q24_SQ006_N = 5.
if Q24_SQ006 = "A6" Q24_SQ006_N = 6.
if Q24_SQ006 = "A7" Q24_SQ006_N = 7.
if missing(Q24_SQ006) Q24_SQ006_N = 7.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_menu = 0).
VARIABLE LABELS filter_$ 'filter_menu = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS 
  /VARIABLES=menu_num Q24_SQ006_N
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.

* A Questão 05. Sua empresa  usa algum sistema classificado como Enterprise Resource Planning (ERP)?
* A Questão 23. Como você avalia as seguintes estratégias para lidar com problemas no uso do sistema ERP?
* Opção 8. Funcionalidade de Pesquisa Avançada - Discordo Completamente

USE ALL.
COMPUTE filter_menu = 0.
if missing(Q5) or Q5 = "A2" filter_menu = 1.
if missing(menu_num) filter_menu = 2.
if missing(Q24_SQ008) or Q24_SQ008 = "A6" filter_menu = 3.
EXECUTE.

COMPUTE Q24_SQ008_N = 7.
if Q24_SQ008 = "A1" Q24_SQ008_N = 1.
if Q24_SQ008 = "A2" Q24_SQ008_N = 2.
if Q24_SQ008 = "A3" Q24_SQ008_N = 3.
if Q24_SQ008 = "A4" Q24_SQ008_N = 4.
if Q24_SQ008 = "A5" Q24_SQ008_N = 5.
if Q24_SQ008 = "A6" Q24_SQ008_N = 6.
if Q24_SQ008 = "A7" Q24_SQ008_N = 7.
if missing(Q24_SQ008) Q24_SQ008_N = 7.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_menu = 0).
VARIABLE LABELS filter_$ 'filter_menu = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS 
  /VARIABLES=menu_num Q24_SQ008_N
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.

* Analise 002 
* Comparações médias das avaliações de "Haber" e "Unders" de cada menu (Haber são, por exemplo, q16_opt1 = 1, não-proprietário 0).
 * Questão 23. Como você avalia as seguintes estratégias para lidar com problemas no uso do sistema ERP?
 * Questão 16. [1] Quais tipos de menu são oferecidos pelo seu sistema? Por favor, escolha os tipos que mais se aproximam do seu. O conteúdo dos menus não importa, pois são só um exemplo.
 * Questão 16. [2] Quais tipos de menu são oferecidos pelo seu sistema? Por favor, escolha os tipos que mais se aproximam do seu. O conteúdo dos menus não importa, pois são só um exemplo.
 * Questão 16. [3] Quais tipos de menu são oferecidos pelo seu sistema? Por favor, escolha os tipos que mais se aproximam do seu. O conteúdo dos menus não importa, pois são só um exemplo.
 * Questão 16. [4] Quais tipos de menu são oferecidos pelo seu sistema? Por favor, escolha os tipos que mais se aproximam do seu. O conteúdo dos menus não importa, pois são só um exemplo.
 * Questão 16. [5] Quais tipos de menu são oferecidos pelo seu sistema? Por favor, escolha os tipos que mais se aproximam do seu. O conteúdo dos menus não importa, pois são só um exemplo.
 * Questão 16. [6] Quais tipos de menu são oferecidos pelo seu sistema? Por favor, escolha os tipos que mais se aproximam do seu. O conteúdo dos menus não importa, pois são só um exemplo.

USE ALL.
compute filter_menu = 0.
if missing(Q5) or Q5 = "A2" filter_menu = 1.
if missing(menu_num) filter_menu = 2.
if missing(v24__U6) or v24__U6 = 0 filter_menu = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_menu = 0).
VARIABLE LABELS filter_$ 'filter_menu = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST GROUPS=q16_opt1(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U6 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt2(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U6 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt3(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U6 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt4(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U6 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt5(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U6 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt6(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U6 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt7(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U6 
  /CRITERIA=CI(.95).


* Analise 002b

USE ALL.
compute filter_menu = 0.
if missing(Q5) or Q5 = "A2" filter_menu = 1.
if missing(menu_num) filter_menu = 2.
if missing(v24__U8) or v24__U8 = 0 filter_menu = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_menu = 0).
VARIABLE LABELS filter_$ 'filter_menu = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST GROUPS=q16_opt1(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt2(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt3(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt4(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt5(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt6(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt7(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

* Analise 003
* Verificar quais métodos de pesquisas são os preferidos do Publico Brasileiro
* Questão 22. [Pesquisa de texto completo (por exemplo, termos, IDs)] Qual é o seu método preferido para pesquisar informações?
* Questão 22. [Auto-completar] Qual é o seu método preferido para pesquisar informações?
* Questão 22. [Sinônimos e correção automática (opção do Google “Você quis dizer…?”)] Qual é o seu método preferido para pesquisar informações?
* Questão 22. [Registrar e indexar (por exemplo, listagens de categorias em ordem alfabética)] Qual é o seu método preferido para pesquisar informações?
* Questão 22. [Eu Não Sei] Qual é o seu método preferido para pesquisar informações?

USE ALL.
COMPUTE search_num = Q23_SQ001 + Q23_SQ002 + Q23_SQ003 + Q23_SQ004 + Q23_SQ005.
EXECUTE. 

COMPUTE filter_search = 0.
if missing(Q5) or Q5 = "A2" filter_search = 1.
if missing(search_num) filter_search = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_search = 0).
VARIABLE LABELS filter_$ 'filter_search = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CTABLES
  /VLABELS VARIABLES=search_num DISPLAY=LABEL
  /TABLE BY search_num [S][MEAN].

CTABLES 
  /VLABELS VARIABLES=search_num DISPLAY=LABEL 
  /TABLE BY search_num [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=search_num ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES=Q23_SQ001 Q23_SQ002 Q23_SQ003 Q23_SQ004 Q23_SQ005 DISPLAY=LABEL 
  /TABLE BY Q23_SQ001 [ROWPCT.COUNT F40.2] + Q23_SQ002 [ROWPCT.COUNT F40.2] + Q23_SQ003 [ROWPCT.COUNT F40.2] + Q23_SQ004 [ROWPCT.COUNT F40.2] + Q23_SQ005 [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Q23_SQ001 Q23_SQ002 Q23_SQ003 Q23_SQ004 Q23_SQ005 ORDER=A KEY=VALUE EMPTY=EXCLUDE.

* Analise 004
* Questão 23. [Funcionalidade de Pesquisa Avançada] Como você avalia as seguintes estratégias para lidar com problemas no uso do sistema ERP?
* search_num
*                     Questão 22. [Pesquisa de texto completo (por exemplo, termos, IDs)] Qual é o seu método preferido para pesquisar informações?
*                     Questão 22. [Auto-completar] Qual é o seu método preferido para pesquisar informações?
*                     Questão 22. [Sinônimos e correção automática (opção do Google “Você quis dizer…?”)] Qual é o seu método preferido para pesquisar informações?
*                     Questão 22. [Registrar e indexar (por exemplo, listagens de categorias em ordem alfabética)] Qual é o seu método preferido para pesquisar informações?
*                     Questão 22. [Eu Não Sei] Qual é o seu método preferido para pesquisar informações?

USE ALL.
COMPUTE filter_search = 0.
if missing(Q5) or Q5 = "A2" filter_search = 1.
if missing(search_num) filter_search = 2.
if missing(v24__U8) or v24__U8 = 0 filter_search = 3.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_search = 0).
VARIABLE LABELS filter_$ 'filter_search = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS 
  /VARIABLES=search_num v24__U8 
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.

* Analise 005a

T-TEST GROUPS=Q23_SQ001(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

* Analise 005b

T-TEST GROUPS=Q23_SQ002(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

* Analise 005c

T-TEST GROUPS=Q23_SQ003(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

* Analise 005d

T-TEST GROUPS=Q23_SQ004(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

* Analise 005d

T-TEST GROUPS=Q23_SQ004(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

* Analise 005e

T-TEST GROUPS=Q23_SQ005(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v24__U8 
  /CRITERIA=CI(.95).

 * Analise 006
*  Questão 18. Por favor, avalie seu sistema ERP de acordo com a escala na tabela a seguir:
*  [O meu sistema ERP oferece uma ampla gama de funcionalidades de suporte para lidar com problemas (por exemplo, explicar causas, oferecer soluções, assistência).] 
*  [O meu sistema ERP é muito complexo, o que muitas vezes me faz sentir perdido.] 
*  [A quantidade de informações e detalhes fornecidos é alta para as minhas necessidades.] 
*  [O meu sistema ERP oferece inúmeras e úteis visualizações, as quais eu posso escolher (por exemplo, tabelas, diagramas, dashboards, organogramas ...).]
*  [O meu sistema ERP abre muitas janelas ou visualizações simultaneamente o qe prejudica minha compreenssão do sistema.]

USE ALL.
compute filter_19 = 0.
if missing(Q5) or Q5 ="A2" filter_19 = 1.
if missing(Q19_SQ001) or missing(Q19_SQ002) or missing(Q19_SQ003) or missing(Q19_SQ004) or missing(Q19_SQ005)  filter_19 = 2.
if Q19_SQ001 = 0 or Q19_SQ002 = 0 or Q19_SQ003 = 0 or Q19_SQ004 = 0 or Q19_SQ005 = 0 filter_19 = 3.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19 = 0).
VARIABLE LABELS filter_$ 'filter_19 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

 * Analise 006a - Idade

GLM Q19_SQ001 Q19_SQ002 Q19_SQ003 Q19_SQ004 Q19_SQ005  BY Ano5_bw 
  /WSFACTOR=RatingERP 5 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(RatingERP*Ano5_bw RatingERP Ano5_bw) 
  /EMMEANS=TABLES(RatingERP) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Ano5_bw) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Ano5_bw*RatingERP) COMPARE(Ano5_bw) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=RatingERP 
  /DESIGN=Ano5_bw.


 * Analise 006b - 
 * Questão 23. Como você avalia as seguintes estratégias para lidar com problemas no uso do sistema ERP?
 * [Nível Configurável de Detalhes da Informação]      - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei
 * [Quantidade Configurável de Informação]               - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei 
 * [Amplas Formas de Visualizações]                         - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei 
 * [Feedback: Visual, Tátil ou Auditivo]                       - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei
 * [Orientação e Suporte ao Usuário]                         - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei
 * [Tipos de Menu e Estruturas Aprimorados]             - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei
 * [Suporte a Dispositivos Sensíveis ao Toque]           - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei
 * [Funcionalidade de Pesquisa Avançada]                - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei
* Suporte em situações de erro.
* Filtro: livre-se de todos que não usam ERP ou não possuem valores em nenhum dos dois.
* ____________________________ mude o filtro com 19.3 e 24.2, conforme necessário ______________________________.

USE ALL.
COMPUTE filter_24 = 0.
if missing(Q5) or Q5 ="A2" filter_24 = 1.
IF missing(v24__U1) or missing(v24__U2) or missing(v24__U3) or missing(v24__U4) or missing(v24__U5) or missing(v24__U6) or missing(v24__U7) or missing(v24__U8)  filter_24 = 2.
IF v24__U1 = 0 or v24__U2 = 0 or v24__U3 = 0 or v24__U4 = 0 or v24__U5 = 0 or v24__U6 = 0 or v24__U7 = 0 or v24__U8 = 0 filter_24 = 3.
EXECUTE.


USE ALL.
COMPUTE filter_$=(filter_24 = 0).
VARIABLE LABELS filter_$ 'filter_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* Questão 18. Por favor, avalie seu sistema ERP de acordo com a escala na tabela a seguir:
* [O meu sistema ERP oferece uma ampla gama de funcionalidades de suporte para lidar com problemas (por exemplo, explicar causas, oferecer soluções, assistência).] 
* Questão 23. Como você avalia as seguintes estratégias para lidar com problemas no uso do sistema ERP?
* [Orientação e Suporte ao Usuário]                         - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei

USE ALL.
COMPUTE filter_19_24 = 0.
if missing(Q5) or Q5 ="A2" filter_19_24 = 1.
if  missing(Q19_SQ001)  filter_19_24 = 2.
if Q19_SQ001 = 0 filter_19_24 = 2.
if missing(v24__U5) filter_19_24 = 2.
if v24__U5 = 0 filter_19_24 = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19_24 = 0).
VARIABLE LABELS filter_$ 'filter_19_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=Q19_SQ001 v24__U5
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Questão 18. Por favor, avalie seu sistema ERP de acordo com a escala na tabela a seguir:
* [O meu sistema ERP é muito complexo, o que muitas vezes me faz sentir perdido.] 
* Questão 23. Como você avalia as seguintes estratégias para lidar com problemas no uso do sistema ERP?
* [Orientação e Suporte ao Usuário]                         - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei

USE ALL.
COMPUTE filter_19_24 = 0.
if missing(Q5) or Q5 ="A2" filter_19_24 = 1.
if  missing(Q19_SQ002)  filter_19_24 = 2.
if Q19_SQ002 = 0 filter_19_24 = 2.
if missing(v24__U5) filter_19_24 = 2.
if v24__U5 = 0 filter_19_24 = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19_24 = 0).
VARIABLE LABELS filter_$ 'filter_19_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=Q19_SQ002 v24__U5
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Questão 18. Por favor, avalie seu sistema ERP de acordo com a escala na tabela a seguir:
* [A quantidade de informações e detalhes fornecidos é alta para as minhas necessidades.] 
* Questão 23. Como você avalia as seguintes estratégias para lidar com problemas no uso do sistema ERP?
* [Orientação e Suporte ao Usuário]                         - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei

USE ALL.
COMPUTE filter_19_24 = 0.
if missing(Q5) or Q5 ="A2" filter_19_24 = 1.
if  missing(Q19_SQ003)  filter_19_24 = 2.
if Q19_SQ003 = 0 filter_19_24 = 2.
if missing(v24__U5) filter_19_24 = 2.
if v24__U5 = 0 filter_19_24 = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19_24 = 0).
VARIABLE LABELS filter_$ 'filter_19_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=Q19_SQ003 v24__U5
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Questão 18. Por favor, avalie seu sistema ERP de acordo com a escala na tabela a seguir:
* [O meu sistema ERP oferece inúmeras e úteis visualizações, as quais eu posso escolher (por exemplo, tabelas, diagramas, dashboards, organogramas ...).]
* Questão 23. Como você avalia as seguintes estratégias para lidar com problemas no uso do sistema ERP?
* [Orientação e Suporte ao Usuário]                         - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei

USE ALL.
COMPUTE filter_19_24 = 0.
if missing(Q5) or Q5 ="A2" filter_19_24 = 1.
if  missing(Q19_SQ004)  filter_19_24 = 2.
if Q19_SQ004 = 0 filter_19_24 = 2.
if missing(v24__U5) filter_19_24 = 2.
if v24__U5 = 0 filter_19_24 = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19_24 = 0).
VARIABLE LABELS filter_$ 'filter_19_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=Q19_SQ004 v24__U5
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Questão 18. Por favor, avalie seu sistema ERP de acordo com a escala na tabela a seguir:
* [O meu sistema ERP abre muitas janelas ou visualizações simultaneamente o qe prejudica minha compreenssão do sistema.]
* Questão 23. Como você avalia as seguintes estratégias para lidar com problemas no uso do sistema ERP?
* [Orientação e Suporte ao Usuário]                         - Concordo Completamente / Concordo Parcialmente / Não Concordo Nem Discordo / Discordo Parcialmente / Discordo Completamente / Eu Não Sei

USE ALL.
COMPUTE filter_19_24 = 0.
if missing(Q5) or Q5 ="A2" filter_19_24 = 1.
if  missing(Q19_SQ005)  filter_19_24 = 2.
if Q19_SQ005 = 0 filter_19_24 = 2.
if missing(v24__U5) filter_19_24 = 2.
if v24__U5 = 0 filter_19_24 = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19_24 = 0).
VARIABLE LABELS filter_$ 'filter_19_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=Q19_SQ005 v24__U5
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Analise 007
* 

USE ALL.
COMPUTE filter_19 = 0.
if missing(Q5) or Q5 ="A2" filter_19 = 1.
if missing(Q19_SQ001) or missing(Q19_SQ002) or missing(Q19_SQ004)  or missing(Q19_SQ005) filter_19 = 2.
if Q19_SQ001 = 0 or Q19_SQ002 = 0 or Q19_SQ004 = 0 or Q19_SQ005 = 0 filter_19 = 3.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19 = 0).
VARIABLE LABELS filter_$ 'filter_19 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* Analise 007a

USE ALL.
compute filter_19 = 0.
if missing(Q5) or Q5 ="A2" filter_19 = 1.
if  missing(Q19_SQ001) or missing(Q19_SQ002) filter_19 = 2.
if  Q19_SQ001 = 0 or Q19_SQ002 = 0 filter_19 = 3.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19 = 0).
VARIABLE LABELS filter_$ 'filter_19 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=Q19_SQ001 Q19_SQ002
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Analise 007b

USE ALL.
compute filter_19 = 0.
if missing(Q5) or Q5 ="A2" filter_19 = 1.
if  missing(Q19_SQ002) or missing(Q19_SQ004) filter_19 = 2.
if  Q19_SQ002 = 0 or Q19_SQ004 = 0 filter_19 = 3.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19 = 0).
VARIABLE LABELS filter_$ 'filter_19 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=Q19_SQ002 Q19_SQ004
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.


* Analise 007c

USE ALL.
compute filter_19 = 0.
if missing(Q5) or Q5 ="A2" filter_19 = 1.
if  missing(Q19_SQ001) or missing(Q19_SQ004) filter_19 = 2.
if  Q19_SQ001 = 0 or Q19_SQ004 = 0 filter_19 = 3.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19 = 0).
VARIABLE LABELS filter_$ 'filter_19 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=Q19_SQ001 Q19_SQ004
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.


* Analise 007d
* V17 - Q18 - Questão 17. Você conhece plenamente todas as etapas necessárias do processo para realizar suas tarefas (por exemplo, realizar uma transação, bancária, inserir um pedido, inserir uma Ordem de Produção)?
* V18 - Q19_SQ001 - Questão 18. Por favor, avalie seu sistema ERP de acordo com a escala na tabela a seguir:
*                                                  [O meu sistema ERP oferece uma ampla gama de funcionalidades de suporte para lidar com problemas (por exemplo, explicar causas, oferecer soluções, assistência).] 
* V22 - Q22 - Questão 21. Você está sempre ciente das conseqüências de suas ações? (por exemplo, alterações no sistema resultantes, efeitos colaterais, operações de fluxo de trabalho afetadas)

 * Freqüências e médias das classificações das 3 variáveis de incerteza.

USE ALL.
compute filter_know = 0.
if missing(Q5) or Q5 ="A2" filter_know = 1.
if missing(v_17) filter_know = 2.
if v_17 = 0 filter_know = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_know = 0).
VARIABLE LABELS filter_$ 'filter_know = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=v_17 
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v_17 DISPLAY=LABEL 
  /TABLE BY v_17 [S][MEAN F40.2].

CTABLES 
  /VLABELS VARIABLES=v_17 DISPLAY=LABEL 
  /TABLE BY v_17 [S][STDDEV F40.2].


* Analise 007e

USE ALL.
compute filter_know = 0.
if missing(Q5) or Q5 ="A2" filter_know = 1.
if missing(v_18) filter_know = 2.
if v_18 = 0 filter_know = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_know = 0).
VARIABLE LABELS filter_$ 'filter_know = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=v_18 
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v_18 DISPLAY=LABEL 
  /TABLE BY v_18 [S][MEAN F40.2].

CTABLES 
  /VLABELS VARIABLES=v_18 DISPLAY=LABEL 
  /TABLE BY v_18 [S][STDDEV F40.2].

* Analise 007f

USE ALL
compute filter_know = 0.
if missing(Q5) or Q5 ="A2" filter_know = 1.
if missing(v_22) filter_know = 2.
if v_22 = 0 filter_know = 2.
exeCUTE.

USE ALL.
COMPUTE filter_$=(filter_know = 0).
VARIABLE LABELS filter_$ 'filter_know = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=v_22 
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v_22 DISPLAY=LABEL 
  /TABLE BY v_22 [S][MEAN F40.2].

CTABLES 
  /VLABELS VARIABLES=v_22 DISPLAY=LABEL 
  /TABLE BY v_22 [S][STDDEV F40.2].

* Analise 007g

use all.
compute filter_know = 0.
if missing(Q5) or Q5 ="A2" filter_know = 1.
if missing(v_17) or missing(v_18) or missing(v_22) filter_know = 2.
if v_17 = 0 or v_18 = 0 or v_22 = 0 filter_know = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_know = 0).
VARIABLE LABELS filter_$ 'filter_know = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS 
  /VARIABLES=v_17 v_18 v_22 
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.

CORRELATIONS 
  /VARIABLES=v_17 v_18_2 v_22 
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.

CORRELATIONS 
  /VARIABLES=v_17 v_18_4 v_22 
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.

 * Analise 008
 * Questão 34. Há quantos anos você trabalha na empresa?
 * Questão 35. Há quanto tempo você usa Sistemas ERP no Geral?
 * Questão 36. Como você auto avalia sua experiência com sistemas ERP?

USE ALL.
FREQUENCIES VARIABLES=v_34 
  /ORDER=ANALYSIS.

USE ALL.
FREQUENCIES VARIABLES=v_35 
  /ORDER=ANALYSIS.

USE ALL.
FREQUENCIES VARIABLES=v_36 
  /ORDER=ANALYSIS.

USE ALL.
FREQUENCIES VARIABLES=v_22
  /ORDER=ANALYSIS.

USE ALL.
FREQUENCIES VARIABLES=v_18
  /ORDER=ANALYSIS.

USE ALL.
FREQUENCIES VARIABLES=v_17
  /ORDER=ANALYSIS.

USE ALL.
COMPUTE filter_know = 0.
IF missing(Q5) or Q5 ="A2" filter_know = 1.
IF missing(v_17) or missing(v_18) or missing(v_22) or missing(v_34) or missing(v_35) or missing(v_36) filter_know = 2.
IF v_17 = 0 or v_18 = 0 or v_22 = 0 or v_34 = 0 or v_35 = 0 or v_36 = 0 filter_know = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_know = 0).
VARIABLE LABELS filter_$ 'filter_know = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


CORRELATIONS 
  /VARIABLES=v_17 v_18 v_22 v_34 v_35 v_36
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.

* Analise 008b
* Questão 01. Quantos funcionários sua empresa tem?
* Questão 04. Que posição você ocupa em sua empresa?

COMPUTE v1 = 0.
if Q1 = "A5" v1 = 0.
if Q1 = "A4" v1 = 1.
if Q1 = "A3" v1 = 2.
if Q1 = "A2" v1 = 3.
if Q1 = "A1" v1 = 4.
EXECUTE.

COMPUTE v4 = 0.
if Q4 = "A1" v4 = 1.
if Q4 = "A2" v4 = 2.
if Q4 = "A3" v4 = 3.
if Q4 = "A4" v4 = 4.
if Q4 = "A5" v4 = 5.
EXECUTE.
  
USE ALL.
FREQUENCIES VARIABLES=v1 
  /ORDER=ANALYSIS.

USE ALL.
FREQUENCIES VARIABLES=v4 
  /ORDER=ANALYSIS.

COMPUTE filter_know = 0.
IF missing(Q5) or Q5 ="A2" filter_know = 1.
IF missing(v_17) or missing(v_18) or missing(v_22) or missing(v_34) or missing(v_35) or missing(v_36) or missing(v1) or missing(v4) filter_know = 2.
IF v_17 = 0 or v_18 = 0 or v_22 = 0 or v_34 = 0 or v_35 = 0 or v_36 = 0 or v1 = 0  or v4 = 0 filter_know = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_know = 0).
VARIABLE LABELS filter_$ 'filter_know = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS 
  /VARIABLES=v_17 v_18 v_22 v_34 v_35 v_36 v1 v4
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.


* Analise 009

USE ALL.

FREQUENCIES VARIABLES=v24__U4
  /ORDER=ANALYSIS.

compute filter_24 = 0.
IF missing(Q5) or Q5 ="A2" filter_24 = 1.
if missing(v24__U4) or v24__U4 = 0 filter_24 = 2.
execute.

USE ALL.
COMPUTE filter_$=(filter_24 = 0).
VARIABLE LABELS filter_$ 'filter_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=v24__U4 
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v24__U4 DISPLAY=LABEL 
  /TABLE BY v24__U4 [S][MEAN F40.2].

* Analise 009b

USE ALL.
compute filter_24 = 0.
IF missing(Q5) or Q5 ="A2" filter_24 = 1.
if missing(v24__U7) or v24__U7 = 0 filter_24 = 2.
execute.

USE ALL.
COMPUTE filter_$=(filter_24 = 0).
VARIABLE LABELS filter_$ 'filter_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=v24__U7 
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v24__U7 DISPLAY=LABEL 
  /TABLE BY v24__U7 [S][MEAN F40.2].

* Analise 009c

use all.
compute filter_24 = 0.
IF missing(Q5) or Q5 ="A2" filter_24 = 1.
if missing(v24__U7) or v24__U7 = 0 filter_24 = 2.
if missing(v24__U4) or v24__U4 = 0 filter_24 = 2.
execute.

USE ALL.
COMPUTE filter_$=(filter_24 = 0).
VARIABLE LABELS filter_$ 'filter_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS 
  /VARIABLES=v24__U4 v24__U7
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.


* Analise 009d

*In den Branchen und der Produktion.

USE ALL.
compute filter_24 = 0.
IF missing(Q5) or Q5 ="A2" filter_24 = 1.
if missing(v24__U7) or v24__U7 = 0 filter_24 = 2.
if missing(v24__U4) or v24__U4 = 0 filter_24 = 2.
if missing(v2) or v2 = 0 filter_24 = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_24 = 0).
VARIABLE LABELS filter_$ 'filter_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

GLM v24__U4 v24__U7 BY v2 
  /WSFACTOR=Multi 2 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(Multi*v2 Multi v2) 
  /EMMEANS=TABLES(Multi) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(v2) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(v2*Multi) COMPARE(v2) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=Multi 
  /DESIGN=v2.

* Analise 010

USE ALL.
FREQUENCIES VARIABLES= v25  
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= v25__U2   
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES= v2   
  /ORDER=ANALYSIS.


* Analise 010a

USE ALL.
compute filter_prod25_26 = 0.
IF missing(Q5) or Q5 ="A2" filter_prod25_26 = 1.
if missing(v25) or v25 = 0 filter_prod25_26 = 2.
if v2 < 1 or v2 > 1 filter_prod25_26 = 3.
execute.

FREQUENCIES VARIABLES= filter_prod25_26  
  /ORDER=ANALYSIS.

USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 0).
VARIABLE LABELS filter_$ 'filter_prod25_26 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* Freqüências e Média 

USE ALL.
FREQUENCIES VARIABLES=v25 
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v25 DISPLAY=LABEL 
  /TABLE BY v25 [S][MEAN F40.2].

USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 3).
VARIABLE LABELS filter_$ 'filter_prod25_26 = 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* Freqüências e Média 

FREQUENCIES VARIABLES=v25 
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v25 DISPLAY=LABEL 
  /TABLE BY v25 [S][MEAN F40.2].

* Analise 010b

USE ALL.
compute filter_prod25_26 = 0.
IF missing(Q5) or Q5 ="A2" filter_prod25_26 = 1.
if missing(v25__U2) or v25__U2 = 0 filter_prod25_26 = 2.
if v2 < 1 or v2 > 1 filter_prod25_26 = 3.
execute.

FREQUENCIES VARIABLES= filter_prod25_26  
  /ORDER=ANALYSIS.

USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 0).
VARIABLE LABELS filter_$ 'filter_prod25_26 >= 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=v25__U2
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v25__U2 DISPLAY=LABEL 
  /TABLE BY v25__U2 [S][MEAN F40.2].

USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 3).
VARIABLE LABELS filter_$ 'filter_prod25_26 = 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


FREQUENCIES VARIABLES=v25__U2
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v25__U2 DISPLAY=LABEL 
  /TABLE BY v25__U2 [S][MEAN F40.2].

* Analise 010c

USE ALL.
compute filter_prod25_26 = 0.
IF missing(Q5) or Q5 ="A2" filter_prod25_26 = 1.
if missing(v26) or v26 = 0 filter_prod25_26 = 2.
if v2 < 1 or v2 > 1 filter_prod25_26 = 3.
execute.


USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 0).
VARIABLE LABELS filter_$ 'filter_prod25_26 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=v26 
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v26 DISPLAY=LABEL 
  /TABLE BY v26 [S][MEAN F40.2].

USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 3).
VARIABLE LABELS filter_$ 'filter_prod25_26 = 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=v26 
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v26 DISPLAY=LABEL 
  /TABLE BY v26 [S][MEAN F40.2].

* Analise 010d

USE ALL.
compute filter_prod25_26 = 0.
IF missing(Q5) or Q5 ="A2" filter_prod25_26 = 1.
if missing(v26__U2) or v26__U2 = 0 filter_prod25_26 = 2.
if v2 < 1 or v2 > 1 filter_prod25_26 = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 0).
VARIABLE LABELS filter_$ 'filter_prod25_26 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=v26__U2 
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v26__U2 DISPLAY=LABEL 
  /TABLE BY v26__U2 [S][MEAN F40.2].

USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 3).
VARIABLE LABELS filter_$ 'filter_prod25_26 = 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=v26__U2 
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=v26__U2 DISPLAY=LABEL 
  /TABLE BY v26__U2 [S][MEAN F40.2].


* Analise 011
* Diferenças entre as classificações de 25 e 26.

USE ALL.
compute filter_prod25_26 = 0.
IF missing(Q5) or Q5 ="A2" filter_prod25_26 = 1.
if missing(v25) or v25 = 0 or missing(v26) or v26 = 0 filter_prod25_26 = 2.
if v2 < 1 or v2 > 1 filter_prod25_26 = 3.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 0).
VARIABLE LABELS filter_$ 'filter_prod25_26 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST PAIRS=v25 WITH v26 (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.

USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 3).
VARIABLE LABELS filter_$ 'filter_prod25_26 = 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

USE ALL.
T-TEST PAIRS=v25 WITH v26 (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.

* Analise 011b

USE ALL.
compute filter_prod25_26 = 0.
IF missing(Q5) or Q5 ="A2" filter_prod25_26 = 1.
if missing(v25__U2) or v25__U2 = 0 or missing(v26__U2) or v26__U2 = 0 filter_prod25_26 = 2.
if v2 < 1 or v2 > 1 filter_prod25_26 = 3.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 0).
VARIABLE LABELS filter_$ 'filter_prod25_26 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST PAIRS=v25__U2 WITH v26__U2 (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.

USE ALL.
COMPUTE filter_$=(filter_prod25_26 = 3).
VARIABLE LABELS filter_$ 'filter_prod25_26 = 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

use all.
T-TEST PAIRS=v25__U2 WITH v26__U2 (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.

* Analise 012a -  v19 = Q19_SQ001 v20 = Q20_SQ001

USE ALL.
compute filter_19_20 = 0.
IF missing(Q5) or Q5 ="A2" filter_19_20 = 1.
if missing(v19) or v19 = 0 or missing(v20) or v20 = 0  filter_19_20 = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19_20 = 0).
VARIABLE LABELS filter_$ 'filter_19_20 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=v19 v20
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

DESCRIPTIVES VARIABLES=v19 v20 
  /STATISTICS=MEAN STDDEV MIN MAX.

* Analise 012b

USE ALL.  
compute filter_19_20 = 0.
IF missing(Q5) or Q5 ="A2" filter_19_20 = 1.
if missing(v19__U2) or v19__U2 = 0 or missing(v20__U2) or v20__U2 = 0  filter_19_20 = 2.
exeCUTE.

USE ALL.
COMPUTE filter_$=(filter_19_20 = 0).
VARIABLE LABELS filter_$ 'filter_19_20 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=v19__U2 v20__U2
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

DESCRIPTIVES VARIABLES=v19__U2 v20__U2 
  /STATISTICS=MEAN STDDEV MIN MAX.


* Analise 012c

USE ALL.  
compute filter_19_20 = 0.
IF missing(Q5) or Q5 ="A2" filter_19_20 = 1.
if missing(v19__U3) or v19__U3 = 0 or missing(v20__U3) or v20__U3 = 0  filter_19_20 = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19_20 = 0).
VARIABLE LABELS filter_$ 'filter_19_20 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


CORRELATIONS
  /VARIABLES=v19__U3 v20__U3
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

DESCRIPTIVES VARIABLES=v19__U3 v20__U3 
  /STATISTICS=MEAN STDDEV MIN MAX.

* Analise 012d

USE ALL.  
compute filter_19_20 = 0.
IF missing(Q5) or Q5 ="A2" filter_19_20 = 1.
if missing(v19__U4) or v19__U4 = 0 or missing(v20__U4) or v20__U4 = 0  filter_19_20 = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_19_20 = 0).
VARIABLE LABELS filter_$ 'filter_19_20 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


CORRELATIONS
  /VARIABLES=v19__U4 v20__U4
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

DESCRIPTIVES VARIABLES=v19__U4 v20__U4 
  /STATISTICS=MEAN STDDEV MIN MAX.

* Analise 012e

USE ALL.  
compute filter_19_20 = 0.
IF missing(Q5) or Q5 ="A2" filter_19_20 = 1.
if missing(v19__U5) or v19__U5 = 0 or missing(v20__U5) or v20__U5 = 0  filter_19_20 = 2.
execute.


USE ALL.
COMPUTE filter_$=(filter_19_20 = 0).
VARIABLE LABELS filter_$ 'filter_19_20 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


CORRELATIONS
  /VARIABLES=v19__U5 v20__U5
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

DESCRIPTIVES VARIABLES=v19__U5 v20__U5 
  /STATISTICS=MEAN STDDEV MIN MAX.


* Analise 012f

*Diferenças ERP / SW Adicional

USE ALL.  
compute filter_19_20 = 0.
IF missing(Q5) or Q5 ="A2" filter_19_20 = 1.
if missing(v19) or v19 = 0 or missing(v20) or v20 = 0  filter_19_20 = 2.
if missing(v19__U2) or v19__U2 = 0 or missing(v20__U2) or v20__U2 = 0  filter_19_20 = 2.
if missing(v19__U3) or v19__U3 = 0 or missing(v20__U3) or v20__U3 = 0  filter_19_20 = 2.
if missing(v19__U4) or v19__U4 = 0 or missing(v20__U4) or v20__U4 = 0  filter_19_20 = 2.
if missing(v19__U5) or v19__U5 = 0 or missing(v20__U5) or v20__U5 = 0  filter_19_20 = 2.
execute.

USE ALL.
COMPUTE filter_$=(filter_19_20 = 0).
VARIABLE LABELS filter_$ 'filter_19_20 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


GLM v19 v19__U2 v19__U3 v19__U4 v19__U5 v20 v20__U2 v20__U3 v20__U4 v20__U5
  /WSFACTOR=System 2 Polynomial Rating 5 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Rating*System)
 /EMMEANS=TABLES(Rating*System) COMPARE(System) ADJ(BONFERRONI)
 /PRINT=DESCRIPTIVE
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=System Rating System*Rating.

* Analise 013

USE ALL.
FREQUENCIES VARIABLES=Q33b
  /ORDER=ANALYSIS.

USE ALL.
FREQUENCIES VARIABLES=Q33c
  /ORDER=ANALYSIS.

* Analise 014 - Onde usa-se o ERP

USE ALL.
compute ERP_num = Q11_SQ001 + Q11_SQ002 + Q11_SQ003 + Q11_SQ004 + Q11_SQ005 + Q11_SQ006 + Q11_SQ007 + Q11_SQ008.
EXECUTE. 

USE ALL.
compute filter_ERP = 0.
IF missing(Q5) or Q5 ="A2" filter_ERP = 1.
if missing(ERP_num) filter_ERP = 2.
EXECUTE. 

USE ALL.
COMPUTE filter_$=(filter_ERP = 0).
VARIABLE LABELS filter_$ 'filter_ERP = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CTABLES
  /VLABELS VARIABLES=ERP_num DISPLAY=LABEL
  /TABLE BY ERP_num [S][MEAN].

CTABLES 
  /VLABELS VARIABLES=ERP_num DISPLAY=LABEL 
  /TABLE BY ERP_num [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=ERP_num ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES=Q11_SQ001 Q11_SQ002 Q11_SQ003 Q11_SQ004 Q11_SQ005 Q11_SQ006 Q11_SQ007 Q11_SQ008 DISPLAY=LABEL 
  /TABLE  BY   Q11_SQ001 [ROWPCT.COUNT F40.2] + 
                       Q11_SQ002 [ROWPCT.COUNT F40.2] + 
                       Q11_SQ003 [ROWPCT.COUNT F40.2] + 
                       Q11_SQ004 [ROWPCT.COUNT F40.2] + 
                       Q11_SQ005 [ROWPCT.COUNT F40.2] + 
                       Q11_SQ006 [ROWPCT.COUNT F40.2] + 
                       Q11_SQ007 [ROWPCT.COUNT F40.2] +  
                       Q11_SQ008 [ROWPCT.COUNT F40.2]  
  /CATEGORIES VARIABLES=Q11_SQ001 Q11_SQ002 Q11_SQ003 Q11_SQ004 Q11_SQ005 Q11_SQ006 Q11_SQ007 Q11_SQ008 ORDER=A KEY=VALUE EMPTY=EXCLUDE.


 * Analise 015

*.................................................................................................................................................................................
*FS_4 Mobil und privat

*Welche Unternehmensbereiche werden mobil genutzt?.

*Mobil genutzt - F31.

USE ALL.
compute Mobil_num = Q31_SQ001 + Q31_SQ002 + Q31_SQ003 + Q31_SQ004 + Q31_SQ005 + Q31_SQ006 + Q31_SQ007 + Q31_SQ008.
EXECUTE. 

compute filter_Mobil = 0.
IF missing(Q5) or Q5 ="A2" filter_Mobil = 1.
if missing(Mobil_num) filter_Mobil = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_Mobil = 0).
VARIABLE LABELS filter_$ 'filter_Mobil = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CTABLES
  /VLABELS VARIABLES=Mobil_num DISPLAY=LABEL
  /TABLE BY Mobil_num [S][MEAN].

CTABLES 
  /VLABELS VARIABLES=Mobil_num DISPLAY=LABEL 
  /TABLE BY Mobil_num [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Mobil_num ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES=Q31_SQ001  Q31_SQ002  Q31_SQ003  Q31_SQ004  Q31_SQ005  Q31_SQ006  Q31_SQ007  Q31_SQ008 DISPLAY=LABEL 
  /TABLE BY Q31_SQ001 [ROWPCT.COUNT F40.2] + Q31_SQ002 [ROWPCT.COUNT F40.2] 
 + Q31_SQ003 [ROWPCT.COUNT F40.2] + Q31_SQ004 [ROWPCT.COUNT F40.2] 
 + Q31_SQ005 [ROWPCT.COUNT F40.2] + Q31_SQ006 [ROWPCT.COUNT F40.2]
 + Q31_SQ007 [ROWPCT.COUNT F40.2] + Q31_SQ008 [ROWPCT.COUNT F40.2]  
  /CATEGORIES VARIABLES=Q31_SQ001  Q31_SQ002  Q31_SQ003  Q31_SQ004  Q31_SQ005  Q31_SQ006  Q31_SQ007  Q31_SQ008 ORDER=A KEY=VALUE EMPTY=EXCLUDE.


* Analise 016
*Pro Einsatzgebiet Mobilanteile getrennt für diejenigen, die ERP dort nutzen oder nicht.

USE ALL.
compute filter_mobilERP = 0.
IF missing(Q5) or Q5 ="A2" filter_mobilERP = 1.
if missing(ERP_num) or missing(Mobil_num) filter_mobilERP = 2.
execute.

USE ALL.
COMPUTE filter_$=(filter_mobilERP = 0).
VARIABLE LABELS filter_$ 'filter_mobilERP = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CTABLES 
  /VLABELS VARIABLES=Q11_SQ001 Q31_SQ001 DISPLAY=LABEL 
  /TABLE BY Q11_SQ001 > Q31_SQ001 [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Q11_SQ001 Q31_SQ001 ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES=Q11_SQ002 Q31_SQ002 DISPLAY=LABEL 
  /TABLE BY Q11_SQ002 > Q31_SQ002 [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Q11_SQ002 Q31_SQ002 ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES=Q11_SQ003 Q31_SQ004 DISPLAY=LABEL 
  /TABLE BY Q11_SQ003 > Q31_SQ004 [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Q11_SQ003 Q31_SQ004 ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES=Q11_SQ004 Q31_SQ003 DISPLAY=LABEL 
  /TABLE BY Q11_SQ004 > Q31_SQ003 [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Q11_SQ004 Q31_SQ003 ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES=Q11_SQ004 Q31_SQ005 DISPLAY=LABEL 
  /TABLE BY Q11_SQ004 > Q31_SQ005 [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Q11_SQ004 Q31_SQ005 ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES=Q11_SQ005 Q31_SQ006 DISPLAY=LABEL 
  /TABLE BY Q11_SQ005 > Q31_SQ006 [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Q11_SQ005 Q31_SQ006 ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES=Q11_SQ007 Q31_SQ007 DISPLAY=LABEL 
  /TABLE BY Q11_SQ007 > Q31_SQ007 [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Q11_SQ007 Q31_SQ007 ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES=Q11_SQ008 Q31_SQ008 DISPLAY=LABEL 
  /TABLE BY Q11_SQ008 > Q31_SQ008 [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Q11_SQ008 Q31_SQ008 ORDER=A KEY=VALUE EMPTY=EXCLUDE.

* Analise 017
*FS_4.1 Dienstliche und private Mobilnutzung.

*Mobil dienstlich - F30.

USE ALL.
compute Mob_work_num = Q30_SQ002 + Q30_SQ003 + Q30_SQ004 + Q30_SQ005 + Q30_SQ006.
if  Q30_SQ001 = 1 Mob_work_num = 0.
EXECUTE. 

compute filter_Mob_work = 0.
IF missing(Q5) or Q5 ="A2" filter_Mob_work = 1.
if missing(Mob_work_num) filter_Mob_work = 2.
exeCUTE.

USE ALL.
COMPUTE filter_$=(filter_Mob_work = 0).
VARIABLE LABELS filter_$ 'filter_Mob_work = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CTABLES
  /VLABELS VARIABLES=Mob_work_num DISPLAY=LABEL
  /TABLE BY Mob_work_num [S][MEAN].

CTABLES 
  /VLABELS VARIABLES=Mob_work_num DISPLAY=LABEL 
  /TABLE BY Mob_work_num [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Mob_work_num ORDER=A KEY=VALUE EMPTY=EXCLUDE.

CTABLES 
  /VLABELS VARIABLES= Q30_SQ001 Q30_SQ002 Q30_SQ003 Q30_SQ004 Q30_SQ005 Q30_SQ006 DISPLAY=LABEL 
  /TABLE BY     Q30_SQ001 [ROWPCT.COUNT F40.2] + 
                        Q30_SQ002 [ROWPCT.COUNT F40.2] + 
                        Q30_SQ003 [ROWPCT.COUNT F40.2] + 
                        Q30_SQ004 [ROWPCT.COUNT F40.2] + 
                        Q30_SQ005 [ROWPCT.COUNT F40.2] + 
                        Q30_SQ006 [ROWPCT.COUNT F40.2]  
  /CATEGORIES VARIABLES= Q30_SQ001 Q30_SQ002 Q30_SQ003 Q30_SQ004 Q30_SQ005 Q30_SQ006 ORDER=A KEY=VALUE EMPTY=EXCLUDE.


* Analise 018
*Mobil privat - F37.

USE ALL.
compute Mob_priv_num =  Q37_SQ001 + Q37_SQ002 + Q37_SQ003 + Q37_SQ004 + Q37_SQ005 + Q37_SQ006.
if  Q37_SQ001 = 1 Mob_priv_num = 0.
EXECUTE. 

compute filter_Mob_priv = 0.
IF missing(Q5) or Q5 ="A2" filter_Mob_priv = 1.
if missing(Mob_priv_num) filter_Mob_priv = 2.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_Mob_priv = 0).
VARIABLE LABELS filter_$ 'filter_Mob_priv = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CTABLES
  /VLABELS VARIABLES=Mob_priv_num DISPLAY=LABEL
  /TABLE BY Mob_priv_num [S][MEAN].

CTABLES 
  /VLABELS VARIABLES=Mob_priv_num DISPLAY=LABEL 
  /TABLE BY Mob_priv_num [ROWPCT.COUNT F40.2] 
  /CATEGORIES VARIABLES=Mob_priv_num ORDER=A KEY=VALUE EMPTY=EXCLUDE.

USE ALL.
FREQUENCIES VARIABLES=Q37_SQ001 Q37_SQ002 Q37_SQ003 Q37_SQ004 Q37_SQ005
  /ORDER=ANALYSIS.

USE ALL.
FREQUENCIES VARIABLES=Q37_SQ001 Q37_SQ002 Q37_SQ003 Q37_SQ004 Q37_SQ005
  /ORDER=ANALYSIS.

CTABLES 
  /VLABELS VARIABLES=Q37_SQ001 Q37_SQ002 Q37_SQ003 Q37_SQ004 Q37_SQ005 Q37_SQ006 DISPLAY=LABEL 
  /TABLE BY Q37_SQ001 [ROWPCT.COUNT F40.2] + 
                    Q37_SQ002 [ROWPCT.COUNT F40.2] + 
                    Q37_SQ003 [ROWPCT.COUNT F40.2] + 
                    Q37_SQ004 [ROWPCT.COUNT F40.2] + 
                    Q37_SQ005 [ROWPCT.COUNT F40.2] + 
                    Q37_SQ006 [ROWPCT.COUNT F40.2]  
  /CATEGORIES VARIABLES=Q37_SQ001 Q37_SQ002 Q37_SQ003 Q37_SQ004 Q37_SQ005 Q37_SQ006 ORDER=A KEY=VALUE EMPTY=EXCLUDE.


* Analise 20
*Mobil dienstlich x privat.

USE ALL.
compute filter_Mob_workpriv = 0.
IF missing(Q5) or Q5 ="A2" filter_Mob_workpriv = 1.
if missing(Mob_work_num) filter_Mob_workpriv = 2.
if missing(Mob_priv_num) filter_Mob_workpriv = 3.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_Mob_workpriv = 0).
VARIABLE LABELS filter_$ 'filter_Mob_workpriv = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* Analise 019

CORRELATIONS 
  /VARIABLES=Mob_work_num Mob_priv_num
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.

T-TEST PAIRS=Mob_work_num WITH Mob_priv_num (PAIRED) 
  /CRITERIA=CI(.9500) 
  /MISSING=ANALYSIS.

* Analise 020
*FS_4.2 Privatnutzung smartphone oder tablet und ERP-Ratings (19, 24).
*Haber der Geräte bestimmen.

USE ALL.
compute Haber_mobile = 0.
if Q37_SQ004 = 0 or  Q37_SQ005 = 0 Haber_mobile = 0.
if Q37_SQ004 = 1 or  Q37_SQ005 = 1 Haber_mobile = 1.
EXECUTE.

FREQUENCIES VARIABLES=Q37_SQ001 Q37_SQ002 Q37_SQ003 Q37_SQ004 Q37_SQ005
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=Haber_mobile 
  /ORDER=ANALYSIS.

*Unterschiede zwischen diesen in den Ratings von 19 (ERP).

compute filter_Haber_mobile = 0.
IF missing(Q5) or Q5 ="A2" filter_Haber_mobile = 1.
if missing(Haber_mobile) filter_Haber_mobile = 2.
if missing(v19) or missing(v19__U2) or missing(v19__U3) or missing(v19__U4) or missing(v19__U5)  filter_Haber_mobile = 3.
if v19 = 0 or v19__U2 = 0 or v19__U3 = 0 or v19__U4 = 0 or v19__U5 = 0 filter_Haber_mobile = 3.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_Haber_mobile = 0).
VARIABLE LABELS filter_$ 'filter_Haber_mobile = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

GLM v19 v19__U2 v19__U3 v19__U4 v19__U5 BY Haber_mobile 
  /WSFACTOR=Rating19 5 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(Rating19*Haber_mobile Rating19 Haber_mobile) 
  /EMMEANS=TABLES(Rating19) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Haber_mobile) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Haber_mobile*Rating19) COMPARE(Haber_mobile) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=Rating19 
  /DESIGN=Haber_mobile.


*Analise 021a
*Diferenças entre elas nas classificações de 24 (estratégias).

use all.
compute filter_Haber_mobile = 0.
IF missing(Q5) or Q5 ="A2" filter_Haber_mobile = 1.
if missing(Haber_mobile) filter_Haber_mobile = 2.
if missing(v24__U1) or missing(v24__U2) or missing(v24__U3) or missing(v24__U4) or missing(v24__U5)  or missing(v24__U6) or missing(v24__U7) or missing(v24__U8) filter_Haber_mobile = 4.
if v24__U1 = 0 or v24__U2 = 0 or v24__U3 = 0 or v24__U4 = 0 or v24__U5 = 0 or v24__U6 = 0 or v24__U7 = 0 or v24__U8 = 0 filter_Haber_mobile = 4.
execute.

USE ALL.
COMPUTE filter_$=(filter_Haber_mobile = 0).
VARIABLE LABELS filter_$ 'filter_Haber_mobile = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

GLM v24__U1 v24__U2 v24__U3 v24__U4 v24__U5 v24__U6 v24__U7 v24__U8 BY Haber_mobile 
  /WSFACTOR=Rating24 8 Polynomial 
  /METHOD=SSTYPE(3) 
  /PLOT=PROFILE(Rating24*Haber_mobile Rating24 Haber_mobile) 
  /EMMEANS=TABLES(Rating24) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Haber_mobile) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(Haber_mobile*Rating24) COMPARE(Haber_mobile) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=Rating24 
  /DESIGN=Haber_mobile.

*Analise 021b
*Neue Fragestellungen - irrelevant.

*Binnenkorrelationen 19.

USE ALL.
compute filter_19 = 0.
if v19 = 0 or v19__U2 = 0 or v19__U3 = 0 or v19__U4 = 0 or v19__U5 = 0 filter_19 = 3.
IF missing(Q5) or Q5 ="A2" filter_19 = 1.
if missing(v19) or missing(v19__U2) or missing(v19__U3) or missing(v19__U4) or missing(v19__U5)  filter_19 = 2.
execute.

USE ALL.
COMPUTE filter_$=(filter_19 = 0).
VARIABLE LABELS filter_$ 'filter_19 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS 
  /VARIABLES=v19 v19__U2 v19__U3 v19__U4 v19__U5 
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.

*Analise 021c
*Binnenkorrelationen 24.

use all.
compute filter_24 = 0.
IF missing(Q5) or Q5 ="A2" filter_24 = 1.
if missing(v24__U1) or missing(v24__U2) or missing(v24__U3) or missing(v24__U4) or missing(v24__U5) or missing(v24__U6) or missing(v24__U7) or missing(v24__U8)  filter_24 = 2.
if v24__U1 = 0 or v24__U2 = 0 or v24__U3 = 0 or v24__U4 = 0 or v24__U5 = 0 or v24__U6 = 0 or v24__U7 = 0 or v24__U8 = 0 filter_24 = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_24 = 0).
VARIABLE LABELS filter_$ 'filter_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


CORRELATIONS 
  /VARIABLES=v24__U1 v24__U2 v24__U3 v24__U4 v24__U5  v24__U6 v24__U7 v24__U8
  /PRINT=TWOTAIL NOSIG 
  /MISSING=PAIRWISE.

* Analise 021d0

USE ALL.
compute filter_19_24 = 0.
IF missing(Q5) or Q5 ="A2" filter_19_24 = 1.
if missing(v19__U2) or v19__U2 = 0 filter_19_24 = 2.
if missing(v24__U1) or v24__U1 = 0 filter_19_24 = 2.
execute.

USE ALL.
COMPUTE filter_$=(filter_19_24 = 0).
VARIABLE LABELS filter_$ 'filter_19_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=v19__U2 v24__U1
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Analise 021d1

compute filter_19_24 = 0.
IF missing(Q5) or Q5 ="A2" filter_19_24 = 1.
if missing(v19__U3) or v19__U3 = 0 filter_19_24 = 2.
if missing(v24__U1) or v24__U1 = 0 filter_19_24 = 2.
execute.

USE ALL.
COMPUTE filter_$=(filter_19_24 = 0).
VARIABLE LABELS filter_$ 'filter_19_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=v19__U3 v24__U1
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Analise 021d2

compute filter_19_24 = 0.
IF missing(Q5) or Q5 ="A2" filter_19_24 = 1.
if missing(v19__U2) or v19__U2 = 0 filter_19_24 = 2.
if missing(v24__U2) or v24__U2 = 0 filter_19_24 = 2.
execute.

USE ALL.
COMPUTE filter_$=(filter_19_24 = 0).
VARIABLE LABELS filter_$ 'filter_19_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=v19__U2 v24__U2
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Analise 021d3

USE ALL.  
compute filter_19_24 = 0.
IF missing(Q5) or Q5 ="A2" filter_19_24 = 1.
if missing(v19__U3) or v19__U3 = 0 filter_19_24 = 2.
if missing(v24__U2) or v24__U2 = 0 filter_19_24 = 2.
exeCUTE.

USE ALL.
COMPUTE filter_$=(filter_19_24 = 0).
VARIABLE LABELS filter_$ 'filter_19_24 = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=v19__U3 v24__U2
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* * * * * * * * * *  Novas análises - as realmente relevantes. * * * * * * * * 
* Analise 022a

USE ALL.
compute filter_menu = 0.
IF missing(Q5) or Q5 ="A2" filter_menu = 1.
if missing(menu_num) filter_menu = 2.
if missing(v18) or v18 = 0 filter_menu = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_menu = 0).
VARIABLE LABELS filter_$ 'filter_menu = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST GROUPS=q16_opt1(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v18 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt2(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v18 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt3(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v18 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt4(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v18 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt5(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v18 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt6(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v18 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt7(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v18 
  /CRITERIA=CI(.95).

* Analise 022b

USE ALL.
compute filter_menu = 0.
IF missing(Q5) or Q5 ="A2" filter_menu = 1.
if missing(menu_num) filter_menu = 2.
if missing(v19__U3) or v19__U3 = 0 filter_menu = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_menu = 0).
VARIABLE LABELS filter_$ 'filter_menu = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST GROUPS=q16_opt1(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt2(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt3(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt4(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt5(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt6(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt7(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).


* Analise 022c

compute filter_menu = 0.
IF missing(Q5) or Q5 ="A2" filter_menu = 1.
if missing(menu_num) filter_menu = 2.
if missing(v19__U2) or v19__U2 = 0 filter_menu = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_menu = 0).
VARIABLE LABELS filter_$ 'filter_menu = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST GROUPS=q16_opt1(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt2(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt3(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt4(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt5(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt6(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q16_opt7(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).


* Analise 023a
* Suchfunktionsgruppen.

use all.
compute search_group = 0.
if q23_opt1 = 1 and (q23_opt2 = 0 and q23_opt3 = 0 and q23_opt4 = 0 and q23_opt5 = 0)  search_group = 1.
if ((q23_opt1 = 1 and q23_opt2 = 1) and (q23_opt3 = 0 and q23_opt4 = 0 and q23_opt5 = 0)) search_group = 2.
if ((q23_opt1 = 1 and q23_opt3 = 1) and (q23_opt2 = 0 and q23_opt4 = 0 and q23_opt5 = 0)) search_group = 2.
if ((q23_opt1 = 1 and q23_opt2 = 1 and q23_opt3 = 1) and (q23_opt4 = 0 and q23_opt5 = 0)) search_group = 2.
if q23_opt4 = 1 search_group = 3.
execute.

compute filter_search = 0.
IF missing(Q5) or Q5 ="A2" filter_search = 1.
if missing(search_num) filter_search = 2.
if missing(v18) or v18 = 0 filter_search = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_search = 0).
VARIABLE LABELS filter_$ 'filter_search = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


UNIANOVA v18 BY search_group 
  /METHOD=SSTYPE(3) 
  /INTERCEPT=INCLUDE 
  /EMMEANS=TABLES(search_group) COMPARE ADJ(BONFERRONI) 
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05) 
  /DESIGN=search_group.

* Analise 023b

use all.
compute filter_search = 0.
IF missing(Q5) or Q5 ="A2" filter_search = 1.
if missing(search_num) filter_search = 2.
if missing(v19__U3) or v19__U3 = 0 filter_search = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_search = 0).
VARIABLE LABELS filter_$ 'filter_search = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


UNIANOVA v19__U3 BY search_group 
  /METHOD=SSTYPE(3) 
  /INTERCEPT=INCLUDE 
  /EMMEANS=TABLES(search_group) COMPARE ADJ(BONFERRONI) 
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05) 
  /DESIGN=search_group.

* Analise 023c

use all.
compute filter_search = 0.
IF missing(Q5) or Q5 ="A2" filter_search = 1.
if missing(search_num) filter_search = 2.
if missing(v19__U2) or v19__U2 = 0 filter_search = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_search = 0).
VARIABLE LABELS filter_$ 'filter_search = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


UNIANOVA v19__U2 BY search_group 
  /METHOD=SSTYPE(3) 
  /INTERCEPT=INCLUDE 
  /EMMEANS=TABLES(search_group) COMPARE ADJ(BONFERRONI) 
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05) 
  /DESIGN=search_group.

* Analise 024a

use all.

* F19 und F38.

compute Private_num = q38_opt1 + q38_opt2 + q38_opt3 + q38_opt4 + q38_opt5.
EXECUTE. 

* 19.1.

compute filter_private = 0.
IF missing(Q5) or Q5 ="A2" filter_private = 1.
if missing(Private_num) filter_private = 2.
if missing(v19) or v19 = 0 filter_private = 3.
exe.

USE ALL.
COMPUTE filter_$=(filter_private = 0).
VARIABLE LABELS filter_$ 'filter_private = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST GROUPS=q38_opt1(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt2(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt3(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt4(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt5(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19 
  /CRITERIA=CI(.95).

* Analise 024b

use all.
compute filter_private = 0.
IF missing(Q5) or Q5 ="A2" filter_private = 1.
if missing(Private_num) filter_private = 2.
if missing(v19__U2) or v19__U2 = 0 filter_private = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_private = 0).
VARIABLE LABELS filter_$ 'filter_private = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST GROUPS=q38_opt1(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt2(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt3(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt4(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt5(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U2 
  /CRITERIA=CI(.95).

* Analise 024c
* 19.3.

USE ALL.
compute filter_private = 0.
IF missing(Q5) or Q5 ="A2" filter_private = 1.
if missing(Private_num) filter_private = 2.
if missing(v19__U3) or v19__U3 = 0 filter_private = 3.
EXECUTE.

USE ALL.
COMPUTE filter_$=(filter_private = 0).
VARIABLE LABELS filter_$ 'filter_private = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST GROUPS=q38_opt1(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt2(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt3(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt4(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt5(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U3 
  /CRITERIA=CI(.95).

* Analise 024d
* 19.4.

USE ALL.
compute filter_private = 0.
IF missing(Q5) or Q5 ="A2" filter_private = 1.
if missing(Private_num) filter_private = 2.
if missing(v19__U4) or v19__U4 = 0 filter_private = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_private = 0).
VARIABLE LABELS filter_$ 'filter_private = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST GROUPS=q38_opt1(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U4 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt2(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U4 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt3(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U4 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt4(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U4 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt5(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U4 
  /CRITERIA=CI(.95).


* Analise 024e
*19.5.

use all.
compute filter_private = 0.
IF missing(Q5) or Q5 ="A2" filter_private = 1.
if missing(Private_num) filter_private = 2.
if missing(v19__U5) or v19__U5 = 0 filter_private = 3.
execute.

USE ALL.
COMPUTE filter_$=(filter_private = 0).
VARIABLE LABELS filter_$ 'filter_private = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

T-TEST GROUPS=q38_opt1(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U5 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt2(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U5 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt3(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U5 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt4(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U5 
  /CRITERIA=CI(.95).

T-TEST GROUPS=q38_opt5(0 1) 
  /MISSING=ANALYSIS 
  /VARIABLES=v19__U5 
  /CRITERIA=CI(.95).



FREQUENCIES VARIABLES=Q11_SQ001 Q11_SQ002 Q11_SQ003 Q11_SQ004 Q11_SQ005 Q11_SQ006 Q11_SQ007 Q11_SQ008
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=Ano5_bw
  /ORDER=ANALYSIS.

CTABLES
  /VLABELS VARIABLES=Ano5_bw DISPLAY=LABEL
  /TABLE BY Ano5_bw [S][MEAN].

FREQUENCIES VARIABLES=Q6
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=Q9_SQ001 Q9_SQ002 Q9_SQ003 Q9_SQ004 Q9_SQ005
  /ORDER=ANALYSIS.








SAVE OUTFILE='L:\SPSS\Pesquisa-Até-20072019\dados_anonimizados.sav' 
  /COMPRESSED.





