class CreateMicrotasks < ActiveRecord::Migration
  def change
    create_table :microtasks do |t|
      t.string :description

      t.timestamps
    end
  end
end
