import os, strformat

proc build*(args:seq[string]) =
  var outputFileName = "main"
  try:
    outputFileName = args[0]
  except:
    discard

  discard execShellCmd(&"""
    nim c \
    -d:release \
    --threads:on \
    --opt:size \
    --out:{outputFileName} \
    main.nim
  """)
