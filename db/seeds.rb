User.create! [{ :username => 'bsloan', :email => 'bsloan@umich.edu', :password => 'brad'},
              { :username => 'david', :email => 'david@david.com', :password => 'david'}]

Deck.create! [{ :category => 'sports'},
              { :category => 'comics'},
              { :category => 'math'},
              { :category => 'movies'}]

Card.create! [{ :deck_id => 1, :question => 'Who won the 2004 NBA finals? (full team name)', :answer => 'detroit pistons'},
              { :deck_id => 1, :question => 'Which Manning brother is oldest? (Peyton or Eli)', :answer => 'peyton'},
              { :deck_id => 1, :question => 'How many NBA championship rings does Kobe have?', :answer => '5'},
              { :deck_id => 1, :question => 'How many NFL teams has Tom Brady played for?', :answer => '1'},
              { :deck_id => 1, :question => 'What sports did Michael Jordan play? (seperate with and)', :answer => 'basketball and baseball'},
              { :deck_id => 2, :question => 'Who is Spider-Man?', :answer => 'peter parker'},
              { :deck_id => 2, :question => 'What color is Green Lanterns ring?', :answer => 'green'},
              { :deck_id => 2, :question => 'Who is faster, The Flash or Superman?', :answer => 'the flash'},
              { :deck_id => 2, :question => 'What superhero has the real name of Oliver Queen?', :answer => 'green arrow'},
              { :deck_id => 2, :question => 'What Batman/Green Arrow villain wears an orange and black mask', :answer => 'deathstroke'},
              { :deck_id => 3, :question => '2+2', :answer => '4'},
              { :deck_id => 3, :question => '5*9', :answer => '45'},
              { :deck_id => 3, :question => '7/3', :answer => '9'},
              { :deck_id => 3, :question => 'sqrt of 64', :answer => '8'},
              { :deck_id => 3, :question => '-7+6', :answer => '-1'},
              { :deck_id => 4, :question => 'How many Godfather films are there?', :answer => '3'},
              { :deck_id => 4, :question => 'What Pixar film follows the adverntures of the Parr family?', :answer => 'the incredibles'},
              { :deck_id => 4, :question => 'Who is the lead in Castaway?', :answer => 'tom hanks'},
              { :deck_id => 4, :question => 'What Disney film features the song, Part of Your World', :answer => 'the little mermaid'},
              { :deck_id => 4, :question => 'Who directed the film, Me Him Her?', :answer => 'max landis'}]
