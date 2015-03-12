import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.SetWMName

myStartupHook = setWMName "LG3D"

main = xmonad =<< xmobar defaultConfig { modMask = mod4Mask }