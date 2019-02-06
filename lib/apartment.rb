class Apartment
  #attr_reader :number
  def initialize(hash)
    @hash = hash

  end
  def number
    @hash[:number]
  end
  def monthly_rent
    @hash[:monthly_rent]

  end
  def bathrooms
    @hash[:bathrooms]

  end
  def bedrooms
    @hash[:bedrooms]

  end
  def renter
    @hash[:renter]
  end
  def add_renter(jessie)
    @hash[:renter]=jessie

  end

end
