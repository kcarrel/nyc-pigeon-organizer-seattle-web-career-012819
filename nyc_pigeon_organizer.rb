def nyc_pigeon_organizer(data)
  new_pigeon = {}
  data.each do |info, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !new_pigeon.has_key?(name)
          new_pigeon[name] = {}
        end
        if !new_pigeon[name].has_key?(info)
          new_pigeon[name][info] = []
        end
        if !new_pigeon[name][info].include?(attribute)
          new_pigeon[name][info] << attribute.to_s 
        end
      end
    end
  end
  new_pigeon
end