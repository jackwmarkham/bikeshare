# myTUT Rails Application - Coder Factory Project 2

Deployed on Heroku:
https://mytut101.herokuapp.com/

## Application Setup

- Ruby 2.2.4 and Rails 4.2.6
- Gems used:
  * materialize
  * Font-awesome
  * link-awesome
  * simple_form
  * devise
  * carrierwave
  * cloudinary
  * geocoder
  * stripe
  * Toastr-rails
  * acts_as_votable


# Design and Documentation

## Problem definition

Bicycles are a product that people often either own but don't use, or have a brief
need for but do not wish to purchase. To address this, I created a simple bike-
sharing two-sided marketplace where people can create a profile and advertise
a bike to be rented by another customer.

## Solution

myTUT allows tutors to create a tutor profile online where high school students
would be able to choose from. The student and the tutor will contact each other
using the messaging app and agree on when to meet. The student would then make
a booking request. After approval of the request, the booking is confirmed and
the student will have to pay for the tutoring session.

TO DO

The next step of the myTUT app would be to create a tutoring session between the
tutor and the student. A session in which they can share documents, discuss and
write/view on the same documents.

## User Journey

### Student

Discovery -> Sign Up -> Tutors Selection -> Application(Booking) -> Transaction
-> Session -> Post Session

### Tutor

Education(Rules to follow as a tutor) -> Create Profile -> Application Review
-> Session -> Post Session

## Deliverables

- Wireframes: wireframes.pdf

- User Stories: Trello link: https://trello.com/b/GC0NBngH/mytut

- Entity Relationship Diagram
 -Initial ERD: assets/images/ERDmyTUT.png
 -Made by rails-erd: erd.pdf

## Project Estimation

$25,000 with delivery time frame of 7-8 weeks.
Link to excel sheet: https://docs.google.com/spreadsheets/d/1qSXGuMaW-1Pf1ZFfhPNunX6kRZ7YSCHYetMV6clzMew/edit?usp=sharing

# Tools and Methodologies

* Use of Trello for planning and progression review
* Use of dbdesigner for ERD creation
* User Slack to discuss with my peers
* Github: liptonite24/mytut
* Rubocop and Rubycritic (NOT DONE)

# Rails Application

- [x] Use of postgresql database in development
- [x] Implemented Omniauth-facebook
- [x] Environment Variables set in Bash and in Heroku Config
- [x] Implemented a payment system using stripe (test mode)
- [x] Implemented Mailgun when transaction is completed (disable because sandbox mode)
- [x] Implemented messaging system
- [x] Search for tutors available
- [x] Implemented carrierwave and cloudinary for profile picture and cloud storage
- [x] Implemented Devise authentication
- [x] Implemented Cancancan for authorisation
- [x] Implemented an Admin dashboard
