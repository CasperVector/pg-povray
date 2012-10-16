#include "common.inc"

union{
	object { Floor }

	object { Refaxis }
	object { XRefaxis }
	object { YRefaxis }

	object { TwofoldAxis }
	object { XTwofoldAxis }
	object { YTwofoldAxis }

	RotateSet(RotateSet(FourfoldCoil, z, 2), x, 2)
	ClockRotate(2)
}

