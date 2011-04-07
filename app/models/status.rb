class Status < ActiveRecord::Base
  validates_length_of :content, :maximum => 140
end
