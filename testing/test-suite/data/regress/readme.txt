This directory contains data for regression tests
When test started it iterates thru the subfolders an performes follwoing
1. Applies init.sql to DB (if file not found, this step skipped).
2. Loads model.mwb (the only mandatory file, if not found error thrown).
2 d forward engeneers it to DB (Subject to change by adding testing of
synchronize testing as well)
3. Applies cleanup.sql to DB (if file not found, this step skipped).
In case if file name 'disabled' exists in catalog, test case will be scipped
In case if file name 'dontaplly' existe in catalog, no WB generated SQL will be
applyed to DB (init and cleanup still will be used if any). This is used to 
trigger crashes on generating invalid SQL (in this case ivalid SQL is ok, but 
crash doesn't
desription.txt will be used as test case name, if none provided dirname will be
used
