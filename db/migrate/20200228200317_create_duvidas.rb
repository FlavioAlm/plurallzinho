class CreateDuvidas < ActiveRecord::Migration[6.0]
  def change
    create_table :duvidas do |t|
      t.text :text

      t.timestamps
    end
  end
end
