class Project < ActiveRecord::Base
  attr_accessible :description, :final_date, :image_url, :name, :video_url
end
