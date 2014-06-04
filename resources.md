# SOA Class Online Resources

## Mindmap of Modern Computing
- [Rails mindmap](https://dgosxlrnzhofi.cloudfront.net/custom_page_images/production/64/page_images/Rails_Competencies.png?1386276348)

## Unix
- environment variables (for SINATRA_ENV and for keys/tokens)
- Linux Tutorial

## Ruby
- [Codecademy: Ruby](http://www.codecademy.com/tracks/ruby)
- Track student progress: http://www.codecademy.com/profile_name

## VCS using GIT
see: [[DEV: Git]]

## Editor
- SublimeText vs. TextMate vs. Atom
- Plugins
    - Git status
    - TODO reporter

## Serialization/Marshaling
- [Serializing (And Deserializing) Objects With Ruby](http://www.skorks.com/2010/04/serializing-and-deserializing-objects-with-ruby/)
- [Marshaling from/to file](http://rubylearning.com/satishtalim/object_serialization.html)

## Testing (MiniTest)
###TDD vs. BDD
- [Original BDD Manifesto](http://dannorth.net/introducing-bdd/) by Dan North
- [BDD vs TDD (features vs. functions, specs vs. tests)](https://programmers.stackexchange.com/questions/135218/what-is-the-difference-between-bdd-and-tdd)

### Minitest (Ruby)
- [Minimalicious testing in Ruby 1.9 with MiniTest](http://blog.arvidandersson.se/2012/03/28/minimalicous-testing-in-ruby-1-9)
    - best guide of Minitest!
    - only covers specs (not tests)
- [Minitest Rakefile to run all tests](http://www.rubyinside.com/a-minitestspec-tutorial-elegant-spec-style-testing-that-comes-with-ruby-5354.html)
- [Mini MiniTest Tutorial](http://www.millwoodonline.co.uk/blog/mini-minitest-tutorial)
- [Video of Minitest by its author](http://confreaks.com/videos/618-cascadiaruby2011-size-doesn-t-matter)
    - tests vs specs; idiomatic writing of specs
    - randomization of test order
- [Using Ruby's builtin MiniTest](http://www.rubyinside.com/a-minitestspec-tutorial-elegant-spec-style-testing-that-comes-with-ruby-5354.html)

### Integrated Testing
- [ra](https://stackoverflow.com/questions/4788288/how-to-run-all-the-tests-with-minitest)

## SSH Keys
- [Generating SSH keys](https://help.github.com/articles/generating-ssh-keys)

## RESTful Services
- Fundamentals of REST
    - [The REST Cookbook](http://restcookbook.com/)
    - [Best practices for REST](http://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api)

- RMM: REST Maturity Model
    - [Steps toward the glory of REST](http://martinfowler.com/articles/richardsonMaturityModel.html)
    - [The Maturity Heuristic](http://www.crummy.com/writing/speaking/2008-QCon/act3.html)
- HATEOAS principle
    - [What is HATEOAS and why is it important for my REST API?](http://restcookbook.com/Basics/hateoas/)
    - [see more](http://restcookbook.com/Basics/hateoas/#sthash.JlWUyqzJ.dpuf)
    - [HATEOAS in JSON](https://stackoverflow.com/questions/13018366/how-should-i-handle-hateoas-links-and-references-in-json)
- API versioning
    - [Semantic Versioning Specification](http://semver.org/)
    - [Git tags and versioning](http://gitready.com/beginner/2009/02/03/tagging.html)

## HTML/CSS
- [Learning HTML & CSS (CodeAcademy)](http://www.codecademy.com/tracks/web)
- [Sinatra Views: Layout, Homepage, Menus](http://code.tutsplus.com/tutorials/an-introduction-to-haml-and-sinatra--net-14858)
- Copying CSS is a bad idea:
    - [websites looking out for copied designs](http://youthoughtwewouldntnotice.com/)

## Heroku
- production mode
    - [on local machine: bundle install --without production](https://stackoverflow.com/questions/21073734/rails-pg-gem-an-error-occurred-while-installing-pg)
        - cannot install pg unless postgresql is installed on machine
- [importance of Gemfile.lock](https://stackoverflow.com/questions/6927442/what-is-the-difference-between-gemfile-and-gemfile-lock-in-ruby-on-rails)
- [Need to run database.yml through erg interpreter](https://stackoverflow.com/questions/12379530/heroku-what-does-writing-config-database-yml-to-read-from-database-url-mean)
- send repo to heroku: git push heroku master
- configure heroku to run in production:  heroku config:add SINATRA_ENV=production
    - this is equivalent to local cmd: ruby app.rb -e production
- restart heroku: heroku restart        # do this from the sinatra app's root directory
- migration:  heroku run rake db:migrate
- check for logging errors:  heroku logs

## Databases
- ActiveRecord (local)
    - [Dynamic ActiveRecord Database Connections (without Rails)](http://www.runtime-era.com/2012/11/dynamic-activerecord-database.html)
    - Joins
        - [ActiveRecord joins in Sinatra](https://stackoverflow.com/questions/21250146/multi-dimensional-joins-with-activerecord-and-sinatra)
        - [ActiveRecord Join](https://stackoverflow.com/questions/16962928/struggling-with-an-active-record-join-query)
## Ruby and R Integration:
- [Best way to use R in Ruby](https://stackoverflow.com/questions/10086605/best-way-to-use-r-in-ruby)
- [RServe on Heroku](https://stackoverflow.com/questions/17768389/how-to-get-the-daemon-rserve-running-as-worker-dyno-on-heroku)
    - Closing connections?
        - [ConnectionManagement and close](https://coderwall.com/p/ft9drq)

## Message Queues
- [IronMQ (gem)](https://github.com/iron-io/iron_mq_ruby)

## Cacheing
- Redis
    - [Redis & Sinatra: Shortlink app tutorial](http://code.tutsplus.com/tutorials/how-to-build-a-shortlink-app-with-ruby-and-redis--net-20984)
    - [RedisToGo & Heroku](https://devcenter.heroku.com/articles/redistogo)

##Workflows
- Ruote
  - [Ruote gem](https://github.com/jmettraux/ruote)
- AWS Workflows:
    - [AWS installation](http://docs.aws.amazon.com/amazonswf/latest/awsrbflowguide/installing.html)
    - [AWS SFW vs. local workflow management (single-threaded)](http://docs.aws.amazon.com/amazonswf/latest/awsflowguide/getting-started-example-helloworldworkflow.html)
    - [Video tutorial ("Hello World")](https://www.youtube.com/watch?v=Z_dvXy4AVEE)

## FACEBOOK APPS
- Facebook Apps from Heroku apps:
https://devcenter.heroku.com/articles/facebook
