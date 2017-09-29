class User < ApplicationRecord
  enum role: [:student, :guide, :admin, :coordinator]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :student
  end
validates :college_roll, :presence => true, :uniqueness => true
validates_length_of :college_roll, :is => 6, :wrong_length => "incomplete"

validates_length_of :university_roll_no, :is => 7, :wrong_length => "incomplete"


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
