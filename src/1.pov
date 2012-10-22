#version 3.7;
#include "common.inc"

union{
	object { Floor }

	object { Refaxis }
	object { XRefaxis }
	object { YRefaxis }

	object { SimpleCoil }

	// KFF_DIV = 2
	ClockRotate(1)
}

