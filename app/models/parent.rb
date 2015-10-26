class Parent < ActiveRecord::Base
  belongs_to :user
  def age
  		now = Time.now.utc.to_date
   		now.year - date_de_naissance.year - (date_de_naissance.to_date.change(:year => now.year) > now ? 1 : 0)
  	end
end
