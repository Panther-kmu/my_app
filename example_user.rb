class User
  attr_accessor :name, :email

  def initialize(attributes ={})
    @name = attributes[:name]
    @email = attributes[:email]
  end

  def format_email
    "#{name} <#{email}>"
  end

  def print_formatted
    puts format_email
  end
end

u = User.new(:name => "Khaja", :email => "k@c.com")
u.format_email
