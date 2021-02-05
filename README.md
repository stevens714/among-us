# To Do

# create migrations
# create models with relationships
# plan out routes for controller following restful conventions and map to CRUD actions
# build controller actions passing appropriate date to views
# build views {forms}
# build navigation

# validations



# Outline for project

User Table:  has the following rows:

- Username - string
- Password - string


Character Table:  has the following rows:

- ID - Primary Integer Key
- Name - string
- Color - string
- Age - integer
- Accessory - string
- Special Ability - string
- Backstory - textarea
- Image - string


Skills Table:  has the following rows:

- Tenacity - integer
- Intelligence - integer
- Speed - integer
- Strength - integer
- Charm - integer
- Image - string

Users can have many characters
Character will belong to user and has many attributes
Attributes have many characters THROUGH JOIN TABLE


characters_attributes Table:  has the following rows:

- character_id
- attribute_id
