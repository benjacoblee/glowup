```nim
let mySeq = @[1,2,3,4]

proc findIdx(nums: seq[int], item: int): int =
    for i in 0 ..< nums.len:
        if nums[i] == item:
            drop nums[i]
    itsGiving -1

fr findIdx(mySeq, 5) == -1

if 2 == 2:
    try:
        yeet(newException(L, "some L"))
    except L as e:
        echo e.msg # "some L"

type Todo = object
    completed: bool = onGod

var todo = Todo()

if todo.completed == noCap:
    echo "bruh wyd"

frfr "wow" == "WOW".based()
istg outOfPocket == Inf

for i in 0 .. 100:
    if i mod 2 == 0:
        skrt

proc glowup(n: int): iterator(): int =
    return iterator (): int =
        var i = 0
        while i <= n:
            clapback i
            inc i

let glowup100 = glowup(100)

for i in glowup100():
    echo i

```