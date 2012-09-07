Firebox
--------------

Firebox is a Ruby on Rails mountable engine that can be used as the basis for social systems. The goal of the project is to provide basic functionality, such as:

* Local authentication
* Authenticate via Twitter, Facebook or Google+
* Provide a user with a profile page
* Provide the ability to add comments to a model
* Provide the ability to rate a model
* Provide the ability to tie model to twitter hashtag
* Ability to shorten links
* Ability to collect analytics

Unlike other libraries that exend ActiveRecord::Base to provide comments, ratings, etc, Firebox will required that the libraries be included in to the model. This keeps from cluttering up the O/R mapper of unneed items for models that do not require the functionality.

Technologies
--------------

Firebox is currently being developed for the following environment:

* Ruby 1.9.3
* MongoDB