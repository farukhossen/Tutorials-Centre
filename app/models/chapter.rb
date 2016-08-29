class Chapter < ActiveRecord::Base

  belongs_to :sub_category
  has_many :videos, dependent: :destroy
  accepts_nested_attributes_for :videos, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true


end
