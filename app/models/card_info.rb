class CardInfo < ApplicationRecord
    has_many :collections
    validates :title,
        presence: true,
        length: {minimum: 5}
end
