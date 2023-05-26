class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # has_and_belongs_to_many :list

  validates :movie, presence: true
  # validates :list, presence: true
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie, scope: :list
end

# A bookmark must be linked to a movie and a list,
# and the [movie, list] pairings should be unique.
# The comment of a bookmark cannot be shorter than 6 characters.
