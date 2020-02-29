class CreateResposta < ActiveRecord::Migration[6.0]
  def change
    create_table :respostas do |t|
      t.text :body
      t.references :duvida, null: false, foreign_key: true

      t.timestamps
    end
  end
end
