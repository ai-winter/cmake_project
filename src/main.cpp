#include "moduleA/moduleA.h"
#include "m_math.h"
#include "m_info.h"

int main()
{
	std::cout << add(3, 4) << std::endl;
	printMsg();
	printInfo("hahaha");
	//int res = add(3, 4);
	//std::cout << "Hello CMake." << res << endl;
	system("pause");
	return 0;
}
