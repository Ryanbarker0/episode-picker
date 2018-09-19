# episode-picker

# Currently only runs though terminal at path with ruby ""

- add interface, perhaps run through a browser?
- could run rand then open the desired file with Vlc

- useful link to directory iteration
  https://stackoverflow.com/questions/2512254/iterate-through-every-file-in-one-directory

- `files = Dir.entries(".")` to get an array of files in the current directory
  `File.read(<insert_filename_here>)` to read a file as a raw string

# Features

- iterate through a file directory
- from iteration it selects a file name at random
- upon selection, it opens the file with VLC.app

# Additional Features

- it runs from desktop shortcut
- once a file is opened, it is assigned a time/date stamp
- the stamp then ensures that when the programme is run, said file cannot be opened for x amount of days
- can enter a command to return recently watched episodes, sorted by date
- has a UI
