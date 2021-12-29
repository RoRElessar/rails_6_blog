class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :image
      t.boolean :published, default: true, nil: false

      t.timestamps
    end
  end
end
