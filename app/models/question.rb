class Question < ActiveRecord::Base
    belongs_to :user
	validates :content , presence:true , length: {maximum:1000}
	has_many :answers,  dependent: :destroy

	scope :unsolved, -> {
  where(:status => 0)
}
end
