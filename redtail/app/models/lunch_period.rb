# == Schema Information
# Schema version: 20090113051314
#
# Table name: lunch_periods
#
#  id              :integer(4)      not null, primary key
#  period          :integer(4)
#  name            :string(255)
#  begin_end_times :string(255)
#  to_go_available :boolean(1)
#  created_at      :datetime
#  updated_at      :datetime
#

class LunchPeriod < ActiveRecord::Base

  def to_s
    "#{name} [#{begin_end_times}]" 
  end
  
end
