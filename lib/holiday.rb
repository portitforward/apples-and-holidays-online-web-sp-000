require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].map{|k, v| v << supply }
  
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  new_hash = holiday_hash
  new_hash[season] = {
    holiday_name => supply_array
  }
  

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter
  return holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
	for season in holiday_hash.keys
		holidays = holiday_hash[season]
		puts season.to_s.capitalize + ":"
		for holiday in holidays.keys
			supplies = holidays[holiday]				
			puts "  #{holiday.to_s.split("_").map{|h| h.capitalize}.join(" ")}: "  + supplies.map{|k| k}.join(", ")  
		end
	end
end

def all_holidays_with_bbq(holiday_hash)
  return_list = []
  for season in holiday_hash.keys
    holidays = holiday_hash[season]
    for holiday in holidays.keys
      supplies = holidays[holiday]
      binding
      if supplies.include?("BBQ")
        return_list << holiday
      end
    end
  end  
  return_list
end







