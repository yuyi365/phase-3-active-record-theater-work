class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map { |audition| audition.actor }
  end

  def locations
    self.auditions.map { |audition| audition.location }
  end

  def lead
    hired = self.auditions.where(hired: true)
    if hired.length != 0 && hired.first != nil
      hired.first
    else
      'no actor has been hired for this role'
    end
  end

  def understudy
    hired_two = self.auditions.where(hired: true)
    if hired_two.length != 0 && hired_two.second != nil
      hired_two.second
    else
      'no actor has been hired for this role'
    end
  end
end
