class ChangeTwitterHandleToString < ActiveRecord::Migration
  def change
  	change_column :fortunes, :twitter_handle, :string
  end
end
