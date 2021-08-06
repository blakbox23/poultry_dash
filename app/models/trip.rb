class Trip < ApplicationRecord
belongs_to :user
validates :s_date, presence: true
end
