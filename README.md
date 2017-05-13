# Elm

## The boring parts: Generell fakta

- Språk eller rammeverk?

- Transpilerer til JavaScript (på samme måte som Flow og Typescript)

- Familie: ML

- Hva jeg falt for: "Generate JavaScript with great performance and no runtime exceptions"

- "Purely functional"
  - "Ingen" bivirkninger
  - Alt er immutable
  - Kan ikke videre endre på state
  
- Sterkt, statisk typet
  - Og heldigvis type inference
  
  
## The boring parts: Syntax

### Literals

```Elm
True : Bool
42 : number (Int eller Float)
4.2 : Float
'b' : Char
"Hei" : String
```

### Tupler

```Elm
navnOgAlder = ("Bendik", 29)
(x, y) = (10, 20)
x -- 10
```

### Lister

```Elm
[1, 2, 3]
1 :: [2, 3]
1 :: 2 :: 3 :: []
```

### Records

```Elm
-- {x : Int, y : Int}
point = {x = 1, y = 2}

point.x

{point | x = 5}
```

### Type Alias

```Elm
type alias Name = String

type alias Point =
    { x : Int
    , y : Int
    }
    
point = Point 1 2

Point 1 2 == {x = 1, y = 2} -- True
```

### Union Types

```Elm
type CardinalDirection
    = North
    | East
    | South
    | West
    
direction = North

type Age
    = Unknown
    | Known Int
    
unknownAge = Unknown
knownAge = Known 29
```

```Elm
type Maybe a
    = Nothing
    | Just a
    
nope = Nothing
yep = Just "Yep"
```

### Pattern Matching

```Elm
maybeValue = Just "value"

case maybeValue of
    Nothing ->
        "Nope, no value here!"
        
    Just v ->
        "The value is: " ++ v
```

Kuriositet: _"alt"_ kan pattern matches

### Funksjoner

```Elm
sum : List number -> number
sum liste = List.foldl (+) 0 liste

pointFreeSum : List number -> number
pointFreeSum = List.foldl (+) 0

(\x y -> x * y)
```

Kuriositet: alle funksjoner har nøyaktig ett parameter
Kuriositet: partial application by default

### Moduler

```Elm
module MinModul exposing (minfunksjon)

import List
import Html exposing (div)

...
```

##  The not so boring part: Vi lager et prosjekt fra scratch!

Note to self: hopp over til editoren og kod i vei.

## Kanskje en litt boring part: The Elm Architecture

Note to self: vi bruker prosjektet vi har laget til å forstå "The Elm Architecture"
