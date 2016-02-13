#
# guest
#
docker build -t yuji/jenkins .
docker run -it -p 8080:8080 --name jenkins01 yuji/jenkins

#
# host
#
cp config.rb.sample config.rb
vi config.rb
$forwarded_ports = { 8080 => 8080 }
