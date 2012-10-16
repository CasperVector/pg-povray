#include "common.inc"

union {
	object { Floor }

	object { Refaxis }
	object { XRefaxis }
	object { YRefaxis }

	object { Symcentre }
	object { TwofoldAxis }
	object { XTwofoldAxis }
	object { YTwofoldAxis }
	object { Mirror }
	RotateSet2(XMirror, z, 2)
	RotateSet(TThreefoldAxis1, z, 4)

	MirrorSet(MirrorSet(MirrorSet(RotateSet(CubicCoil, x + y + z, 3), z), x), y)
	ClockRotate(2)
}

