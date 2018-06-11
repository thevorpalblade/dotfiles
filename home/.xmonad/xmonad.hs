import XMonad
import XMonad.Layout
import XMonad.Layout.ThreeColumns
import XMonad.Layout.Grid
import XMonad.Layout.Accordion
import XMonad.Layout.Circle
import XMonad.Layout.LayoutHints
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig
import System.IO
import Data.List 
import XMonad.Util.EZConfig
import qualified XMonad.StackSet as W
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.NoBorders
import XMonad.Layout.MultiColumns
import XMonad.Hooks.EwmhDesktops


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
         
-- myLayoutHook = smartBorders (avoidStruts  $  layoutHook defaultConfig)
myLayoutHook = smartBorders (avoidStruts (  tiled ||| three ||| multi ) ||| noBorders Full ) 

    where
        tiled   = Tall nmaster delta ratio
        multi   =  multiCol [1] 2 0.01 0.5
        three   = ThreeCol nmaster delta (1/3)
        -- The default number of windows in the master pane
        nmaster = 1
        -- Default proportion of screen occupied by master pane
        ratio   = (1/2)
        -- Percent of screen to increment by when resizing panes
        delta   = (3/100)

myKeysToAdd =
    [ ((mod1Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
	-- , ((mod1Mask, xK_p ), spawn "exe=`dmenu_path_c | yeganesh` && eval \"exec $exe\"")
	,((mod1Mask .|. controlMask, xK_t), sendMessage $ ToggleStrut R)
        ]

myMouseBindingsToRemove =
    [
        --(mod1Mask, button1),
        -- (mod1Mask, button2)
        --(mod1Mask, button3)
    ]
    
 
main = do
    xmproc <- spawnPipe "xmobar /home/matthew/.xmobarrc" 
    xmonad $ ewmh defaultConfig
        { workspaces = ["1:web","2:music","3:rips/encodes","4:video",
                        "5:coding","6:administration","7","8","9","0"]
	--, terminal           = "urxvtc"
	, terminal           = "termite"
	, manageHook = manageDocks <+> manageHook defaultConfig
    , handleEventHook = docksEventHook <+> handleEventHook defaultConfig
    , layoutHook = myLayoutHook
	, logHook = dynamicLogWithPP $ xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
	, modMask = mod1Mask     -- default mod key, right alt
        } `additionalKeys` myKeysToAdd `removeMouseBindings` myMouseBindingsToRemove
	
