/* Bsa7myex
A first project created with a bash script. There will be bugs to work out.
This is an example from Bruce Smith Chapter7.
*/

.global _start

_start:
    mov r7, #4                 @syscall number
    mov r0, #1                 @ Stdout is monitor
    mov r2, #13                @ string is 19 chars long
    ldr r1, =string            @ string located at string:

    svc 0
    _exit:                     @ exit with syscall
    mov r7, #1
    svc 0

.data

string:
.ascii "Hello, World!\n"
