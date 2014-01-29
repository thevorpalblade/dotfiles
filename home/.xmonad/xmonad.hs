import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import Data.List 
import XMonad.Util.EZConfig
import qualified XMonad.StackSet as W
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.NoBorders


normalBorderColor, focusedBorderColor :: String
normalBorderColor  = "gray" -- "#dddddd"
focusedBorderColor = "red"  -- "#ff0000" don't use hex, not <24 bit safe


myManageHook = composeAll . concat $
    	[ [className =? "gimp"      --> doFloat]
	, [className =? "Xmessage"  --> doFloat]
	, [className =? "Vlc" 	   --> doFloat]
	, [(className =? "Firefox" <&&> resource =? "Dialouge") --> doFloat]
	, [isFullscreen --> doFullFloat]
	]
         

main = do
    xmproc <- spawnPipe "/home/matthew/.cabal/bin/xmobar /home/matthew/.xmobarrc" 
    xmonad $ defaultConfig
        { workspaces = ["1:web","2:music","3:rips/encodes","4:video","5:coding","6:administration","7","8","9","0"]
	, terminal           = "urxvtc"
	, manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = smartBorders (avoidStruts  $  layoutHook defaultConfig)
	, logHook = dynamicLogWithPP $ xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
	, modMask = mod1Mask     -- default mod key, right alt
        } `additionalKeys`
	[ ((mod1Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
	-- , ((mod1Mask, xK_p ), spawn "exe=`dmenu_path_c | yeganesh` && eval \"exec $exe\"")
	,((mod1Mask .|. controlMask, xK_t), sendMessage $ ToggleStrut R)
        ]


