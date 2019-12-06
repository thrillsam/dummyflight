class AuthenticateUser

  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    if user
      user.role.eql?('admin') ? 'admin_dashboard' : 'dashboard'
    end
  end

  private

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)
    nil
  end
end