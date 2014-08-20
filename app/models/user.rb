class User < ActiveRecord::Base

  has_many :comments, dependent: :destroy

  validates :name, presence: true;

  validates :surname, presence: true;

  validates :e_mail, presence: true;

end
