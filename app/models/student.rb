class Student
  include Mongoid::Document
  include Mongoid::Timestamps

  ### Attributes
  field :name, type: String
  field :lastname, type: String
  field :telephone, type: String
  field :scholarship, type: Boolean

  ### Validations
  validates :name, :presence => true, :length => { :maximum => 80, :allow_blank => false }
  validates :lastname, :presence => true, :length => { :maximum => 80, :allow_blank => false }
  validates :telephone, :presence => true, :length => { :maximum => 20, :allow_blank => false }
end