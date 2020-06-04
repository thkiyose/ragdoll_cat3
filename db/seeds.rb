5.times do
  Property.create(name:"物件",rent:100000,place:"住所",old:20,comment:"備考", stations_attributes:[
    {
      line_near:"最寄りの路線",
      station_near:"最寄り駅",
      minutes_needed:10
    }
    ])
end
