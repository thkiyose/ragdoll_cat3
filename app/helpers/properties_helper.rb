module PropertiesHelper
  def display_yen(rent)
    # add commas and yen to integer
    "#{rent.to_s(:delimitted)}円"
  end
end
