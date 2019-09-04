feature 'Testing infrastructure' do
  scenario 'homepage displays expected text' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Testing form' do
  scenario 'form exists on the page' do
    visit('/enter-players')
    page.should have_css('input[name="Player1"]')
    page.should have_css('input[name="Player2"]')
  end
  scenario 'players can use the form to input thier names' do
    sign_in_and_play
    expect(page).to have_content 'Karlo and Maria - Fight!'
  end
end

feature 'Hit points' do
  scenario "displays player's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Maria has 5 hitpoints'
  end
end
