class Student < ActiveRecord::Base
  validates :first_name, presence: true 
  # validates :last_name, presence: true 
  def to_full_name
    self.first_name + " " + self.last_name
  end
end