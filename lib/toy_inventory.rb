class ToyInventory
  
  def initialize(options={})
    @toy_name = options[:toy_name]
    @manufacturer = options[:manufacturer]
    @age_group = options[:age_group]
    @pieces = options[:pieces]
    @barcode = options[:barcode]
    @cost = options[:cost]
    @store_purchased_from = options[:store_purchased_from]
    @date_purchased = options[:date_purchased]
  end

  #------------------------

  def toy_name
    @toy_name
  end

  def toy_name=(toy_name)
    @toy_name = toy_name
  end

  #------------------------

  def manufacturer
    @manufacturer
  end

  def manufacturer=(manufacturer)
    @manufacturer = manufacturer
  end


  #------------------------

  def age_group
    @age_group
  end

  def age_group=(age_group)
    @age_group = age_group
  end

  #------------------------

  def pieces
    @pieces
  end

  def pieces=(pieces)
    @pieces = pieces
  end

  #------------------------

  def barcode
    @barcode
  end

  def barcode=(barcode)
    @barcode = barcode
  end

  #------------------------

  def cost
    @cost
  end

  def cost=(cost)
    @cost = cost
  end

  #------------------------

  def store_purchased_from
    @store_purchased_from
  end

  def store_purchased_from=(store_purchased_from)
    @store_purchased_from = store_purchased_from
  end

  #------------------------

  def date_purchased
    @date_added
  end

  def date_purchased=(date_purchased)
    @date_purchased = date_purchased
  end

  #------------------------



  def new_toy(age_group, toy_name)
    "#{toy_name} is the new toy for children ages: #{age_group}"
     
  end






end