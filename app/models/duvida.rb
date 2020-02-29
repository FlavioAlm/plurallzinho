class Duvida < ApplicationRecord
    has_one :resposta
    validates :text, presence: true, length: { minimum: 5 }

end
