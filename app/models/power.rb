class Power
  include Consul::Power

  def initialize(user)
    @user = user
  end

  power :users do
    User if @user.admin?
  end

  power :notes do
    Note.by_author(@user)
  end

  power :dashboard do
    true # not a scope, but a boolean power. This is useful to control access to stuff that doesn't live in the database.
  end

end