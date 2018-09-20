# README

### Setup
* Setup Github SSH - [Doc](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

### Installation
* Clone this repo
* `$ rm -rf .git`
* `$ git init`
* `$ bundle install`
* `$ rails g rename:into [YOUR_APP_NAME]`
* Create an .env file for all development environment variables.
* `$ rails db:create`
* `$ rails g active_admin:install`
* `$ rails g wrap_activeadmin:install`
* `$ rails db:migrate`
* `$ rails db:seed`
* `$ git add -A`
* `$ git commit -m 'Initial Setup'`
* `$ bundle install --gemfile=.overcommit_gems.rb`
* `$ chmod +x bin/setup_overcommit`
* `$ overcommit --install`

### CSS Guides
* Framework - Bootstrap V4

### Backend Admin Panel
* [ActiveAdmin](https://activeadmin.info/) - ActiveAdmin Documentation
* [CbStem](https://github.com/CMDBrew/wrap-activeadmin) - CMDBrew Studio: WrapActiveAdmin
