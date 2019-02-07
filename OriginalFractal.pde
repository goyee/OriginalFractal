public void setup(){
	size(500,500);
	background(0);
}
public void draw(){
	fractal(0,500,500);
}
public void fractal(int x, int y, int len){
	stroke(255);
	fill(0);
	if(len <= 250) {
		triangle(x, y, x+len/2, y-len, x+len, y);
	
	}
	else {
		fractal(x+len/8,y-len/8,len/2);
	}	
}