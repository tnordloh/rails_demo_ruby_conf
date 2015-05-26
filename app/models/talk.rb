class Talk < ActiveRecord::Base
  belongs_to :track
  validates :title, :name, :abstract, :notes, :email, :bio, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
