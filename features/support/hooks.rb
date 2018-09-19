Before do
  $driver.start_driver
end
    
Before ('@reinstall') do
  $driver.reset 
end

After do
  $driver.driver_quit
end
