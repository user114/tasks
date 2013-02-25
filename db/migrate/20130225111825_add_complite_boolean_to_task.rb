class AddCompliteBooleanToTask < ActiveRecord::Migration
  def change
  	change_table :tasks do |t|
  		t.boolean :complite, :default => false
  	end
  end
end
