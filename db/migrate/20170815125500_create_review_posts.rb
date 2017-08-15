class CreateReviewPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :review_posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
