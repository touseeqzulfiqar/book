class CreateRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :records do |t|
      t.string :title
      t.text :author
      t.date :published_at

      t.timestamps
    end
  end
end
