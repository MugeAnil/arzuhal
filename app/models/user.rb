class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  has_many :comments, dependent: :destroy

  validates :name, presence: true;

  validates :surname, presence: true;

  validates :e_mail, presence: true;

end
