class CreatePostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|

      t.timestamps
    end
  end
end
