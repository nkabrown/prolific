require "rails_helper"

feature "User updates habit" do
  scenario "successfully" do
    sign_in

    start_habit

    click_on "Edit"
    fill_in "Goal", with: "Write two books"
    click_on "Update"

    expect(page).to have_css "p", text: "Write two books"
  end
end
