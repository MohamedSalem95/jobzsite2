class CreateTaskImages < ActiveRecord::Migration[6.0]
  def change
    create_table :task_images do |t|
      t.string :image, null: false
      t.string :caption, null: true

      t.belongs_to :task

      t.timestamps
    end
  end
end
