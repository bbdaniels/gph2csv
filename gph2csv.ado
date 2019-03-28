// Write plotting points for open graph to csv

cap prog drop gph2csv
prog def gph2csv

// Setup
version 13
syntax using/ , /// "/path/to/file.csv"
  [replace]

local break 0
preserve

// Reset [serset] container to open graph
tempfile a
  qui graph save `a'
  graph close
serset drop _all
  graph use `a'

// Loop over all sersets
local i = 0
qui while `break' == 0 {
  cap serset set `i'
  if _rc != 0 local break 1 // Quit if no more sersets found
  else {
    serset use
    local ++i
    local thePath = subinstr("`using'",".csv","_`i'.csv",.)
    outsheet using "`thePath'" , c `replace'
  }
}

di in red "Graph written to `i' series files!"

end

// Have a lovely day!
