Config { overrideRedirect = False
       , font     = "xft:Hack"
       , bgColor  = "#2E3440"
       , fgColor  = "#ECEFF4"
       , position = BottomW L 100
       , commands = [ Run Weather "SBGR"
                        [ "--template", "<weather><tempC>°C"
                        , "-L", "0"
                        , "-H", "25"
                        , "--low"   , "#88C0D0"
                        , "--normal", "#f8f8f2"
                        , "--high"  , "#BF616A"
                        ] 36000
                    , Run Cpu
                        [ "-L", "3"
                        , "-H", "50"
                        , "--high"  , "#BF616A"
                        , "--normal", "#A3BE8C"
                        ] 10
                    , Run Memory ["--template", "Mem: <usedratio>%"] 10
                    , Run Swap [] 10
                    , Run Date "%a %Y-%m-%d <fc=#8be9fd>%H:%M</fc>" "date" 10
                    , Run XMonadLog
                    ]
       , sepChar  = "%"
       , alignSep = "}{"
       , template = "%XMonadLog% }{ %cpu% | %memory% * %swap% | %SBGR% | %date% "
       }
