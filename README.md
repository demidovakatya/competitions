# Competition 1 (MIPT FIVT, ML, Spring 2015)

Вам даны социальные данные о заработной плате. Каждая строчка данных описывает одного человека, каждый столбец — его параметры. Необходимо по параметрам человека научиться предсказывать, превышает ли его суммарный годовой доход 50000$.

## Описание файлов

* `train.csv` — обучающая выборка из 10000 объектов. Последнее поле `CLASS` является предсказываемым и принимает два значения: `-50000` и `50000+`. Так закодирована информация о суммарном годовом доходе описываемого человека (меньше и больше 50000$, соответственно). 
* `test.csv` — контрольная выборка из 4800 объектов. Последнее поле `Id` содержит порядковый номер человека, он будет использоваться при создании файла с вашим решением.
* `sample_submission.csv` — пример решения со всеми предсказаниями равными 0.5.

## Описание полей

* age — `AAGE`
* class of worker — `ACLSWKR`
* industry code — `ADTIND`
* occupation code — `ADTOCC`
* education — `AHGA`
* wage per hour — `AHRSPAY`
* enrolled in edu inst last wk — `AHSCOL`
* marital status — `AMARITL`
* major industry code — `AMJIND`
* major occupation code — `AMJOCC`
* mace — `ARACE`
* hispanic origin — `AREORGN`
* sex — `ASEX`
* member of a labor union — `AUNMEM`
* reason for unemployment — `AUNTYPE`
* full or part time employment stat — `AWKSTAT`
* capital gains — `CAPGAIN`
* capital losses — `CAPLOSS`
* divdends from stocks — `DIVVAL`
* tax filer status — `FILESTAT`
* region of previous residence — `GRINREG`
* state of previous residence — `GRINST`
* detailed household and family stat — `HHDFMX`
* detailed household summary in household — `HHDREL`
* instance weight — `MARSUPWT`
* migration code-change in msa — `MIGMTR1`
* migration code-change in reg — `MIGMTR3`
* migration code-move within reg — `MIGMTR4`
* live in this house 1 year ago — `MIGSAME`
* migration prev res in sunbelt — `MIGSUN`
* num persons worked for employer — `NOEMP`
* family members under — 18 `PARENT`
* country of birthfather — `PEFNTVTY`
* country of birthmother — `PEMNTVTY`
* country of birthself — `PENATVTY`
* citizenship — `PRCITSHP`
* own business or self employed — `SEOTR`
* taxable income amount — `TAXINC`
* fill inc questionnaire for veteran's admin — `VETQVA`
* veterans benefits — `VETYN`
* weeks worked in year — `WKSWORK`
