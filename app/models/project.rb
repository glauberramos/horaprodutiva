class Project < ActiveRecord::Base
  attr_accessible :description, :final_date, :image_url, :name, :video_url, :tag_name
  # has_many :microtasks
  has_one :tag

  validates :tag, :presence => true
  validates :name, :presence => true
  validates :description, :presence => true


  # Autocomplete helpers
  def tag_name
  	tag.name if tag
  end

  def tag_name=(name)
  	self.tag = Tag.find_by_name(name) unless name.blank?
  end
end
