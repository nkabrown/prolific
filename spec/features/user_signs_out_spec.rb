require "rails_helper"

feature "User signs out" do
  scenario "successfully" do
    sign_in

    start_habit

    click_on "Sign Out"

    expect(page).not_to have_css "p", text: "Write a book"
  end
end
