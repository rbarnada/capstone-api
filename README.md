# Budget API

### Technologies used:
- Ruby
- Ruby on Rails
- Heroku
- Atom text editor
- Terminal
- Google Chrome

---
### Installation
1. Install dependencies with bundle install.
2. Create a .env for sensitive settings (touch .env).
3. Generate new development and test secrets (bundle exec rails secret).
4. Store them in .env with keys SECRET_KEY_BASE_<DEVELOPMENT|TEST> respectively.
5. Setup Database:
  - bin/rails db:drop (if it already exists)
  - bin/rails db:create
  - bin/rails db:migrate
  - bin/rails db:seed
  - bin/rails db:examples
6. Run the API server with bin/rails server or bundle exec rails server.

---
### App Description:
This web app allows users to set a monthly budget and log their expenses. The app lets you know the total you have spent so far, and how much is remaining until you hit your budget. Expenses are listed for users to referred back to and can be updated or delete at will. Users can also add a budget for the next month to begin planning for the future but currently only allows the addition of one extra month.

---
### Planning:
I began by writing out what a budget would need. I decided for just including income and the budget for the month as I felt those two resources would be best to keep track of when budgeting. For expenses, I wanted a way to organized the data later so I included a category column. Besides that, cost and date were two basic things I felt should be included. From there I drew an ERD to show how these tables would relate. 

---
### Development Process:
When I began, I started by testing the provided curl scripts for user actions to make sure they all worked as expected. Next, I scaffolded my first resources, budgets, which references the user as a user has ownership of budgets they create. As I wanted all resoures to only be viewable by the user that owns them, I opted for the provided ProtectedController. I made the necessary adjustments to the controller, then made/tested curl scripts for the resource. Once that was completed, I scaffolded out my expense resource. Expenses references budgets as each expense belongs to a budget and a budget has many expenses. Again, I had the controller inheirted from ProtectedController and after making adjusts, I created and test my curl scripts. While this allowed me to get started on the client side, as I started to build that out it became apparent I would need to revisit the API. I added in validation for uniqueness in my budgets model to ensure that budgets couldn't have duplicate months. While this feature was not entirely necessary once my project reached it's current state as now a user does not select months, it was helpful in the build process and I learned more about Rails because of it. Additionally, I wanted to add functionality for if a parent resource was deleted, it would delete all child resources that relied on it. I was able to find this solution and with that I felt my API was in a good place for MVP.

---
### Routes:
| Verb   |    URI Pattern   | Controller#Action |
|--------|:----------------:|:-----------------:|
| POST   |     /sign-up     |    users#signup   |
| POST   |     /sign-in     |    users#signin   |
| PATCH  | /change-password |   users#changepw  |
| DELETE |     /sign-out    |   users#signout   |
| POST   |     /budgets     |   budgets#create  |
| GET    |     /budgets     |   budgets#index   |
| GET    |   /budgets/:id   |    budgets#show   |
| PATCH  |   /budgets/:id   |   budgets#update  |
| DELETE |   /budgets/:id   |   budgets#delete  |
| POST   |     /expenses    |  expenses#create  |
| GET    |     /expenses    |   expenses#index  |
| GET    |   /expenses/:id  |   expenses#show   |
| PATCH  |   /expenses/:id  |   expenses#patch  |
| DELETE |   /expenses/:id  |  expenses#delete  |

---
### Unsolved Problems/Future Plans:
I was able to work through many of my problems as I went. As for future plans, I do want to add more validation so that the expenses 'expense_category' field validates to only allow the preselected options. While it is not necessarily  bad for a user to write in their own categories, for ease of graphing and displaying data it would be best if all users were limited to the options provided.

---

### Links:
- ERD: https://i.imgur.com/q3gIfqS.jpg
- Client Deployed: https://rbarnada.github.io/capstone-client/
- Client Repo: https://github.com/rbarnada/capstone-client
- API Repo: https://github.com/rbarnada/capstone-api
- API Deployed: https://wdi-budget-api.herokuapp.com/
