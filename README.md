My password to the database has been removed so I decided to inclu some extra files such as pictures of the plots required for the bonus question on SQLAlchemy. 

Also hire_date and birth_date were in the employee table were created as varchar as importing them as dates was causing problem so based on advice from Instructor and Teaching Assistant they were made created and imported as varchar.
As it is the only question in relation to date was looking for the string '1986'. No other data comparisons were required so
having them as varchar for this homework satisfied the requirements.

Required files for homework submission:

* Create an image file of your ERD. 
Filename : QuickDBD-export_ERD_Diagram.png
Filename : ERD Creation commands.txt

* Create a `.sql` file of your table schemata.
Filename : QuickDBD-export_schema.sql

* Create a `.sql` file of your queries.
Filename : sql_queries.sql

* (Optional) Create a Jupyter Notebook of the bonus analysis.
Filename : SQLAlChemy_homework_bonus.ipynb
Filename : bonus_sql.sql

Additional SQL and plots were created to highlight what I noticed was a huge outlier in employee salaries. 95346 employees on the lowest salary of
 $40,000.

Top 10 most common salaries
---------------------------
   no_of_employees  salary
0            95346   40000
1               19   55581
2               18   53738
3               18   53078
4               17   47454
5               17   44564
6               17   45184
7               16   43710
8               16   49416
9               16   51499
Plotting them would have created a scaling issue for viewing but excluding that value :

Top 10 most common salaries excluding most common - see up above why
--------------------------------------------------------------------
   no_of_employees  salary
0               19   55581
1               18   53738
2               18   53078
3               17   47454
4               17   45184
5               17   44564
6               16   43710
7               16   49416
8               16   51499
9               16   43995

Bonus: Query, My badge nummber says I am  April Foolday  who is on the lowest salary of $40,000 despite being a Technique leader where the average salary is $48,583

Average Best paid jobs belong to Senior Staff whereas engineers are the lowest.

Best paid employee is 
205000	"s0001"	"Charmane"	"Griswold"	"M"	
on $129,492, title is Staff , which is way above the average for Staff of $58,465

* Create and upload a repository with the above files to GitHub and post a link on BootCamp Spot.
