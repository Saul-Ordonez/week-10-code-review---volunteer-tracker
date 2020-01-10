# Week 10 Project (Volunteer Tracker)

#### Application that tracks projects and the volunteers working on them.

#### By **Saul Ordonez**

## Description

This Ruby web application tracks projects for a volunteer program and the volunteers that are associated with them. It uses Sinatra routing to navigate through different pages where an employee can view, add, update, and delete projects and the volunteers that are connected to them.

## Specs
HTTP | Route | CRUD Functionality | Description
--- | --- | --- |---
GET | /projects | READ | Gets a list of projects
GET | /projects/:id | READ | Looks at the details page for one project
POST | /projects | CREATE | Adds a new project to the list of already saved projects (if any)
PATCH | /projects/:id | UPDATE | Updates a project
DELETE | /projects/:id | DELETE | Deletes a project from the list
GET | /projects/new | READ | Goes to the page to add a new project to the list
GET | /projects/:id/edit | READ | Goes to the page to edit a project
GET | /projects/:id/volunteers/:volunteer_id | READ | Looks at the details page for one volunteer
POST | /projects/:id/volunteers/:volunteer_id | CREATE | Adds a new volunteer to the list of already saved volunteers (if any)
PATCH | /projects/:id/volunteers/:volunteer_id | UPDATE | Updates a volunteer
DELETE | /projects/:id/volunteers/:volunteer_id | DELETE | Deletes a volunteer from the list

## Setup/Installation Requirements

* Clone GitHub project repository onto desktop
* You will need to have ruby installed on your computer
* Run bundle in your terminal to install appropriate Ruby Gems
* run $ **ruby app.rb** in your terminal
* internet service required when cloning project repository onto local computer.

## Known Bugs

There are no known bugs at this time but may be subject to change.

## Support and contact details

If there are any issues or bugs the developer may not be aware of please contact at:

#### * sauleordonez@gmail.com
#### * (503)-382-9034

## Technologies Used

* Ruby
* Ruby Gem 'sinatra'
* Ruby Gem 'sinatra-contrib'
* Ruby Gem 'rspec'
* Ruby Gem 'pry'
* Ruby Gem 'capybara'
* Ruby Gem 'rake'
* Mac Terminal to run project

### License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Copyright (c) 2020 **_Saul Ordonez_**
