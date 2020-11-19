# Center for Virtual Teaching

## Evolving needs in online learning
Many people during this epidemic have struggled to adapt to changing work styles and economic shifts moving towards more technological innovation. This inevitably requires that more people become adept at more complex forms of work and therefore require both greater amounts of training as well as a more robust means of earning an income. The biggest problem I see so far with online learning is that it is heavily rigidly controlled and structured through large institutions that cannot easily adapt to a changing market as much as a market itself can.

## Bring on the virtual teaching center
This platform is designed to be a more open solution to online learning that allows individuals to gain their own skills, learning, teaching and acclaim through an online education marketplace. While information should be free, it takes time and effort to teach people with quality and consistency in mind. Through this system teachers and students alike will dictate how much education and the efforts spent on learning should cost.


## Publication Links

URL: https://the-virtual-teaching-center.herokuapp.com/

GitHub: https://github.com/andrewdownsau/virtual_teaching_center



## Application Description

### Purpose
In these times of lock-downs, remote learning and economic adaptations it's more important than ever to include systems that facilitate the basic necessities of life and prosperity through innovative means.

One of the most important requirements for an evolving job market is the continued expansion of skilled and trained workers. This application will be built as a center for virtual teaching, the platform will provide contact between students/teachers and the 3rd party APIs used to hold video conferences within the application. 

### Target Audience

This application is for anyone who has something they either can teach other people or wants to learn from others through an interactive video medium.

### Functionality

- User profiles for teachers and students with details, schedule and reputation
- Formal class sessions with number limits set by teachers
- Payment system using either time credits or legal currency
- Archive of recorded lessons owned by teachers/students

### Sitemap

![Sitemap](/docs/sitemap.png)

https://www.gloomaps.com/vqQKgzCzCq


### Screenshots
<kbd><img alt="Screenshot Home" src="/docs/screenshot_home.png" /></kbd>
<kbd><img alt="Screenshot Category Classes" src="/docs/screenshot_classes_list.png" /></kbd>
<kbd><img alt="Screenshot Class Advert Page" src="/docs/screenshot_class_ad.png" /></kbd>
<kbd><img alt="Screenshot User Profile (Teacher)" src="/docs/screenshot_profile_teacher.png" /></kbd>

### Tech stack
- Front end web development (HTML, CSS, Javascript)
- Ruby on Rails
- Postgresql database
- Heroku deployment platform
- Ed System Workspaces
- Inkscape (svg drawing platform)
- Balsamic Wireframes
- dbdiagram.io

## User Stories (scope of project)

### Account management (As a general user I want to...)
- Keep my contact details up to date so that the system can send me notifications and help me recover my account
- Close my account so that the advertisements of my classes and profile are removed from publication
- Register an account on the system so that I can protect my dealings with the system
- Log into my account so that I alone can access my dealings with the system
- Log out of my account so that I can prevent other people from using my account


### Finding classes (As a student I want to)
- Browse the classes that are available on the system by category so that I can find classes in a particular topic area that I want to join
- Search for a class about something specific that I already want to learn so that I can quickly get a lesson in that topic I want to learn


### Advertising classes (As a teacher I want to)
- Publish a teacher profile so that I can persuade prospective students to join my classes by showcasing my personality and credentials
- Publish a long-term class so that students who want to learn a skill that takes more time to learn can sign up for a series of sessions at a time
- Publish a single-event class so that students who want to learn a simpler skill can commit to signing up to only a single session
- Set the required number of student enrollments for any class so that I don't end up teaching classes that are not economically viable
- Update the details of a class so that new and existing students can be kept informed of what this class is about
- Retire classes that I no longer want to teach so that I don't get unwanted student sign-ups to those classes


## User Stories (wanted to have, but did not manage to implement)

### Account management (As a general user I want to...)
- Reset my password so that I can regain access to my account when I forget the password

### Help & Support (As a general user I want to...)
- Understand what the purpose of the system is so that I can decide if it would solve my problems or not (and therefore use the system)
- Understand how to use the various features of the system so that I don't waste my money on a product I cannot use

