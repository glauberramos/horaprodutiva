class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :final_date
      t.string :video_url
      t.string :image_url

      t.timestamps
    end
  end
end
