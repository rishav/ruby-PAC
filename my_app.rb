class MyApp
 
 def initialize
 
 end
 
 def call(env)
  [200, { 'Content-Type' => 'text/html' }, 'Hello World'] 
 end

end
