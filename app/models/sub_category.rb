class SubCategory < ActiveRecord::Base

  belongs_to :category
  has_many :chapters, dependent: :destroy

end
