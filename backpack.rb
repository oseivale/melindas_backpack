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
    pack_clothes_depending_on_weather
    # Ensure appropriate item is added to backpack, depending on the weather_conditions

    pack_items_depending_on_day
    # Ensure gym shoes are added to backpack if it's a gym day
  end

  def my_packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

  def pack_necessary_items
    @items << 'pants'
    @items << 'shirt'
  end

  def pack_clothes_depending_on_weather
    # Ensure appropriate item is added to backpack, depending on the weather_conditions
      weather_conditions = @attributes[:weather]
      pack_necessary_items
    if weather_conditions == 'rainy'
      @items << 'umbrella'
    else weather_conditions == 'cold'
      @items << 'jacket'
    end
  end

  def pack_items_depending_on_day
    #pack gym clothes on gym day
    gym_day?
    #bring lunch on weekdays
    bring_lunch_on_weekday
  end

    # Ensure gym shoes are added to backpack if it's a gym day
    # Gotta get to the gym on Mondays and Thursdays.
  def gym_day?
    if day_of_week == 'monday' || day_of_week == 'thursday'
      #add gym shoes to items
      @items << 'gym shoes'
    end
  end

  def bring_lunch_on_weekday
    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  def day_of_week
    @attributes[:day_of_week]
  end
end
