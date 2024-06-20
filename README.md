# JavaScript Math
 JavaScript Math class written for AHK
 
 From the Math Global Object in JavaScript [Check it out on MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math)

# Math
The Math namespace object contains static properties and methods for mathematical constants and functions.

Math works with the Number type. It doesn't work with BigInt.

## Description
Math is not a constructor. You cannot use it to create an object or invoke the Math object as a function. All properties and methods of Math are static.

 > Note: Many Math functions have a precision that's implementation-dependent.
This means that AHK can give a different result than JavaScript does. Even the same JavaScript engine on a different OS or architecture can give different results!

## Static properties
`Math.E`
Euler's number and the base of natural logarithms; approximately 2.718.

`Math.LN10`
Natural logarithm of 10; approximately 2.303.

`Math.LN2`
Natural logarithm of 2; approximately 0.693.

`Math.LOG10E`
Base-10 logarithm of E; approximately 0.434.

`Math.LOG2E`
Base-2 logarithm of E; approximately 1.443.

`Math.PI`
Ratio of a circle's circumference to its diameter; approximately 3.14159.

`Math.SQRT1_2`
Square root of ½; approximately 0.707.

`Math.SQRT2`
Square root of 2; approximately 1.414.

## Static methods
`Math.abs()`
Returns the absolute value of the input.

`Math.acos()`
Returns the arccosine of the input.

`Math.acosh()`
Returns the hyperbolic arccosine of the input.

`Math.asin()`
Returns the arcsine of the input.

`Math.asinh()`
Returns the hyperbolic arcsine of a number.

`Math.atan()`
Returns the arctangent of the input.

`Math.atan2()`
Returns the arctangent of the quotient of its arguments.

`Math.atanh()`
Returns the hyperbolic arctangent of the input.

`Math.cbrt()`
Returns the cube root of the input.

`Math.ceil()`
Returns the smallest integer greater than or equal to the input.

`Math.clz32()`
Returns the number of leading zero bits of the 32-bit integer input.

`Math.cos()`
Returns the cosine of the input.

`Math.cosh()`
Returns the hyperbolic cosine of the input.

`Math.exp()`
Returns ex, where x is the argument, and e is Euler's number (2.718…, the base of the natural logarithm).

`Math.expm1()`
Returns subtracting 1 from exp(x).

`Math.floor()`
Returns the largest integer less than or equal to the input.

`Math.f16round()`
Returns the nearest half precision float representation of the input.

`Math.fround()`
Returns the nearest single precision float representation of the input.

`Math.hypot()`
Returns the square root of the sum of squares of its arguments.

`Math.imul()`
Returns the result of the 32-bit integer multiplication of the inputs.

`Math.log()`
Returns the natural logarithm (㏒e; also, ㏑) of the input.

`Math.log10()`
Returns the base-10 logarithm of the input.

`Math.log1p()`
Returns the natural logarithm (㏒e; also ㏑) of 1 + x for the number x.

`Math.log2()`
Returns the base-2 logarithm of the input.

`Math.max()`
Returns the largest of zero or more numbers.

`Math.min()`
Returns the smallest of zero or more numbers.

`Math.pow()`
Returns base x to the exponent power y (that is, xy).

`Math.random()`
Returns a pseudo-random number between 0 and 1.

`Math.round()`
Returns the value of the input rounded to the nearest integer.

`Math.sign()`
Returns the sign of the input, indicating whether it is positive, negative, or zero.

`Math.sin()`
Returns the sine of the input.

`Math.sinh()`
Returns the hyperbolic sine of the input.

`Math.sqrt()`
Returns the positive square root of the input.

`Math.tan()`
Returns the tangent of the input.

`Math.tanh()`
Returns the hyperbolic tangent of the input.

`Math.trunc()`
Returns the integer portion of the input, removing any fractional digits.

## Examples
### Converting between degrees and radians

The trigonometric functions `sin()`, `cos()`, `tan()`, `asin()`, `acos()`, `atan()`, and `atan2()` expect (and return) angles in radians.

Since humans tend to think in degrees, and some functions can accept degrees, it is a good idea to keep functions handy that convert between the two:

    Math.degToRad(degrees) {
        return degrees * (Math.PI / 180);
    }

    Math.radToDeg(radians) {
        return radians / (Math.PI / 180);
    }

### Calculating the height of an equilateral triangle
If we want to calculate the height of an equilateral triangle, and we know its side length is 100, we can use the formulae length of the adjacent multiplied by the tangent of the angle is equal to the opposite.

<img style='display:block; margin-left: auto; width: 25%; margin-right:auto;' src='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/trigonometry.png' alt='An equilateral triangle where a perpendicular of one edge is drawn from the opposite vertex, forming a right triangle with three sides marked as "adjacent", "opposite", and "hypotenuse". The angle between the "adjacent" and "hypotenuse" sides is 60 degrees.'></img>

In AHK, we can do this with the following:

    50 * Math.tan(Math.degToRad(60));
    
We use our `Math.degToRad()` method to convert 60 degrees to radians, as Math.tan() expects an input value in radians.