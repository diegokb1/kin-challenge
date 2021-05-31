module PolicyOcr
  def self.foo
    file = File.open("./spec/fixtures/sample.txt")
    file_data = file.readlines.map(&:chomp)
    entry_number_1_list = [0,1,2,3,4,5,6,7,8,9]
    entry_number_2_list = [0,1,2,3,4,5,6,7,8,9]
    entry_number_3_list = [0,1,2,3,4,5,6,7,8,9]
    entry_number_4_list = [0,1,2,3,4,5,6,7,8,9]
    entry_number_5_list = [0,1,2,3,4,5,6,7,8,9]
    entry_number_6_list = [0,1,2,3,4,5,6,7,8,9]
    entry_number_7_list = [0,1,2,3,4,5,6,7,8,9]
    entry_number_8_list = [0,1,2,3,4,5,6,7,8,9]
    entry_number_9_list = [0,1,2,3,4,5,6,7,8,9]
    file_data.each_with_index do |element, index|
      if (index + 1) % 4 == 0
        full_entry_number = ""
        full_entry_number += get_number(entry_number_1_list)
        # full_entry_number += get_number(entry_number_2_list)
        # full_entry_number += get_number(entry_number_3_list)
        # full_entry_number += get_number(entry_number_4_list)
        # full_entry_number += get_number(entry_number_5_list)
        # full_entry_number += get_number(entry_number_6_list)
        # full_entry_number += get_number(entry_number_7_list)
        # full_entry_number += get_number(entry_number_8_list)
        # full_entry_number += get_number(entry_number_9_list)

        puts full_entry_number
        entry_number_1_list = [0,1,2,3,4,5,6,7,8,9]
        # entry_number_2_list = [0,1,2,3,4,5,6,7,8,9]
        # entry_number_3_list = [0,1,2,3,4,5,6,7,8,9]
        # entry_number_4_list = [0,1,2,3,4,5,6,7,8,9]
        # entry_number_5_list = [0,1,2,3,4,5,6,7,8,9]
        # entry_number_6_list = [0,1,2,3,4,5,6,7,8,9]
        # entry_number_7_list = [0,1,2,3,4,5,6,7,8,9]
        # entry_number_8_list = [0,1,2,3,4,5,6,7,8,9]
        # entry_number_9_list = [0,1,2,3,4,5,6,7,8,9]
      end
      
      if (index + 1) % 4 != 0
        element.split('').each_slice(3).to_a.each_with_index do |part, i| #three for each number
          if (index + 1) % 4 == 1 #roof part of number
            part.each_with_index do |number_part, ind|
              if i == 0 #first element
                if ind == 0 #first part of element
                  if number_part == ' '
                    entry_number_1_list = entry_number_1_list - []
                  end
                  if number_part == '|'
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,5,6,7,8,9]
                  end
                  if number_part == '_'
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,5,6,7,8,9]
                  end
                end
                
                if ind == 1 #second part of element
                  if number_part == ' '
                    entry_number_1_list = entry_number_1_list - [0,2,3,5,6,7,8,9]
                  end
                  if number_part == '|'
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,5,6,7,8,9]
                  end
                  if number_part == '_'
                    entry_number_1_list = entry_number_1_list - [1,4]
                  end
                end
                if ind == 2 #third part of element
                  if number_part == ' '
                    entry_number_1_list = entry_number_1_list - []
                  end
                  if number_part == '|'
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,5,6,7,8,9]
                  end
                  if number_part == '_'
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,5,6,7,8,9]
                  end
                end
              end
            end
          end

          if (index + 1) % 4 == 2 #middle part of number
            part.each_with_index do |number_part, ind|
              if i == 0 #first element
                if ind == 0 #first part of element
                  if number_part == ' '
                    entry_number_1_list = entry_number_1_list - [0,4,5,6,8,9]
                  end
                  if number_part == '|'
                    entry_number_1_list = entry_number_1_list - [1,2,3,7]
                  end
                  if number_part == '_'
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,5,6,7,8,9]
                  end
                end
                if ind == 1 #second part of element
                  if number_part == ' '
                    entry_number_1_list = entry_number_1_list - [2,3,4,5,6,8,9]
                  end
                  if number_part == '|'
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,5,6,7,8,9]
                  end
                  if number_part == '_'
                    entry_number_1_list = entry_number_1_list - [0,1,7]
                  end
                end
                if ind == 2 #third part of element
                  if number_part == ' '
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,7,8,9]
                  end
                  if number_part == '|'
                    entry_number_1_list = entry_number_1_list - [5,6]
                  end
                  if number_part == '_'
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,5,6,7,8,9]
                  end
                end
              end
            end
          end


          if (index + 1) % 4 == 3 #bottom part of number
            part.each_with_index do |number_part, ind|
              if i == 0 #first element
                if ind == 0 #first part of element
                  if number_part == ' '
                    entry_number_1_list = entry_number_1_list - [0,2,6,8]
                  end
                  if number_part == '|'
                    entry_number_1_list = entry_number_1_list - [1,3,4,5,7,9]
                  end
                  if number_part == '_'
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,5,6,7,8,9]
                  end
                end
                if ind == 1 #second part of element
                  if number_part == ' '
                    entry_number_1_list = entry_number_1_list - [0,2,3,5,6,8,9]
                  end
                  if number_part == '|'
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,5,6,7,8,9]
                  end
                  if number_part == '_'
                    entry_number_1_list = entry_number_1_list - [1,4,7]
                  end
                end
                
                if ind == 2 #third part of element
                  if number_part == ' '
                    entry_number_1_list = entry_number_1_list - [0,1,3,4,5,6,7,8,9]
                  end
                  if number_part == '|'
                    entry_number_1_list = entry_number_1_list - [2]
                  end
                  if number_part == '_'
                    entry_number_1_list = entry_number_1_list - [0,1,2,3,4,5,6,7,8,9]
                  end
                end
              end
            end
          end


        end
      end
      # puts element.length
    end
    puts 'hollaaa'
    puts 'hollaaa'
    file_data.first #element.first
  end

  private
  
  def self.get_number(number_list)
    if number_list.count == 1
      number_list.first.to_s
    else
      "?"
    end
  end

  
end
