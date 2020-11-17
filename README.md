# Center for Virtual Teaching

## Purpose
In these times of lock-downs, remote learning and economic adaptations it's more important than ever to include systems that facilitate the basic necessities of life and prosperity through innovative means.

One of the most important requirements for an evolving job market is the continued expansion of skilled and trained workers. This application will be built as a center for virtual teaching, the platform will provide contact between students/teachers and the 3rd party APIs used to hold video conferences within the application. 


## Publication Links

URL: TBD

GitHub: https://github.com/andrewdownsau/T2A2_Marketplace_Rails_App (currently set to private, will change on submission)


## Application Description

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

### Tech stack
- Front end web development (HTML, CSS, Javascript)
- Ruby on Rails
- Postgresql database
- Heroku deployment platform
- Ed System Workspaces
- Inkscape (svg drawing platform)
- Balsamic Wireframes

## User Stories (MVP)

As either a student or a teacher, I want to:

- Register an account with authentication so that I can utilize the features of the application
- Update personal details, forgotten passwords and deleting account functionality so that I can provide up-to-date information for the system to operate effectively
- Understand the purpose of the application and the basic functionality/features so that I can determine if/how I want to use the platform
- Read through reviews of students/teachers/classes so that I can better judge how my learning/teaching experience will be in making choices
- Create and maintain a personal student/teacher profile so that other people can view my portfolio and make better decisions whether they want to participate with me in teaching/learning
- Message students and teachers to ask/answer questions, collaborate or otherwise communicate with the platform's community
- Access legal documentation for use of website so that I am better informed of my legal rights/responsibilities in use of the platform
- Contact a support service to deal with disputes, harassment or other issues with the administrators of the platform

As a student, I want to:

- Browse through classes/teaching sessions through organized categories and/or a search bar so that I can more easily find and access my desired lessons
- Be presented with a list of featured classes so that I can know what popular options for teaching/learning are on offer on this site that match my interests
- Indicate my intention to attend/interest in classes to communicate to teachers that they're providing a wanted product
- Pay for classes before attending to seal my place for the teaching session so that I can be assured that I will be provided with the teaching services bought
- Utilize a personal list of classes attended/to attend so that I can better organize my learning experiences

As a teacher, I want to:

- Register an account as a teacher, having my credentials verified through 3rd parties so that I can ensure to my students of the legitimacy of my expertise
- Create/maintain any number of class session advertisements/invitations so that I can inform potential students of my upcoming sessions to encourage use and purchase of my services
- Set class requirements that must be met, such as number of students, format, prerequisites etc so that I can custom make classes to provide more effective learning experiences
- Utilize a teaching dashboard that displays my scheduled classes in an accessible format so that I can better organize my virtual classes
- Browse through classes/teaching sessions through organized categories and/or a search bar so that I can more easily search through my and related classes 
- View intentions to attend/interest in classes so that I can know whether to go ahead with the scheduled programs
- Know that student payments are confirmed so that I can be assured that my services are being paid for as I'm providing them
 

## Wireframes
<kbd><img alt="Wireframe Home" src="/docs/MVP_Home_Page.png" /></kbd>
<kbd><img alt="Wireframe Category Classes" src="/docs/MVP_Category_Classes.png" /></kbd>
<kbd><img alt="Wireframe Class Advert Page" src="/docs/MVP_Class_Advert_Page.png" /></kbd>
<kbd><img alt="Wireframe User Profile (Teacher)" src="/docs/MVP_User_Profile_(Teacher).png" /></kbd>
<kbd><img alt="Wireframe My Account Page" src="/docs/MVP_My_Account_Page.png" /></kbd>

## Entity Relational Diagram
<kbd><img alt="Marketplace Entity Relational Diagram" src="/docs/MVP_Marketplace_ERD.png" /></kbd>

## High-level view components
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
This might really just be a fudge at this point, while ideally I would want to utilize a video chat system so that classes can be conducted in the website itself, I'm not yet sure if I'll be able to incorporate it in the scope of the project.

There is also utilizing a payment system with paypal, this is MVP as it will allow for the marketplace to accept payments. (For now, just limiting to legal currency, no internal credits system).


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
