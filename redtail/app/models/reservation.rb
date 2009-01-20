# == Schema Information
# Schema version: 20090113051314
#
# Table name: reservations
#
#  id              :integer(4)      not null, primary key
#  user_id         :integer(4)
#  restaurant_id   :integer(4)
#  lunch_period_id :integer(4)
#  take_out        :string(255)
#  drink           :string(255)
#  dressing        :string(255)
#  special_request :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  belongs_to :lunch_period
  
  validates_presence_of :user, :on => :create, :message => "can't be blank"
  validates_presence_of :restaurant, :on => :create, :message => "can't be blank"
  validates_presence_of :lunch_period, :on => :create, :message => "can't be blank"

end
