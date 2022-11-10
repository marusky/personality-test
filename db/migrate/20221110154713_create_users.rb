class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nickname
      t.boolean :show_results, null: false, default: false
      t.jsonb :results, null: false, default: {
        lion: 0,
        golden_retriever: 0,
        seal: 0,
        beaver: 0
      }

      t.timestamps
    end
  end
end
