#%%

def problem2_7():
    """ computes area of triangle using Heron's formula. """
    a = input("Enter length of side one: ");
    b = input("Enter length of side two: ");
    c = input("Enter length of side three: ");
    a = float(a); b = float(b); c = float(c);
    s = 0.5*(a+b+c);
    area = s*(s-a)*(s-b)*(s-c)
    area **= 0.5
    
    print("Area of a triangle with sides %.1f %.1f %.1f is %.1f" %(a,b,c,area) );
    
#%%