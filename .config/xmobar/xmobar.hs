-- xmobar config by atomkern : github.com/atom1488
-- inspired by many others xmobar configs
-- http://projects.haskell.org/xmobar/
-- for icons, install AUR: otf-font-awesome-5-free
-- also change your network name to yours in Run Network and the template (and position if your screen is not 1080x1920)

Config { 
         font = "xft:Ubuntu:weight=bold:pixelsize=11:antialias=true:hinting=true"
       , additionalFonts = [ "xft:Mononoki Nerd Font:pixelsize=11:antialias=true:hinting=true"
                           , "xft:Font Awesome 5 Free Solid:pixelsize=12"
                           , "xft:Font Awesome 5 Brands:pixelsize=12"
                           ]
       , bgColor = "#1E222A" --"#282c34"
       , fgColor = "#ff6c6b"
       , position = Static { xpos = 0 , ypos = 0, width = 1920, height = 24 }
       , lowerOnStart = True
       , hideOnStart = False
       , allDesktops = True
       , persistent = True
       , iconRoot = "/home/atom/.xmonad/xpm/" --change this with your dir 
       , commands = [
                      Run Date "<fn=2>\xf017</fn>  %b %d %Y - (%H:%M) " "date" 50
                 --   , Run Uptime ["-t", "<fn=1> </fn><hours>h <minutes>m"] 60
                    , Run Cpu ["-t", "<fn=2>\xf2db</fn>  cpu: (<total>%)","-H","50","--high","red"] 20
                    , Run Memory ["-t", "<fn=2>\xf538</fn>  mem: <used>M (<usedratio>%)"] 20
                    , Run Com "uname" ["-r"] "" 3600
                    , Run Network "eno2" ["-t", "<fn=2>\xf0ab</fn>  <rx>kb  <fn=2>\xf0aa</fn>  <tx>kb"] 20
                    , Run UnsafeStdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{ <box type=Bottom width=2 color=#51afef><fc=#51afef><fn=3></fn>%uname%</fc></box>    <box type=Bottom width=2 color=#ecbe7b><fc=#ecbe7b>%cpu%</fc></box>    <box type=Bottom width=2 color=#ff6c6b><fc=#ff6c6b>%memory%</fc></box>    <box type=Bottom width=2 color=#98be65><fc=#98be65>%eno2%</fc></box>    <box type=Bottom width=2 color=#46d9ff><fc=#46d9ff>%date%</fc></box>    "
}
