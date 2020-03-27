# pointless

```

import "collatz.ptls" as collatz

-----------------------------------------------------------

output = chart(20, collatz.getSequence(871)) |> println

-----------------------------------------------------------

chart(height, values) =
  if values is Empty then ""
  else
    values
    |> normalize(height)
    |> getRows(height)
    |> join("\n")

-----------------------------------------------------------

normalize(height, values) =
  values
  |> map(mul(height / maximum(values)))
  |> map(max(0))

-----------------------------------------------------------

getRows(height, values) =
  for row in reverse(range(height))
  yield rowChars(row, values) |> join("")

-----------------------------------------------------------

rowChars(row, values) =
  values |> map(getBar(row))

-----------------------------------------------------------

getBar(row, n) = 
  if barHeight < 0
    then if row > 0 then " " else "_"
    else bars[min(7, toInt(barHeight * 7))]
  where {barHeight = (n - row); bars = toArray("▁▂▃▄▅▆▇█")}
```