### Feedback (As a student I want to)
- Write a review of classes so that I can contribute to providing feedback that other students can use to decide if they want to join this class or not
- Write a review of classes so that I can provide feedback to teachers to help them improve their classes
- Read reviews of a specific class from other students to decide if I want to join that class
- Read reviews of all the classes a teacher teaches from other students so that I can get a broader picture of the teacher's teaching style and personality to decide if I want to join their classes

### Messaging (As a student I want to)
- Ask a teacher about one of their classes so that I can clear up what I don't understand about the class so that I can decide if I want to join it or stay in it

### Finding classes (As a student I want to)
- See what classes are popular on the system so that I can find new experiences that would likely be good

### Enrolling in classes (As a student I want to)
- Enrol in a class that I want to join so that the teacher knows I want to join that class
- Pay for my enrolment in a class so that I can secure my spot in that class
- See my class enrolment schedule so that I can be sure I attend my classes and manage my time effectively

### Class management (As a teacher I want to)
- See my schedule of class sessions that I am teaching so that I can be sure I attend my classes and manage my time effectively to not disappoint my students and drive them away from my classes
- Be notified of which classes have gained the required number of student enrolments and therefore will require me to teach the class so that I do not fail to attend those classes and damage my reputation on the system

### Class moderation (As a teacher I want to)
- Remove students that are disruptive from my classes so that I can protect the quality of the experience for the other students

## Wireframes
<kbd><img alt="Wireframe Home" src="/docs/MVP_Home_Page.png" /></kbd>
<kbd><img alt="Wireframe Category Classes" src="/docs/MVP_Category_Classes.png" /></kbd>
<kbd><img alt="Wireframe Class Advert Page" src="/docs/MVP_Class_Advert_Page.png" /></kbd>
<kbd><img alt="Wireframe User Profile (Teacher)" src="/docs/MVP_User_Profile_(Teacher).png" /></kbd>
<kbd><img alt="Wireframe My Account Page" src="/docs/MVP_My_Account_Page.png" /></kbd>

## Entity Relational Diagram
<kbd><img alt="Marketplace Entity Relational Diagram" src="/docs/MVP_Marketplace_ERD.png" /></kbd>

## High-level components for the application
- Navigation menu header
- Search form for classes, students and teachers
- Cover page image
- Featured classes auto-scroll reel
- Class cards for gallery postings
- Sorting cards-by system
- Sitemap links footer with social media/copyright
- Class pages that include sessions, teacher and reviews
- Teacher/Student profile pages that include schedule, details and reviews
- Personal account dashboard for accessing classes, teaching, messages and admin
- About/Help pages with information on website

## Third-party services
For the scope of my project, I was only able to use heroku as a third party service to deploy my web application online. My understanding is that heroku utilizes the functionality of ruby on rails in the same way that my local terminal runs a rails server routed through the route resources, models and controllers which then output the required views. This means that in order to operate, heroku must apply the same installation methods for their applications to run. For example, to have a working database with the required models/seed data, the commands for db:migrate and db:seed must be applied for the site to run.


## Model Associations Framework
1. Users
    - has_one Student
    - has_one Teacher
    - has_many Reviews
    - has_many Message_Threads
2. Students
    - belongs_to Users
    - has_one Review_Route
    - has_many Enrollments
3. Teachers
    - belongs_to Users
    - has_one Review_Route
    - has_many Classes
4. Categories
    - has_many Classes
5. Classes
    - belongs_to Teacher, Categories
    - has_one Review_Route
    - has_many Sessions
6. Sessions
    - belongs_to Classes
    - has_many Enrollments
7. Enrollments
    - belongs_to Sessions, Students
8. Review_Routes
    - belongs_to Classes, Teachers, Students
    - has_many Reviews
9. Reviews
    - belongs_to Review_Router, Users
10. Message_Threads
    - belongs_to Users
    - has_many Messages
11. Messages
    - belongs_to Message_Threads


## Task Allocation and tracking 

Tasks are tracked and allocated for project planning using Trello Kanban boards. The link to my online project management board is: https://trello.com/c/OT6dxJX2/3-add-readme-documentation
