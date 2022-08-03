#include "moduleA/moduleA.h"
#include "moduleA/subModuleA/subModuleA.h"

void printMsg()
{
	subPrintMsg();
	std::cout << "Hello World!" << std::endl;
}
