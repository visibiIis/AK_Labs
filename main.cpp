#include <iostream>
#include "calculator.h"

int main()
{
    Calculator calc;

    std::cout << calc.Sub(calc.Mul(9, 8), calc.Add(1, 2)) << '\n';

    return 0;
}
