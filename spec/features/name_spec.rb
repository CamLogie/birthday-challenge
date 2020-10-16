feature 'Name form' do
    scenario 'will ask for the persons name and display it on the happy birthday page' do
    visit('/')
    fill_in(:name, with: 'Cameron')
    click_button('Submit')
    expect(page).to have_content('Hello, Cameron!')
    end
end