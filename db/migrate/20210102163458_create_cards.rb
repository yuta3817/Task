class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.references  :list, null: false
      t.string      :title, null: false, limit: 255
      t.text        :memo,  null: false, limit: 1000
      t.timestamps
    end
  end
end
