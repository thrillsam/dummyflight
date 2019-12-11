class Power
  include Consul::Power

  def initialize(user)
    @user = user
  end

  power :dashboard do
    true
  end

  power :admin_only do
    @user.role.eql?('admin')
  end

  # power :users do
  #   User if @user.admin?
  # end

  # power :notes do
  #   Note.by_author(@user)
  # end

end