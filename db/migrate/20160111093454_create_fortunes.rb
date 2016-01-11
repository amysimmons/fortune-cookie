class CreateFortunes < ActiveRecord::Migration
  def change
    create_table :fortunes do |t|
		t.text :description
		t.string  :name
		t.integer  :age
		t.string  :city
		t.string  :country
		t.text  :url
		t.timestamps
    end
  end
end
