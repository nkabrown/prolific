require "rails_helper"

feature "User updates motto" do
  scenario "successfully" do
    sign_in

    start_motto

    click_on "Edit"
    fill_in "Content", with: "To do what is difficult all one's days as if it were easy, that is faith"
    click_on "Update"

    expect(page).to have_css "h2", text: "To do what is difficult all one's days as if it were easy, that is faith"
  end
end
