# In spec/features, write a feature test that checks that the hompage says Testing infrastructure working!

feature 'Testing infrastructure' do

  scenario 'can check homepage says testing infrastructure working' do
    visit ('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
