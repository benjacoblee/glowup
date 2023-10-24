import std/[unittest, asyncdispatch] 
import glowup

test "L":
  expect L:
    yeet(newException(L, "some error"))

test "noCap":
  check(noCap == true) 
  check(noCap != false) 

test "cap":
  check(cap == false)
  check(cap != true)

test "onGod":
  check(onGod == true)
  check(onGod != false)

test "yeet":
  expect ValueError:
    yeet(newException(ValueError, "some error"))

test "drop":
  let res = (proc (): int = drop 42)()
  check(res == 42)

test "itsGiving":
  let res = (proc (): int = itsGiving 2)()
  check(res == 2)

template b(i: var int, b: untyped) =
  while i < 100:
    i.inc
    if i == 50:
      b

test "PERIODT":
  var i = 0
  b(i, PERIODT)
  check(i == 50)

test "period":
  var i = 0
  b(i, period)
  check(i == 50)

test "skrt":
  var i = 0
  b(i, skrt)
  check(i == 50)

proc someAsyncFn(e: string): Future[string] {.async.} =
  let f = newFuture[string]()
  f.callback = 
    proc(future: Future[string]) =
      result = future.read()
  f.complete(e)

test "letItCook":
  let res = letItCook someAsyncFn("bussin")
  check(res == "bussin")

proc myHolup(): Future[string] {.async.} =
  holup sleepAsync(1)

test "holup":
  let f = myHolup()
  fr f.finished == cap
  f.complete("bussin")
  fr f.read() == "bussin"
  frfr f.finished == noCap

test "fr":
  fr 2 == 2
  fr "WOW".based() == "wow"

test "frfr":
  frfr 2 == 2
  frfr "WOW".based() == "wow"

test "outOfPocket":
  check(outOfPocket == Inf)

test "based":
  check("WOW".based() == "wow")

test "lowkey":
  check("WOW".lowkey() == "wow")

test "highkey":
  check("wow".highkey() == "WOW")

iterator myIter(lo, hi:  int): int =
  var i = lo
  while i < hi:
    clapback i
    inc i

test "clapback":
  var curr: int
  for i in myIter(0, 5):
    curr = i
  check(curr == 4)