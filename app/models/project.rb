class Project < ActiveRecord::Base
  attr_accessible :description, :final_date, :image_url, :name, :video_url, :tag_tokens
  has_many :microtasks
  has_and_belongs_to_many :tags
  attr_reader :tag_tokens

  validates :tags, :presence => true
  validates :name, :presence => true
  validates :description, :presence => true

  def tag_tokens=(ids)
    self.tags = []
    ids.split(',').each { |tag_name| 
      self.tags.push(Tag.find_or_create_by_name(tag_name)) unless tag_name.blank?
    }
  end
end
