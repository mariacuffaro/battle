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
    visit('/enter-players')
    fill_in('Player1', with: 'Karlo')
    fill_in('Player2', with: 'Maria')
    click_button('Start Battle')
    expect(page).to have_content 'Karlo and Maria - Fight!'
  end
end
