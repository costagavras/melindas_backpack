class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare

    # gets Melinda's backpack ready
    clothing_by_weather_type
    gym_shoes
    lunch_or_snacks

  end

  def packing_list
  # Prints a summary packing list for Melinda's backpack
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

  def weather
    return weather = @attributes[:weather]
  end

  def day_of_week
    day_of_week = @attributes[:day_of_week]
  end

  def clothing_by_weather_type
    # Ensure appropriate clothing is added to backpack
    @items << 'pants'
    @items << 'shirt'
    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    end
  end

  def gym_shoes
    # Ensure gym shoes are added to backpack if it's a gym day: Monday & Thursday
    day_of_week == 'monday' || day_of_week == 'thursday' ? @items << 'gym shoes' : ""
  end

  def lunch_or_snacks
    # Bring a packed lunch on all weekdays, snacks on weekend
    day_of_week != 'saturday' && day_of_week != 'sunday' ? @items << 'packed lunch' : @items << 'snacks'
  end

end
