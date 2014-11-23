require "rails_helper"

feature "User destroys habit" do
  scenario "successfully" do
    sign_in

    start_habit

    click_on "Delete"

    expect(page).not_to have_css "p", text: "Write a book"
  end
end
