<h2>MMXIIYE</h2>
This is an event planner web app built with Ruby on Rails and PostgreSQL. The app allows users to create events, invite collaborators, add expenses, assign tasks to collaborators, add notes, and send messages to collaborators.

<br>

<h2>Getting Started</h2>
To get started with the app, clone the repo and then install the needed gems:

<h4>css</h4>

$ bundle install --without production
Next, migrate the database:

<h4>ruby</h4>
$ rails db:migrate
Finally, run the test suite to verify that everything is working correctly:

<h4>shell</h4>
$ rails test
If the test suite passes, you'll be ready to run the app in a local server:

<h4>ruby</h4>
$ rails server

<h2>Features</h2>

<h4>User Authentication</h4>
Users can sign up for an account, log in, and log out. Authentication is implemented using the bcrypt gem.

<h4>Create Event</h4>
Users can create an event by providing the event name, description, location, start time, and end time.

<h4>Invite Collaborators</h4>
Users can invite collaborators to an event by providing the collaborator's name and email address. Collaborators will receive an email invitation and will be able to view and edit the event details.

<h4>Add Expenses</h4>
Users can add expenses to an event by providing the expense name, amount, and category.

<h4>Assign Tasks to Collaborators</h4>
Users can assign tasks to collaborators by providing the task name, description, and deadline.

<h4>Add Notes</h4>
Users can add notes to an event by providing the note title and description.

<h4>Send Messages to Collaborators</h4>
Users can send messages to collaborators by providing the message subject and content.

