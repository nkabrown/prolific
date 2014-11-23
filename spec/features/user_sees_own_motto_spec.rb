require "rails_helper"

feature "User sees own motto" do
  scenario "doesn't see others' motto" do
    Motto.create!(content: "The good serves the better and both the best", email: "someone_else@example.com")

    sign_in_as "someone@example.com"

    expect(page).not_to have_css "h2", text: "The good serves the better and both the best"
  end
end
