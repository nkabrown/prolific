require "rails_helper"

feature "User creates motto" do
  scenario "successfully" do
  sign_in

  start_motto

  expect(page).to have_css "h2", text: "The good serves the better and both the best"
  end
end
