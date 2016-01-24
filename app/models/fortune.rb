# == Schema Information
#
# Table name: fortunes
#
#  id             :integer          not null, primary key
#  description    :text
#  name           :string
#  age            :integer
#  city           :string
#  country        :string
#  twitter_handle :string
#  created_at     :datetime
#  updated_at     :datetime
#

class Fortune < ActiveRecord::Base
	validates :description, :presence => true 

	def clean_twitter_handle
		twitter_handle.split(//).slice(1, twitter_handle.length).join
	end
end
