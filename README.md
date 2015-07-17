# dockerfile
beego dockerfile
#use
  docker build -t ivonlee/beego:0.1 . 
  
  docker run -d -P -i --name beegotest1 ivonlee/beego:0.1
