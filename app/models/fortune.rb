# == Schema Information
#
# Table name: fortunes
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string
#  age         :integer
#  city        :string
#  country     :string
#  url         :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Fortune < ActiveRecord::Base
	validates :description, :presence => true 
end
