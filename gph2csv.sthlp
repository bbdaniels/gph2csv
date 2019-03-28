{smcl}
{* 28 Mar 2018}{...}
{hline}
help for {hi:gph2csv}
{hline}

{title:Title}

{phang}{cmdab:gph2csv} {hline 2} Exports graph plotting points to CSV for later reproduction.

{title:Syntax}

{p 4 6 }
{cmdab:gph2csv} using {it:"/path/to/output.csv"}, [replace]

{marker desc}
{title:Description}

{pstd}After creating a graph (with the graph window open),
{cmdab:gph2csv} exports each of the underlying plotting-point series
into a CSV for reproduction in publication.
The output series will be named output_1, output_2, output_3...
according to the name you choose for the file;
the variables in each are typically temporary files
if they are created by Stata, meaning you must rename them as required.
The series will occur in the order they are graphed;
in the example below, test_1 corresponds to the scatter and test_2 corresponds to the lowess.

{marker example}
{title:Examples}

{inp}    {stata sysuse auto , clear:sysuse auto , clear}
{inp}    {stata tw (scatter price mpg)(lowess price mpg):tw (scatter price mpg)(lowess price mpg)}
{inp}    {stata gph2csv using "test.csv", replace:gph2csv using "test.csv", replace}

{title:Author}

Benjamin Daniels
bbdaniels@gmail.com

{title:Contributing}

{p}{bf: gph2csv} is open for development on {browse "https://github.com/bbdaniels/gph2csv/":GitHub}.
Submit bugs and feature requests {browse "https://github.com/bbdaniels/gph2csv/issues":here}.
If you like {bf:gph2csv}, be sure to visit my {browse "http://bbdaniels.github.io":homepage}
and {browse "https://gist.github.com/bbdaniels/a3c9f9416f1d16d6f3c6e8cf371f1d89":Stata boilerplate code}.{p_end}
