class CreateDenims < ActiveRecord::Migration[6.1]
  def change
    create_table :denims do |t|
      t.string :body
      t.string :image
      t.timestamps
    end
  end
end
