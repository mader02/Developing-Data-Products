
Male   = 1;
Female = 2;

bmr <- function(Gender,weight, height, age) {
        bmr = 10 * weight + 6.25 * height - 5 * age + 5
        
        if (Gender== Female) {
                bmr = bmr - 166
        }
        
        return (bmr)
             
}