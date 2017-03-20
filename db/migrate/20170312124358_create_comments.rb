class CreateComment < ActiveRecord::Migration[5.0]
  def change
    create_table :comment do |t|
      t.string :email
      t.string :comment
      t.belongs_to :article, foreign_key: true

      t.timestamps
    end
  end
end
