# Shang-Wei and Matt's test project

In order to run this you will need to:
- 1. Install Homebrew
- 2. Install rbenv by using Homebrew
- 3. Install Ruby by using rbenv
- 4. Install rails gem
- 5. Install bundler gem
- 6. Install elasticsearch by using Homebrew

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

Open browser and go to <a href="http://localhost:3000/">http://localhost:3000/</a>""


