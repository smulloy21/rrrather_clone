class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :title, default: "Would you rather"
      t.timestamps
    end
    create_table :options do |t|
      t.integer :question_id
      t.string :text
      t.string :image_url
      t.timestamps
    end
    create_table :comments do |t|
      t.integer :user_id
      t.string :text
      t.timestamps
    end
    create_table :votes do |t|
      t.integer :user_id
      t.references :voteable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
