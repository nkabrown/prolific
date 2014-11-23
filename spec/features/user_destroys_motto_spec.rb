require "rails_helper"

feature "User deletes motto" do
  scenario "successfully" do
    sign_in

    start_motto

    click_on "Delete"

    expect(page).not_to have_css "h2", text: "The good serves the better and both the best"
  end
end
