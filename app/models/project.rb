class Project < ActiveRecord::Base
  attr_accessible :description, :final_date, :image_url, :name, :video_url, :tag_ids
  # has_many :microtasks
  has_and_belongs_to_many :tags

  validates :tags, :presence => true
  validates :name, :presence => true
  validates :description, :presence => true
end
