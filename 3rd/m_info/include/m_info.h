#pragma once
#ifndef M_INFO_H
#define M_INFO_H
#include <iostream>

extern "C"
{
	__declspec(dllexport) void printInfo(const char* msg);
}
#endif