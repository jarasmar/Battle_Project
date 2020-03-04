# In spec/features, write a feature test that checks that the hompage says Testing infrastructure working!


feature 'Name entry form' do
  scenario 'player form' do
    sign_in_and_play # calling the method from web_helpers.rb
    expect(page).to have_content 'Gareth vs. Jara'
  end
end

feature 'see player 2 hit points' do
  scenario 'play screen' do
    sign_in_and_play
    expect(page).to have_content "Jara's hit points: 10"
  end
end
