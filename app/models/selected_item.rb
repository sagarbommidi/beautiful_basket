class SelectedItem < ApplicationRecord
  belongs_to :itemable, polymorphic: true
end
