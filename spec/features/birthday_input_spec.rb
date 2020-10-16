feature 'birthday input form' do
    scenario 'will ask for a persons birthdate, day and month and say it is your birthday @happy_birthday' do
        visit('/')
        fill_in(:name, with: 'Cameron')
        fill_in(:birthday, with: 16)
        fill_in(:birthmonth, with: "October")
        click_button('Submit')
        expect(page).to have_content('Hello, Cameron, happy birthday!')
    end
end