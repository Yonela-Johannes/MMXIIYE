require "open-uri"
require "faker"

def division(message)
  puts "-" * 20
  puts message.to_s
  puts "-" * 20
end

Event.destroy_all
Task.destroy_all
Assignment.destroy_all
Collaboration.destroy_all
Expense.destroy_all
Guest.destroy_all
User.destroy_all

division("Deleting tables...")
division("Creating user...")

primary_user = User.create!(
  first_name: "Jane",
  last_name: "Smith",
  email: "jane@test.com",
  password: '123456'
)
file = File.open(File.join(__dir__, 'img/avatar_adam.png'))
primary_user.photo.attach(io: file, filename: 'avatar_adam.png', content_type: 'image/png')

division("Creating Event...")
primary_event = Event.create!(
  name: "My Sick 30th Bash",
  description: "Rave Birthday Party for myself because I'm awesome!! Hooray 30!",
  start_date: DateTime.new(2023, 4, 3, 18, 0, 0),
  end_date: DateTime.new(2023, 4, 3, 23, 0, 0),
  venue_name: "Riks Diner",
  venue_address: "Salt River, Cape Town",
  est_guests: 21,
  total_budget: 4500
)

division("Done creating Event...")
primary_colaborator = Collaboration.create!(
  user_id: primary_user.id,
  event_id: primary_event.id,
  role: :owner
)

division("Creating Task...")
primary_tasks = Task.create!(
  event_id: primary_event.id,
  name: "call mom",
  description: "cause mom's are awesome - call your mother",
  due_date: DateTime.new(2023, 4, 1),
  status: :to_do
)

division("Assign Collaborator...")
Assignment.create!(
  collaboration_id: primary_colaborator.id,
  task_id: primary_tasks.id
)

division("Create and asign Collaborator...")
Assignment.create!(
  collaboration_id: primary_colaborator.id,
  task_id: secondary_assingee.id
)

division("Creating Event Expense...")
Expense.create!(
  event_id: primary_event.id,
  name: "drink - welcome drinks",
  amount_spent: 58.99,
  category_list: "Bar",
  status: 0,
  due_date: DateTime.new(2023, 4, 1)
)
division("Done creating Event Expense...")
