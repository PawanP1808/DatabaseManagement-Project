# Vehicle-Reservation Web Application
This project is the implementation of a vehice-reservation web-application using Ruby-on-Rails web framework and PostgreSQL DBMS.

## Installation
The following instructions are for running the project on Windows.


* Install [Ruby + Devkit](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.6.5-1/rubyinstaller-devkit-2.6.5-1-x64.exe)
* Install [PostgreSQL](https://www.postgresql.org/download/windows/)
  * Config for PostgreSQL is as follows:

        username: admin
        password: password
        port: 5432
        --OR--
        Change settings in <config/database.yml> to match your user settings

* Install [Git](https://git-scm.com/download/win)
* Install [Node JS](https://nodejs.org/dist/v12.13.1/node-v12.13.1-x64.msi)
* Install [Yarn](https://yarnpkg.com/latest.msi)

## Usage
After installing all the files do the following:

* Open Powershell or Command Prompt
* Run: 

        gem install rails
* Run: 

        gem install bundler
* Clone the project 

        git clone https://github.com/PawanP1808/DatabaseManagement-Project.git
* Ls into the DatabaseManagement-Project folder
* Install the gem files 

        bundle install
* Verify yarn integrity 

        yarn install --check-files
* Create database tables

        rake db:create
* Ruby migrations

        rake db:migrate
* Populate the administrative Employee & User

        Open PGAdmin 4 (Comes preinstalled with PostgreSQL)
        Login 
        Open carReservation_development table
        Open Tables dropdown
        View/Edit Data > All Rows... Allows you to add data into tables
        Add a record in the following tables in order:
                - Branch
                - Employee
                - User

* Run the server 

        rails server
* Open the [Database](http://localhost:3000/)

### Database Usage
Application usage steps are as follows:

* Login: login with the administrative user created from PGAdmin
* View Tables Section: Click buttons to show existing database content from various tables
* Add to Tables Section: Click buttons to open adding into database interface
* Query DB Section: Click buttons to view the 10 queries
* Return to Home Page: Click Header <Project 25 - Car Reservation>
