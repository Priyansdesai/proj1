# Q0: Why are these two errors being thrown?
Because it doesn't understand what Pokemon is, so we need to create a model or database with the name of Pokemon so that it can acces it. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
the common factor between them is that they have a name, an ID, a picture, a level and a ndex. Basically, all these pokemon are the records of the Pokemon Model 


# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Basically, it creates a button with an instruction that it needs to look for the patch route in the routes using the capture_path prefix. It tells the button to look for the prefix assigned with capture_path and takes the ID of the pokemon being passed in or being tried to be captured. Also, it 

# Question 3: What would you name your own Pokemon?
I named it Shanti which is a Hindi word for Peace. Lol

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I checked the routes using rails routes and found that to redirect to a specific trainer's profile, I could use trainer path by passing the ID of the current trainer. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
When I was signing into the account, it errored because I used a wrong password. So, it used a similar format as when I add a name of a Pokemon that already exists. THerefore, what I make of flash , that it is a dictionary which contains all different messages that need to be flashed and the validation error is one of them and therefore thats what this command does. The code on the right hand side of the equal to sign changes the error message into a sentence. 

# Give us feedback on the project and decal below!
It was interesting, but there were a lot of hidden traps which could confuse us and which actually did. but, otherwise I felt I wouldnt be able to do this project. But I was able to and in fact I learnt a lot of new things. It revised most of the lectures. 

# Extra credit: Link your Heroku deployed app
