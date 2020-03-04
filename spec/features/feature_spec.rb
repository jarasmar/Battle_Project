# In spec/features, write a feature test that checks that the hompage says Testing infrastructure working!


feature 'Name entry form' do
  scenario 'player form' do
    visit ('/')
    fill_in :player1, with: 'Gareth'
    fill_in :player2, with: 'Jara'
    click_button 'Submit'
    expect(page).to have_content 'Gareth vs. Jara'
  end
end
