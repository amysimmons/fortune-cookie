class RenameUrlToTwitterHandle < ActiveRecord::Migration
  def change
  	change_table :fortunes do |t|
	  t.rename :url, :twitter_handle
	end
  end
end
