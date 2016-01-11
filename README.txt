Assignment OPTIONAL ASSIGNMENT - Record Manager with NESTED LOOP JOIN | Version 1.0 | 12/11/2015



Description

---------------------------------------------------------

The Nested Loop Join is a technique to Join relations.
We have implemented Join along with our Record Manager. 

How to run

-----------------------------------------------------------


1. Open terminal and Clone from BitBucket to the required location.

2. Navigate to Optional Assignment folder.

3. To clean,
	$ make clean
4. Use make command to execute NESTED LOOP JOIN, test_nested_loop_join,
	$ make test_NLJ
5. Use make command to execute Record Manager, test_assign3_1,
	$ make test_assign3_1			--> this is same as earlier Record Manager Assignment 3 
 


Solution Description

-----------------------------------------------------------

The solution is made over the Record Manger Assignment done earlier
Additional functions are added for Nested Loop Join functionality

Nested Loop Join:
	Here, two relations are considered to be joined over their KEY attribute.
We have Table T and Table R, T being the Outer Relation and R being the Inner Relation
We match each record from the Table T with every record from the Table R, 
if match is found then the records are joined together, else we scan the next record to find the match
The final o/p results in T JOIN R --> relation and their records.

For this solution we have used Scan() functions from the Record Manager
We use startScan() --> each for T and R
And scan the next records using nextNLJ() to find matches for the Join
and lastly perform the Join for those records in realtions T & R 



Additional error codes in dberror.h
-----------------------------------
RC_TABLE_ALREADY_EXISTS - 400
RC_RM_UPDATE_NOT_POSSIBLE_ON_DELETED_RECORD - 401
RC_RM_NO_DESERIALIZER_FOR_THIS_DATATYPE - 402



Functions used
---------------------------------------------------------------
getRecordDataForNLJ (RM_TableData *rel, RID id, Record *record)
	this fucntion is used to get the data of the record in a deserialized form, 
as we input the data into the table in a serialized manner, we fetch the values only which is required i.e.
the KEY, and the Other attribute values

deserializeRecordKey(char *desiralize_record_str, Schema *schema)
	this function is used as a deserializer which is invoked by getRecordDataNLJ()
it gets all the Key and the attributes values of the record and puts it into a string separated by a comma (,)

startScan (RM_TableData *rel, RM_ScanHandle *scan, Expr *cond)
	this function is used to initialize the RM_ScanHandle and RM_ScanMgmt structures and its attributes.

nextNLJ (RM_ScanHandle *scan, Record *record)
	this function is used to search tuples
This will run until there no more tuples in the table.

closeScan (RM_ScanHandle *scan)
	this function indicates the record manager that all the resources can be cleaned up. All the memory allocated during scans are free.

OUTPUT
-----------------------------------------------------------
The output window will show the original Tables T & R
and thier JOIN i.e. T JOIN R

Team Members: -
-----------------------------------------------------------

Loy Mascarenhas

Shalin Chopra
