//SDF's and combine methods from https://www.iquilezles.org/www/articles/distfunctions/distfunctions.htm

float opUnion(float d1 , float d2 ) {
    return min(d1, d2);
}

float opSubtraction( float d1, float d2 ) { 
    return max(-d1,d2); 
}

float opIntersection( float d1, float d2 ) { 
    return max(d1,d2); }

float opSmoothUnion(float d1 , float d2 , float k ) {
    float h = clamp(0.5 + 0.5 * (d2 - d1) / k, 0.0, 1.0);
    return mix(d2, d1, h) - k * h * (1.0 - h);
}

float opSmoothSubtraction(float d1 , float d2 , float k ) {
    float h = clamp(0.5 - 0.5 * (d2 + d1) / k, 0.0, 1.0);
    return mix(d2, -d1, h) + k * h * (1.0 - h);
}

float opSmoothIntersection(float d1 , float d2 , float k ) {
    float h = clamp(0.5 - 0.5 * (d2 - d1) / k, 0.0, 1.0);
    return mix(d2, d1, h) + k * h * (1.0 - h);

}

float smax( float a, float b, float k )
{
    float h = max(k-abs(a-b),0.0);
    return max(a, b) + h*h*0.25/k;
}

float smin(float a , float b , float k ) {
    //returns the smooth minimum between two distances
    //k controls the smoothness
    k *= 16.0/3.0;
float x = (b-a)/k;
float g = (x> 1.0) ? x :
            (x<-1.0) ? 0.0 :
            (x+1.0)*(x+1.0)*(3.0-x*(x-2.0))/16.0;
return b - k * g;
}