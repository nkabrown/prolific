module Features

  def start_motto
    click_on "Make A Motto"
    fill_in "Motto", with: "The good serves the better and both the best"
    click_on "Submit"
  end

end
