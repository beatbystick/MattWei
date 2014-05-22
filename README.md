# Shang-Wei and Matt's test project

In order to run this you will need to:
- Install Homebrew
- Install rbenv by using Homebrew
- Install Ruby by using rbenv
- Install rails gem
- Install bundler gem
- Install elasticsearch by using Homebrew

After installing ruby and rails, run 
```
bundle install
```
to install all the required gems.

To start rails server, go to the project folder and run
```
bundle exec rails server
```

To start elasticsearch server, run
```
elasticsearch
```
given that the $PATH has included the elasticsearch command.

Open browser and go to <a href="http://localhost:3000/">http://localhost:3000/</a>


