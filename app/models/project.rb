class Project < ActiveRecord::Base
  attr_accessible :description, :final_date, :image_url, :name, :video_url, :tag_tokens
  has_many :microtasks
  has_and_belongs_to_many :tags
  attr_reader :tag_tokens

  validates :tags, :presence => { :message => 'Campo nao pode ser em branco' }
  validates :name, :presence => { :message => 'Campo nao pode ser em branco' }
  validates :description, :presence => { :message => 'Campo nao pode ser em branco' }

  def tag_tokens=(ids)
    self.tags = []
    ids.split(',').each { |tag_name| 
      self.tags.push(Tag.find_or_create_by_name(tag_name)) unless tag_name.blank?
    }
  end
end
