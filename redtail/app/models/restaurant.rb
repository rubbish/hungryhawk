# == Schema Information
# Schema version: 20090113051314
#
# Table name: restaurants
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  date        :date
#  price       :float
#  open        :boolean(1)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Restaurant < ActiveRecord::Base
  has_many :reservations
  
  def name_on_date
    "#{name} on #{date}"
  end
  
  def self.find_next
    self.find(:first, :conditions => ["date > ?", Date.today], :order => "date asc") 
  end
  
end
