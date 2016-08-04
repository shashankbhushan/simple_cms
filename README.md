# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



important commands to run :
1. source ~/.bash_profile : before running rails 
2. mysql -u simple_cms -p simple_cms_development : to enter mysql

3. rail db:migrate (:down , :up :<methodname>) : to migrate dbs.



class SectionEdit < ApplicationRecord
	belong_to :editor :class_name => "AdminUser", :foreign_key => "admin_user_id"
	belong_to :section
end

