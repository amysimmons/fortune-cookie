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

	def tweet_signoff
		if twitter_handle
			" - my fortune by @#{twitter_handle} via unlucky-monkey.herokuapp.com %23chinesenewyear %23yearofthemonkey"
		else
			" - my fortune via unlucky-monkey.herokuapp.com %23chinesenewyear %23yearofthemonkey"
		end
	end

	def tweet_chars_remaining
		#149 because the url gets shortened so there are more chars available
		#-2 is for the quotation marks around the fortune
		149 - tweet_signoff.length - 2
	end

	def tweet_fortune_description
		if description.length < tweet_chars_remaining
			description
		else
			#-3 is for the ...
			description.split(//).slice(0, tweet_chars_remaining - 3).join.strip + "..."
		end
	end

	def tweet
		"%22#{tweet_fortune_description}%22#{tweet_signoff}"
	end

end
