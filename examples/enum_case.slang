
import std


enum Option:
    None
    Some(str)
    Money(int, float)


fn main():
    let val: Option = Option::Some("TXT")
    foo(val)
    let val2: Option = Option::None
    foo(val2)
    let val3: Option = Option::Money(5, 2.3)
    foo(val3)


fn foo(val: Option):
    case val:
        # Option::None:
        #     std::print("Nothing here")
        Option::Some(x):
            std::print("And the message is: " + x)
        Option::None:
            std::print("Nothing here")
        Option::Money(x,y):
            std::print("Money!! x=" + std::int_to_str(x) + " y=" + std::float_to_str(y))
