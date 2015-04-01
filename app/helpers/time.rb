def time(input)
  sec = (Time.now.to_i - input.created_at.to_i)
  days = sec / (60*60*24)
end