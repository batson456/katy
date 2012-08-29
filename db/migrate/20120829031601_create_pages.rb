class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.text :content
      t.text :sidebar

      t.timestamps
    end
  end
end
