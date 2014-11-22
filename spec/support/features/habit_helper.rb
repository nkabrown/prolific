module Features

  def start_habit
    click_on "Make A New Habit"
    fill_in "Goal", with: "Write a book"
    fill_in "Small Step", with: "Write one sentence"
    fill_in "Daily Routine", with: "Brushing my teeth"
    click_on "Submit"
  end

end
