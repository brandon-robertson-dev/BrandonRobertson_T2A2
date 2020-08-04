class User < ApplicationRecord
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_one_attached :profile_picture
  has_and_belongs_to_many :roles
  has_one :store

  [:admin, :owner, :loggedin].each do |role|
    define_method("#{role}?") { roles.exists?(name: role) }
  end

  def add_role(role)
    unless send("#{role}?")
      roles << Role.find_by(name: role)
    end
  end

  def remove_role(role)
    if send("#{role}?")
      roles.delete(Role.find_by(name: role))
    end
  end

  def assign_default_role
    add_role('loggedin') if self.roles.blank?
  end

end
