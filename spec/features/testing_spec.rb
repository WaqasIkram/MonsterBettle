# feature 'Testing infrastructure working' do
#   scenario 'Displays some content in the page' do
#     visit('/')
#     expect(page).to have_content('Hello Monsters!')
#   end
# end

feature 'Expects players to fill in their names' do
  scenario 'Asks for a name' do
    visit('/')
    fill_in('player1', with: 'Riky')
    fill_in('player2', with: 'Jessica')
    click_button('submit')
    expect(page).to have_content('Riky vs Jessica')
  end
end