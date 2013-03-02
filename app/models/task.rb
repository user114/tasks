class Task < ActiveRecord::Base
  attr_accessible :description, :name, :complite
  #attr_accessor :complite, :name

  belongs_to :list
end
