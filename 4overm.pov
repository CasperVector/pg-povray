#include "common.inc"

union {
	object { Floor }
	object { Refaxis }

	object { Symcentre }
	object { Mirror }
	object { FourfoldAxis }

	MirrorSet(RotateSet(FourfoldCoil, z, 4), z)
	ClockRotate(4)
}

