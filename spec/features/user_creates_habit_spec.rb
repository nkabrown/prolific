require "rails_helper"

feature "User creates habit" do
  scenario "successfully" do
  sign_in

  start_habit

  expect(page).to have_css "p", text: "Write a book"
  end
end

