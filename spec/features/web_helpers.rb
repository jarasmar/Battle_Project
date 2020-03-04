def sign_in_and_play
  visit ('/')
  fill_in :player1, with: 'Gareth'
  fill_in :player2, with: 'Jara'
  click_button 'Submit'
end
