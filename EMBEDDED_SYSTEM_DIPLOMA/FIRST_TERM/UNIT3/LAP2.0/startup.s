/*@copyright
ENG/ABDULRAHMAN ABUTALIB*/
.global .reset
.section .vectors
.word  0x20001000
.word .reset
.word .vector_handler
.word .vector_handler
.word .vector_handler
.word .vector_handler
.word .vector_handler
.word .vector_handler
.word .vector_handler
.word .vector_handler
.word .vector_handler
.word .vector_handler
.word .vector_handler
.word .vector_handler
.word .vector_handler
.thumb_func
.section .text
.reset:
	b main
	b .
.vector_handler:
	b .reset