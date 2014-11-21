require "rails_helper"

feature "User creates habit" do
  scenario "successfully" do
  visit root_path
  click_on "Make A New Habit"
  fill_in "Goal", with: "Write a book"
  click_on "Submit"

  expect(page).to have_css "p", text: "Write a book"
  end
end

