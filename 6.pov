#include "common.inc"

union {
	object { Floor }
	object { Refaxis }
	object { SixfoldAxis }

	RotateSet(HexCoil, z, 6)
	ClockRotate(6)
}

