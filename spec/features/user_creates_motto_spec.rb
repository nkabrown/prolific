require "rails_helper"

feature "User creates motto" do
  scenario "successfully" do
  sign_in

  click_on "Make A Motto"
  fill_in "Motto", with: "The good serves the better and both the best"
  click_on "Submit"

  expect(page).to have_css "h2", text: "The good serves the better and both the best"
  end
end
