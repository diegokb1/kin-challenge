module PolicyOcr
  def self.scan_files
    file = File.open("./spec/fixtures/sample.txt")
    file_data = file.readlines.map(&:chomp)

    numbers = {
      entry_number_1_list: [0,1,2,3,4,5,6,7,8,9],
      entry_number_2_list: [0,1,2,3,4,5,6,7,8,9],
      entry_number_3_list: [0,1,2,3,4,5,6,7,8,9],
      entry_number_4_list: [0,1,2,3,4,5,6,7,8,9],
      entry_number_5_list: [0,1,2,3,4,5,6,7,8,9],
      entry_number_6_list: [0,1,2,3,4,5,6,7,8,9],
      entry_number_7_list: [0,1,2,3,4,5,6,7,8,9],
      entry_number_8_list: [0,1,2,3,4,5,6,7,8,9],
      entry_number_9_list: [0,1,2,3,4,5,6,7,8,9],
    }

    file_data.each_with_index do |element, index|
      if (index + 1) % 4 == 0
        full_entry_number = ""
        full_entry_number += get_number(numbers[:entry_number_1_list])
        full_entry_number += get_number(numbers[:entry_number_2_list])
        full_entry_number += get_number(numbers[:entry_number_3_list])
        full_entry_number += get_number(numbers[:entry_number_4_list])
        full_entry_number += get_number(numbers[:entry_number_5_list])
        full_entry_number += get_number(numbers[:entry_number_6_list])
        full_entry_number += get_number(numbers[:entry_number_7_list])
        full_entry_number += get_number(numbers[:entry_number_8_list])
        full_entry_number += get_number(numbers[:entry_number_9_list])
        # full_entry_number = format_output(full_entry_number)
        full_entry_number += "\n"
        puts full_entry_number
        File.open("./spec/fixtures/sample-result.txt", "a") { |f| f.write "#{full_entry_number}" }

        numbers = {
          entry_number_1_list: [0,1,2,3,4,5,6,7,8,9],
          entry_number_2_list: [0,1,2,3,4,5,6,7,8,9],
          entry_number_3_list: [0,1,2,3,4,5,6,7,8,9],
          entry_number_4_list: [0,1,2,3,4,5,6,7,8,9],
          entry_number_5_list: [0,1,2,3,4,5,6,7,8,9],
          entry_number_6_list: [0,1,2,3,4,5,6,7,8,9],
          entry_number_7_list: [0,1,2,3,4,5,6,7,8,9],
          entry_number_8_list: [0,1,2,3,4,5,6,7,8,9],
          entry_number_9_list: [0,1,2,3,4,5,6,7,8,9],
       }
      end
      
      if (index + 1) % 4 != 0
        element.split('').each_slice(3).to_a.each_with_index do |part, i| #three for each number
          if (index + 1) % 4 == 1 #roof part of number
            part.each_with_index do |number_part, ind|
              if ind == 0 #first part of element
                if number_part == ' '
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - []
                end
                if number_part == '|'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,5,6,7,8,9]
                end
                if number_part == '_'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,5,6,7,8,9]
                end
              end
              
              if ind == 1 #second part of element
                if number_part == ' '
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,2,3,5,6,7,8,9]
                end
                if number_part == '|'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,5,6,7,8,9]
                end
                if number_part == '_'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [1,4]
                end
              end
              if ind == 2 #third part of element
                if number_part == ' '
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - []
                end
                if number_part == '|'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,5,6,7,8,9]
                end
                if number_part == '_'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,5,6,7,8,9]
                end
              end
            end
          end

          if (index + 1) % 4 == 2 #middle part of number
            part.each_with_index do |number_part, ind|
              if ind == 0 #first part of element
                if number_part == ' '
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,4,5,6,8,9]
                end
                if number_part == '|'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [1,2,3,7]
                end
                if number_part == '_'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,5,6,7,8,9]
                end
              end
              if ind == 1 #second part of element
                if number_part == ' '
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [2,3,4,5,6,8,9]
                end
                if number_part == '|'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,5,6,7,8,9]
                end
                if number_part == '_'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,7]
                end
              end
              if ind == 2 #third part of element
                if number_part == ' '
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,7,8,9]
                end
                if number_part == '|'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [5,6]
                end
                if number_part == '_'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,5,6,7,8,9]
                end
              end
            end
          end


          if (index + 1) % 4 == 3 #bottom part of number
            part.each_with_index do |number_part, ind|
              if ind == 0 #first part of element
                if number_part == ' '
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,2,6,8]
                end
                if number_part == '|'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [1,3,4,5,7,9]
                end
                if number_part == '_'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,5,6,7,8,9]
                end
              end
              if ind == 1 #second part of element
                if number_part == ' '
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,2,3,5,6,8,9]
                end
                if number_part == '|'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,5,6,7,8,9]
                end
                if number_part == '_'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [1,4,7]
                end
              end
              
              if ind == 2 #third part of element
                if number_part == ' '
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,3,4,5,6,7,8,9]
                end
                if number_part == '|'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [2]
                end
                if number_part == '_'
                  numbers["entry_number_#{i+1}_list".to_sym] = numbers["entry_number_#{i+1}_list".to_sym] - [0,1,2,3,4,5,6,7,8,9]
                end
              end
            end
          end
        end
      end
    end
    puts "scan completed"
  end

  private
  
  def self.get_number(number_list)
    if number_list.count == 1
      number_list.first.to_s
    else
      "?"
    end
  end

  def self.validate_number(numbers_list)
    reversed = numbers_list.reverse
    total_sum = 0
    reversed.each_with_index do |element, index|
      total_sum += element * (index + 1)
    end

    return total_sum % 11 == 0
  end

  def self.format_output(numbers)
    if numbers.include?('?')
      "#{numbers} - ILL"
    else
      formatted_numbers = numbers.split('').map { |num| num.to_i }
      if validate_number(formatted_numbers)
        numbers
      else
        "#{numbers} - ERR"
      end
    end
  end
  
end
