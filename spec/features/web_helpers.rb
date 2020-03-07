def sign_in_and_play
  visit ('/')
  fill_in :player1, with: 'Jara'
  fill_in :player2, with: 'Bigotes'
  click_button 'Submit'
end

def attack_back
  click_button 'Attack'
  click_link 'back'
end
