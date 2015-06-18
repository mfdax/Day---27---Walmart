desc 'Delete Duplicate Rake Files'
task :delete_duplicate_thoughts => :environment do

  #puts "Hey!  Shallow Thought Count is #{Thought.count}"

  Thought.all.group_by {|t| t.content}.each do |content, name|
    # puts "#{content} has #{Thoughts.count} entries"

    if Thoughts.count > 1
      # removing duplicates
      thoughts [1..-1].each do |thought|
        thought.destroy
      end
    end

  end
  
end
