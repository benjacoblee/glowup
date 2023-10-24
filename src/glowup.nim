import std/[strutils, asyncdispatch]

type L* = object of CatchableError

const noCap* = true
const cap* = false 
const onGod* = true
const outOfPocket* = Inf

proc stan*[T](args: varargs[T, `$`]) =
  for thing in args:
    echo thing

proc yeet*(e: ref Exception) =
  raise e

proc letItCook*[T](f: Future[T]): T =
  while not f.finished:
    poll()
  
  f.read()

func lowkey*(s: string): string =
  return s.toLower()

func highkey*(s: string): string =
  return s.toUpper()

func based*(s: string): string =
  return s.toLower()

template fr*(statement) =
  assert statement

template frfr*(statement) =
  assert statement

template drop*(thing) =
  return thing

template itsGiving*(thing) =
  return thing

template PERIODT*() =
  break

template period*() =
  break

template skrt*() =
  break

template clapback*(statement) =
  yield statement

template holup*(statement) =
  await statement