def oxford_comma(array)
  target_string = ""
  new_array = array.join(", ")
  newer = new_array.split(", ")
  if newer.length == 1
   target_string << newer[0]
  elsif newer.length == 2
    target_string << newer[0]
    target_string << " " << "and" << " "
    target_string << newer[1]
  else
    all_but_last = newer[0...-1]
    all_but_last.each do |item|
        target_string << item << ", "
      end
    target_string << "and" << " "
    target_string << newer[-1]
  end
  target_string
end