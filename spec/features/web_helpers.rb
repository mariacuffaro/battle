def sign_in_and_play
  visit('/enter-players')
  fill_in('Player1', with: 'Karlo')
  fill_in('Player2', with: 'Maria')
  click_button('Start Battle')
end
