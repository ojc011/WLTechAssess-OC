

# [Address Book using Ruby on Rails!](https://still-wildwood-14883.herokuapp.com/contacts?id=title)

## Install

### Clone the repository

```shell
git clone git@github.com:ojc011/WLTechAssess-OC.git
cd project
```

### Check your Ruby version

```shell
ruby -v
```
The ouput should start with something like `ruby 2.5.1`

Project uses 3.0.3

If not, install the right ruby version using [Ruby Archives](https://rubyinstaller.org/downloads/archives/) (it could take a while):

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler), [Yarn](https://github.com/yarnpkg/yarn), and [NPM](https://www.npmjs.com/):

```shell
bundle, yarn, npm
```

### Initialize the database

```shell
rake db:create db:migrate db:seed
```

## Server

```shell
rails server
```

## Deployed with Heroku

```shell
git push heroku main
```
[Visit my site here!](https://still-wildwood-14883.herokuapp.com/contacts)

![App Homepage](https://github.com/ojc011/WLTechAssess-OC/blob/main/app/assets/images/AddressBook.gif?raw=true)
