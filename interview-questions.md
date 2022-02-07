# ASSESSMENT 6: Interview Practice Questions
Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. As a developer, I am creating a Rails application with a model called Cohort that has_many students, but OOPS! I forgot to add the foreign key. How can I fix this mistake? What is the name of the foreign key? Would the foreign key be on the Cohort model or the Student model?

  Your answer: You can go back and add a foreign key with the name of "student_id". The foreign key would be on the Student model.

  Researched answer: If a developer forgets to add a foreign key when creating a model, they can use the migration command to add a foreign key. A time I used a foreign key was during the wildlife tracker challenge to create a relationship between the animals table and the sightings table.

2. Which RESTful routes must always be passed params? Why?

  Your answer: Get and Delete are two RESTful routes that must always be passed params.

  Researched answer: The RESTful routes which must always be passed params are update, destroy, show, and edit. This is because update needs an ID to specify which instance is being referenced so that it can make sure it's updating the correct entry. The destroy route also needs an ID in order to know which instance the user wants to delete. Similarly, show also needs an ID because it is being used to display a specific entry in the table. Edit needs an ID to specify which post is being edited. This information gets passed to the edit form which is different than new because the user wants to modify existing information, not create a new instance of student.

3. Name three rails generator commands. What is created by each?

  Your answer: Rails generate Model, creates a new model. Rails generate Migration creates/updates the migration file. Generate controller generates a new Controller.

  Researched answer: The three rails generator commands are generate controller, generate model, and generate resource. Generate controller creates a new controller, a helper method, a routes, and a view. Generate model creates a model within a given database, and also creates a table. The table will use lowercase letters and given a plural name based on the name of the model. An Animal model will create a "animals" table. The third rails generator command is generate resource which creates embedded code and acts as a template for the RESTful routes. This saves the user time by not having to manually create each individual route. An interesting tidbit that I learned while researching generate commands is that if you don't drop the built-in test code when initially creating a rails app, creating a controller will also generate a test.rb file for the controller itself.

4. Consider the Rails routes below. What is the name of the controller method that would be called by each route? What action would each of the controller methods perform?

action: "GET"    route: /students

  The controller method for this route is index. Index is used to retrieve all entries in the students table.

action: "POST"   route: /students

  The controller method here would be create. Create would take the information stored in a new webpage and use it to create a new student.

action: "GET"    route: /students/new

  The controller method here would be new. New creates a page where a user could input information, which would then be used by a create method to create a new student.

action: "GET"    route: /students/2

  The controller method here would be show. In this case, the entry with an ID of 2 will be displayed.

action: "GET"    route: /students/2/edit

  The controller method here would be edit. Edit creates a page where the user could input the relevant information, which is then used by the update method to modify the existing information.

action: "PATCH"  route: /students/2

  The controller method here would be update. It would take the info stored in an edit webpage and use it to update an existing instance in the database.

action: "DELETE" route: /students/2

  The controller method here would be destroy. Destroy is used to delete the specified entry from the database.

5. As a developer, you are making an application to manage your to do list. Create 10 user stories that will help you get your application started. Read more about [user stories](https://www.atlassian.com/agile/project-management/user-stories).

As a User: I can view a table containing the to do item, date started, date completed, due date, and whether the task is complete
As a User: I can add additional columns to the table (as needed)
As a User: I can add additional tasks to my to do list
As a User: I can edit the information for each task
As a User: I can see a description of my task
As a User: I can specify when a task has been completed
As a User: I can prioritize items of high importance
As a User: I can see how much time it took me to complete a task
As a User: I can delete tasks I no longer want to track
As a User: I can run a report to list all tasks during a given time period
