class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.belongs_to :page
      t.string :title
      t.string :body
      t.timestamps null: false
    end
  end
end
