#find all the logs which match and add their values together

log = [
  {time: 201201, x: 2},
  {time: 201201, y: 7},
  {time: 201201, z: 2},
  {time: 201202, a: 3},
  {time: 201202, b: 4},
  {time: 201202, c: 0}
]

new_log = []
timestamps = []

log.each do |hash|
  if !timestamps.include?(hash[:time])
    timestamps << hash[:time]
    new_log << hash
  else
    old_hash = new_log.find { |old_hash| old_hash[:time] == hash[:time] }
    old_hash.merge!(hash)
  end
end


p new_log



