require "rails_helper"

feature "User sees own habits" do
  scenario "doesn't see others' habits" do
    Habit.create!(goal: "Write a book", email: "someone_else@example.com")

    sign_in_as "someone@example.com"

    expect(page).not_to have_css "p", text: "Write a book"
  end
end
