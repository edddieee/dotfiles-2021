import XMonad
import XMonad.Layout.Spacing
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig
import XMonad.Util.Ungrab
import XMonad.Util.Loggers
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

main :: IO ()
main = xmonad
     . ewmhFullscreen
     . ewmh
     . withEasySB (statusBarProp "xmobar" (pure myXmobarPP)) defToggleStrutsKey
     $ myConfig

myConfig = def
     { terminal    = "alacritty"
     , modMask     = mod4Mask
     , layoutHook  = smartSpacingWithEdge 5 $ myLayout
     , borderWidth = 5
     , normalBorderColor  = "#D8DEE9"
     , focusedBorderColor = "#A3BE8C"
     }
   `additionalKeysP`
     [ ("M-p", spawn "rofi -show run")
     ]

myLayout = smartBorders tiled ||| noBorders Full
  where
    tiled   = Tall nmaster delta ratio
    nmaster = 1
    ratio   = 1/2
    delta   = 3/100

myXmobarPP :: PP
myXmobarPP = def
    { ppSep             = auroraColor3 " • "
    , ppTitleSanitize   = xmobarStrip
    , ppCurrent         = wrap " " "" . xmobarBorder "Top" "#8be9fd" 2
    , ppHidden          = snowStormColor3 . wrap " " ""
    , ppUrgent          = auroraColor1 . wrap (auroraColor3 "!") (auroraColor3 "!")
    , ppOrder           = \[ws, l, _, wins] -> [ws, l, wins]
    , ppExtras          = [logTitles formatFocused formatUnfocused]
    }
  where
    formatFocused   = wrap (snowStormColor3 "[") (snowStormColor3 "]") . auroraColor3 . ppWindow
    formatUnfocused = wrap (snowStormColor1 "[") (snowStormColor1 "]") . auroraColor5 . ppWindow

    ppWindow :: String -> String
    ppWindow = xmobarRaw . (\w -> if null w then "untitled" else w) . shorten 30

    polarNightColor1 = xmobarColor "#2E3440" ""
    polarNightColor2 = xmobarColor "#3B4252" ""
    polarNightColor3 = xmobarColor "#434C5E" ""
    polarNightColor4 = xmobarColor "#4C566A" ""
    snowStormColor1  = xmobarColor "#D8DEE9" ""
    snowStormColor2  = xmobarColor "#E5E9F0" ""
    snowStormColor3  = xmobarColor "#ECEFF4" ""
    frostColor1      = xmobarColor "#8FBCBB" ""
    frostColor2      = xmobarColor "#88C0D0" ""
    frostColor3      = xmobarColor "#81A1C1" ""
    frostColor4      = xmobarColor "#5E81AC" ""
    auroraColor1     = xmobarColor "#BF616A" ""
    auroraColor2     = xmobarColor "#D08770" ""
    auroraColor3     = xmobarColor "#EBCB8B" ""
    auroraColor4     = xmobarColor "#A3BE8C" ""
    auroraColor5     = xmobarColor "#B48EAD" ""
