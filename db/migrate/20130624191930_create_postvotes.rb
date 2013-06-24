class CreatePostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|
      t.references :comment
      t.references :user

      t.timestamps
    end
  end
end
