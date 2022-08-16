class Pet < ApplicationRecord
  SPECIES = ['dog', 'cat', 'rabbit', 'bird', 'snake']

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_ago
    (Date.today - self.found_on).to_i
  end
end
