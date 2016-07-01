def rename_file( base_name, file_number, count_start, count_end )
  directory = "/Users/serignembackendiaye/Desktop/Juku"
  Dir.foreach(directory) do |file|
    next unless file.include?('.pdf')
      if file.include?(base_name)
        (count_start..count_end).map do |i|
          puts base_name[0...-2] + file_number.to_s + '_' + i.to_s.rjust(3, '0') + '_note_ans.pdf'
        end
        break
      end
  end
end

rename_file('h_bio_a_05', '06', 0, 4)
