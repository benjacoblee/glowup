import std/[strutils, asyncdispatch]

type Lowkey = object
type L* = object of CatchableError

const noCap* = true
const cap* = false 
const onGod* = true
const outOfPocket* = Inf
const lowkey* = Lowkey() 

proc stan*[T](l: Lowkey, args: varargs[T, `$`]) =
  for thing in args:
    echo thing

proc yeet*(e: ref Exception) =
  raise e

proc letItCook*[T](f: Future[T]): T =
  while not f.finished:
    poll()
  
  f.read()

proc based*(str: string): string =
  return str.toLower()

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