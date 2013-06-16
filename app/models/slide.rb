class Slide < ActiveRecord::Base
  attr_accessible :content
  belongs_to :status
end
