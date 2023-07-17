@@abdulrahman abutalib
.global reset
reset:
	ldr sp, =stack_top
	bl main

stay: b stay