%{
	#include stdio.h
%}
int numlines = 0;
%%

(END)					{printf("END");}
;						{printf("END_STATEMENT);}
(POINT|point)			{printf("POINT");}
(LINE|line)				{printf("LINE");}
(CIRCLE|circle)			{printf("CIRCLE");}
(RECTANGLE|rectangle)	{printf("RECTANGLE");}
(SET_COLOR|set_color)	{printf("SET_COLOR");}
[0-9]+					{printf("INT");}
[0-9]*\.?[0-9]+			{printf("FLOAT");}
\n						{numlines++;}
\t|\n|\s				;
.						{printf("We have no match at line %d\n",numlines);}


%%