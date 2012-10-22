#version 3.7;
#include "common.inc"

union {
	object { Floor }

	object { Refaxis }
	object { XRefaxis }
	object { YRefaxis }

	object { Symcentre }

	InverseSet(SimpleCoil)

	// KFF_DIV = 2
	ClockRotate(1)
}

