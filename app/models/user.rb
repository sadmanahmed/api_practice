class User < ApplicationRecord

  # validates :first_name, presence: true
  # validates :last_name, presence: true

  def as_json(*)
    # super.merge(
    #   full_name: full_name
    # )
    {full_name: full_name }
  end

  def full_name
    [first_name, last_name].join(" ")
  end

end
