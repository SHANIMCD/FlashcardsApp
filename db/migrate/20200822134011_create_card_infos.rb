class CreateCardInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :card_infos do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
