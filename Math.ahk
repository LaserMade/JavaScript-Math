#Requires AutoHotkey v2.0
#SingleInstance Force

Class Math extends Object {
    ;Euler's number and the base of natural logarithms; approximately 2.718.
    static E := 2.718281828459045
    ;Natural logarithm of 10; approximately 2.303.
    static LN10 := log(10)
    ;Natural logarithm of 2; approximately 0.693.
    static LN2 := log(2)
    ;Base-10 logarithm of E; approximately 0.434.
    static LOG10E := 1/log(10)
    ;Base-2 logarithm of E; approximately 1.443.
    static LOG2E := 1/log(2)
    ;Ratio of a circle's circumference to its diameter; approximately 3.14159.
    static PI := atan(1)*4
    ;Square root of ½; approximately 0.707.
    static SQRT1_2 := SQRT(1/2)
    ;Square root of 2; approximately 1.414.
    static SQRT2 := SQRT(2)
    

    ;Returns the absolute value of x.
    static abs(x) => ((x < 0) ? -x : x)

    ;Returns the arccosine of x.
    static acos(x) => acos(x)

    ;Returns the hyperbolic arccosine of x.
    static acosh(x) => log(x + Sqrt(x**2 - 1))

    ;Returns the arcsine of x.
    static asin(x) => asin(x)

    ;Returns the hyperbolic arcsine of x.
    static asinh(x) => log(x+sqrt(x**2+1))

    ;Returns the arctangent of x.
    static atan(x) => atan(x)

    ;Returns the arctangent of the quotient of its arguments.
    static atan2(y, x) {
        if (x > 0)
            return atan(y / x)
        if (x < 0)
            return atan(y / x) + 3.1415926535898 * ((y >= 0) ? 1.0 : -1.0)
        if (y != 0)
            return 1.5707963267949 * ((y >= 0) ? 1.0 : -1.0)
        return 0.0
    }
 
    ;Returns the hyperbolic arctangent of x.
    static atanh(x) => Log((1 + x) / (1 - x)) / 2.0

    ;Returns the cube root of x.
    static cbrt(x) => (x**(1.0/3.0))

    ;Returns the smallest integer greater than or equal to x.
    static ceil(x) => ceil(x)

    static clz32(x) {
        ;not implemented.
    }
    
    ;Returns the cosine of x.
    static cos(x) => cos(x)

    ;Returns the hyperbolic cosine of x.
    static cosh(x) => (this.E**x + this.E**(-x)) / 2.0

    ;Returns ex, where x is the argument, and e is Euler's number (2.718…).
    static exp(x) => exp(x)

    ;Returns subtracting 1 from exp(x).
    static expm1(x) => exp(x) - 1

    ;Returns the largest integer less than or equal to x.
    static floor(x) => floor(x)

    ;Returns the nearest single precision float representation of x.
    static fround(x) => (x) ;not implemented

    ;Returns the square root of the sum of squares of its arguments.
    static hypot(arr*) {
        sum := 0
        for (num in arr) {
            sum := sum + (num**2)
        }
        return sqrt(sum)
    }

    ;Returns the result of the C-like 32-bit multiplication of the two parameters.
    ;Not implemented for hex values
    static imul(x, y) => ((x * y) >> 0)

    ;returns the natural logarithm of x.
    static log(x) => log(x)

    ;Returns the base-10 logarithm of x.
    static log10(x) => Ln(x)/Ln(10)

    ;Returns the natural logarithm (base e) of 1 + x, where x is the argument.
    static log1p(x) => Ln(x + 1)

    ;Returns the base-2 logarithm of x.
    static log2(x) => Ln(x)/Ln(2)

    ;Returns the largest of zero or more numbers.
    static max(arr*) => max(arr*)

    ;Returns the smallest of zero or more numbers.
    static min(arr*) => min(arr*)

    ;Returns base x to the exponent power y (that is, x^y).
    static pow(x, y) =>  (x ** y)

    ;Returns a pseudo-random number between 0 and 1.
    static random(x?) => random(x?)

    ;Returns the value of the number x rounded to the nearest integer.
    static round(x) => ((x < 0) ? ceil(x - 0.5) : floor(x + 0.5))

    ;Returns 1 or -1, indicating the sign of the number passed as argument. If the input is 0 or -0, it will be returned as-is.
    static sign(x) => ((x < 0) ? -1 : ((x > 0) ? 1 : x))

    ;Returns the sine of x.
    static sin(x) => sin(x)

    ;Returns the hyperbolic sine of x.
    static sinh(x) => (this.E**x - this.E**(-x)) / 2.0

    ;Returns the positive square root of x.
    static sqrt(x) => sqrt(x)
    
    ;Returns the tangent of x.
    static tan(x) => tan(x)

    ;Returns the hyperbolic tangent of x.
    static tanh(x) => (this.E**x - this.E**(-x)) / (this.E**x + this.E**(-x))

    ;Returns the integer part of x.
    static trunc(x) => x >= 0 ? floor(x) : ceil(x)

    /**
     * The following methods are not contained in the JavaScript Math class but are included here to assist with conversions
     */
    static degToRad(degrees) => (degrees * (Math.PI / 180))
    static radToDeg(rad) => (rad / (Math.PI / 180))

    /**
     * Credit to jNizM for the ahk v1 version of ConvertBase
     * and credit to atnbueno for the ahk v2 conversion 
     * on the AutoHotKey forum: https://www.autohotkey.com/boards/viewtopic.php?t=3925#p21143
     * 
     * @example Math.ConvertBase(10, 2, 10) converts 10 to binary ; => 1010
     * @example Math.ConvertBase(10, 2, 6) converts 6 to binary ; => 110
     * @example Math.ConvertBase(2, 10, 1000) converts 1000 to decimal ; => 8
     */
    static ConvertBase(InputBase, OutputBase, nptr)
    {
        VarSetStrCapacity(&s, 66)
        value := DllCall("msvcrt.dll\_wcstoui64", "Str", nptr, "UInt", 0, "UInt", InputBase, "CDECL Int64")
        DllCall("msvcrt.dll\_i64tow", "Int64", value, "Str", s, "UInt", OutputBase, "CDECL")
        Return s
    }
}