class List < ActiveRecord::Base
  attr_accessible :description, :name
  #attr_accessor :description, :name

  has_many :tasks, :dependent => :destroy
end
