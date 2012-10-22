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

	MirrorSet(MirrorSet(MirrorSet(TetraCoil, z), x), y)
	ClockRotate(2)
}

