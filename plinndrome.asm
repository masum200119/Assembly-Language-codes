code SEGMENT
ASSUME CS :code, DS: data
START:
MOU AX, data
MOU DS AX
LEA DX MSG1
MOU AH 89H INT 21H
LEA SI STR1
LEA DI STR1
MOU AH.01H
NEXT:
INT 21H
CMP AL.�DH
JE TERMINATE
MOU EDI,AL INC DI
JMP NEXT
TERMINATE:
DOTHIS:
MOU AL,'$'
MOU [DI 1, AL
DEC DI
MOU AL. [SI]
CMP [DI, AL
JNE NOIPALINDROME
INC SI CMP SI,DI JL DOTHIS
PALINDROME: MOU AH 09H LEA DX MSG2 INT 21H JMP XX
NOTPALINDROME:
MOU AH.09H
LEA DX MSG3 INT 21H
XX:
MOU AH,4CH
code ENDS 3 END START
INT 21H