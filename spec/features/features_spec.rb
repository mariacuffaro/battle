feature 'Testing infrastructure', type: :feature do
  scenario 'homepage displays expected text' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
