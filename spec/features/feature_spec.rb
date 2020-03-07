# In spec/features, write a feature test that checks that the hompage says Testing infrastructure working!


feature 'Form' do
  scenario 'I can submit players names' do
    sign_in_and_play # calling the method from web_helpers.rb
    expect(page).to have_content 'Jara vs. Bigotes'
  end
end

feature 'Attack' do
  scenario 'I can see player 2 HP' do
    sign_in_and_play
    expect(page).to have_content "Bigotes: 100 HP"
  end

  scenario 'I can attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'You attacked Bigotes!'
  end

  scenario 'My attack reduces player two HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Bigotes: 90 HP"
  end
end

feature 'switch turns' do
  scenario 'player switch after attack' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'back'
    expect(page).to have_content "It is Bigotes's turn"
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'back'
    click_button 'Attack'
    click_link 'back'
    expect(page).not_to have_content 'Jara: 100 HP'
    expect(page).to have_content 'Jara: 90 HP'
  end
end

feature 'win and lose' do
  scenario 'see a lose message when 0 HP' do
    sign_in_and_play
    18.times {attack_back}
    click_button 'Attack'
    expect(page).to have_content 'Bigotes is dead'
  end
end
