class Shoe < ActiveRecord::Base
	belongs_to :category
	belongs_to :company
	acts_as_commentable
	has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
  	def self.avaiable (id)
  		where(category_id:id)
  	end
end
