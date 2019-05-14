# R function library

colfun= function(cuts,vector,scale){
  
  # returns color vector for values in range min - max
  
  a= cuts[1]    # -200
  b= cuts[2]    # -2
  c= cuts[3]    #  2
  d= cuts[4]    #  50
  
  
  
  cuts  = c(seq(a,b,length.out = length(scale)+1),c,d)     # set break
  
  scale = c(scale,"greenyellow","blue")
  
  col <- scale[as.numeric(cut(vector, breaks = cuts))] 
  
  # returns vector with scale colors
  return( col ) }

sizefun= function(cuts,vector,scale){
  
  # returns color vector for values in range min - max
  
  a= cuts[1]    # -200
  b= cuts[2]    # -2
  c= cuts[3]    #  2
  d= cuts[4]    #  50
  
  
  
  cuts  = c(seq(a,b,length.out = length(scale)+1),c,d)     # set break
  
  scale = c(scale,5,5)
  
  col <- scale[as.numeric(cut(vector, breaks = cuts))] 
  
  # returns vector with scale colors
  return( col ) }

