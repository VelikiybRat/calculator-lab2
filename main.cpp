#include <iostream>
#include "calculator.h"

int main() {
	std::cout << "5 + 3 = " << add(5, 3) << std::endl;
	std::cout << "5 - 3 = " << subtract(5, 3) << std::endl;
	std::cout << "5 * 3 = " << multiply(5, 3) << std::endl;
	std::cout << "10 / 2 = " << divide(10, 2) << std::endl;
	return 0;
}
