class CreateCommentvotes < ActiveRecord::Migration
  def change
    create_table :commentvotes do |t|

      t.timestamps
    end
  end
end
