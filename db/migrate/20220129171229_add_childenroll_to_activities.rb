class AddChildenrollToActivities < ActiveRecord::Migration[6.1]
    def change
      add_reference :childenrolls, :activity, null: false, foreign_key: true
    end
  end
  