class CreateEarlyAdopters < ActiveRecord::Migration[5.2]
  def change
    create_table :early_adopters do |t|
    	t.string :name
    	t.string :email, null: false
    	t.string :company
      t.string :referral_token
      t.integer :referral_count
      t.timestamps
    end
  end
end
