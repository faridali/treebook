class Status < ActiveRecord::Base
  attr_accessible :content, :user_id, :cards_attributes
  belongs_to :user

  validates :content, presence: true,
  					  length: { minimum: 1, maximum: 200 }

  validates :user_id, presence: true

  has_many :slides, :dependent => :destroy
  has_many :cards

  accepts_nested_attributes_for :cards, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
