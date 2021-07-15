# @author ricks

# Find files modified
# Only works before git add
modified_file_paths = %x(git diff --name-only).split("\n")

# Loop through files and check syntax, print status
modified_file_paths.each do |path|
  next if !path.include?('.rb')
  print(%x(ruby -c #{path}))
end