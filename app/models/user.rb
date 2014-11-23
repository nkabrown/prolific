class User

  def initialize(email)
    @email = email
  end

  def habits 
    Habit.where(email: @email)
  end

  def mottos
    Motto.where(email: @email)
  end

  def signed_in?
    @email.present?
  end

end
