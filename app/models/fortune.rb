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

	def tweet
		signoff = " - my fortune via unlucky-monkey.herokuapp.com %23chinesenewyear %23yearofthemonkey"

		if description.length > 60
			"#{description.split(//).slice(0,60).join} #{signoff}"
		else
			"#{description} #{signoff}"
		end
	end
end
