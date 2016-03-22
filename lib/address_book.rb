class AddressBook
  
  def initialize(options={})
    @first_name = options[:first_name]
    @last_name = options[:last_name]
    @street_address = options[:street_address]
    @city = options[:barcode]
    @state = options[:cost]
    @zipcode = options[:store_purchased_from]
    @relationship = options[:relationship]
    @email = options[:email]
  end

  #------------------------

  def first_name
    @first_name
  end

  def first_name=(first_name)
    @first_name = first_name
  end

  #------------------------

  def last_name
    @last_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  #------------------------

  def street_address
    @street_address
  end

  def street_address=(street_address)
    @street_address = street_address
  end

  #------------------------

  def city
    @city
  end

  def city=(city)
    @city = city
  end

  #------------------------

  def state
    @state
  end

  def state=(state)
    @state = state
  end

  #------------------------

  def zipcode
    @zipcode
  end

  def zipcode=(zipcode)
    @zipcode = zipcode
  end

  #------------------------

  def relationship
    @relationship
  end

  def relationship=(relationship)
    @relationship = relationship
  end

  #------------------------

  def email
    @email
  end

  def email=(email)
    @email = email
  end

  #------------------------



  def new_toy(relationship, first_name, last_name)
    "This week I need to write my #{relationship} #{first_name} #{last_name}"
  end






end