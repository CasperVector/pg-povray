#include "common.inc"

union {
	object { Floor }

	object { Refaxis }
	object { XRefaxis }
	object { YRefaxis }

	object { FourfoldAxis }
	object { TwofoldAxis }
	object { XTwofoldAxis }
	object { YTwofoldAxis }
	object {
		RotateSet2(XMirror, z, 2)
		rotate 45 * z
	}

	RotinvSet(MirrorSet(TetraCoil, <1, 1, 0>), z, 4)
	ClockRotate(2)
}

