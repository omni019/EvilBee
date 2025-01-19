#Requires AutoHotkey v2.0
#MaxThreadsPerHotkey 2+

maingui := Gui(, "Evil Bee Macro")
;Title
maingui.AddText("x10 y10 w150", "Evil Bee Boost Helper")

; Stingers
    ; Objects
        stingersCheckbox := maingui.AddCheckbox("x10 y30 w150", "Activate Stingers Function")
        maingui.AddText("x10 y60 w150  ", "Activation Requirements:")   
        maingui.AddText("x10 y80 w150  ", "Stingers Start Hotkey: { f }")
        maingui.AddText("x10 y100 w150  ", "Stingers Must be Third in Hotbar")
    ; Events
    f::
    {
       if(stingersCheckbox.value)
        { static isRunning := string
        if isRunning == "true" 
        {
             isRunning := "false"  
            
        }
        else
        {
             isRunning := "true"  
            while isRunning = "true"
            {
                Send(3) 
                Sleep(10000)  
            }  
        } }
        return
    }




;glitter
    ; Objects
        glitterCheckbox := MainGui.AddCheckbox("x170 y30 w150", "Activate Glitter Reminder")
        MainGui.AddText("x170 y60 w150  ", "Activation Requirements:")
        MainGui.AddText("x170 y80 w150 ", "Glitter Start Hotkey: { g } (Must be started after refreshing with dice)")
        maingui.AddText("x170 y120 w150 ", "Glitter Time(mins):")
        global glittertime := MainGui.AddEdit("x170 y140 w150  ", "12")
    ; Event
        glittertimersound() {
        SoundPlay(A_ScriptDir "\media\glitter.wav")
        } 
        g:: {
            if (glitterCheckbox.value) {
                settimer(glittertimersound,glittertime.value * -60000)
            }
        }


;Jelly Beans
    ; Objects
        jellybeansCheckbox := MainGui.AddCheckbox("x330 y25 w150", "Activate Jelly Bean Function")
        jellybeansTitle := MainGui.AddText("x330 y60 w150  ", "Activation Requirements:")
        MainGui.AddText("x330 y80 w150 ", "Jelly Bean Start Hotkey: { z } ")
        maingui.AddText("x330 y100 w150", "Jelly Beans must be Forth in Hotbar")
    ; Event
        z:: {
            if(jellybeansCheckbox.value)
                { static isRunning := string
                if isRunning == "true" 
                {
                     isRunning := "false"  
                    
                }
                else
                {
                     isRunning := "true"  
                    while isRunning = "true"
                    {
                        Send(4) 
                        Sleep(35000)  
                    }  
                } }
                return
        }
;Baloon timer force return
    ;Objects    
        Baloonreturncheckbox := maingui.AddCheckbox("x10 y170 w150", "Baloon ForceReturn")
        maingui.AddText("x10 y200 w150  ", "Activation Requirements:")
        maingui.AddText("x10 y220 w150  ", "Baloon Return Timer: { r }")
        MainGui.AddText("x10 y240 w150  ", "Whirligigs Must be Third in Hotbar")
        maingui.AddText("x10 y265 w150  ", "Baloon Time(mins):")
        global baloontime := maingui.AddEdit("x10 y285 w150  ", "5")
    ; Event
        baloonreturn() {
            Send("1")
        }
        r:: {
            if (Baloonreturncheckbox.value) {
                settimer(baloonreturn,baloontime.value * -1000)
            }
        }




        

;credits
    maingui.addgroupbox("x330 y170 w150 h230", "Credits")
    maingui.addtext("x340 y190 w120", "Made by: Omni")
    maingui.addtext("x340 y210 w120", "Discord: Omni019")
    maingui.addtext("x340 y230 w120", "Youtube: lilstarboy19")
    maingui.addtext("x340 y250 w120", "GitHub: Omni019")
    maingui.addtext("x340 y270 w120", "Version: 1.0")
    MainGui.OnEvent("Close", (*) => ExitApp())
    maingui.BackColor := "969696"
maingui.Show()

;Extra Buttons
    ;Objects
    Switchttoroblox := maingui.AddButton("x10 y350 w150", "Switch Window to Roblox")
    trollbutton := maingui.AddButton("x170 y350 w150", "This Button Does Nothing")
    ExitButton := maingui.AddButton("x330 y350 w150", "Exit")
    ;Events
    Switchttoroblox.OnEvent("Click", (*) => winactivate("Roblox"))
    ExitButton.OnEvent("Click", (*) => ExitApp())


;Checklist
    ;Guis
        redchecklist := gui(,"Evil Bee - Red Checklist")
        redchecklist.opt("AlwaysOnTop")
        redchecklist.BackColor := "fc9090"
        bluechecklist := gui(,"Evil Bee - Blue Checklist")
        bluechecklist.opt("AlwaysOnTop")
        bluechecklist.BackColor := "9090fc"

    ;Oppening buttons
        maingui.addText("x170 y170 w150","PreBoosting Checklists:")
        redchecklistbutton := maingui.addbutton("x170 y200 w150", "Red Hive")
        bluechecklistbutton := maingui.addbutton("x170 y230 w150", "Blue Hive")
        redchecklistbutton.OnEvent("Click", (*) => redchecklist.Show())
        bluechecklistbutton.OnEvent("Click", (*) => bluechecklist.Show())


    ;Red checklist
    redchecklist.addgroupbox("w300 h200", "Boosting Prep")
    redchecklist.addcheckbox("x15 y30", "x5 Wealth Clock")
    redchecklist.addcheckbox("x15 y45", "Baloon blessing")
    redchecklist.addcheckbox("x15 y60", "20hours+ all nectars")
    redchecklist.addcheckbox("x15 y75", "150+ Stingers")
    redchecklist.addcheckbox("x15 y90", "800+ gumdrops")
    redchecklist.addcheckbox("x15 y105", "10+ cloud vials")
    redchecklist.addcheckbox("x15 y120", "alts(if possible)")
    redchecklist.addcheckbox("x15 y135", "2+ Super smoothies")
    redchecklist.addcheckbox("x15 y150", "Mondo Blessing")
    redchecklist.addcheckbox("x15 y165", "Puffshrooms")
    
    redchecklist.addcheckbox("x150 y30", "Stickbug")
    redchecklist.addcheckbox("x150 y45", "Robo Party")
    redchecklist.addcheckbox("x150 y60", "Good Ping")
    redchecklist.addcheckbox("x150 y75", "glitter")
    redchecklist.addcheckbox("x150 y90", "Beacon")
    redchecklist.addcheckbox("x150 y105", "Wreath")
    redchecklist.addcheckbox("x150 y120", "LidArt")
    redchecklist.addcheckbox("x150 y135", "Stack")
    redchecklist.addcheckbox("x150 y150", "Honeybee quest")
    redchecklist.addcheckbox("x150 y165", "winds")
    redchecklist.addcheckbox("x150 y180", "Loaded + smoothie")
    ;Blue checklist
    bluechecklist.addgroupbox("w300 h200", "Boosting Prep")
    bluechecklist.addcheckbox("x15 y30", "x5 Wealth Clock")
    bluechecklist.addcheckbox("x15 y45", "High Baloon blessing")
    bluechecklist.addcheckbox("x15 y60", "20hours+ all nectars")
    bluechecklist.addcheckbox("x15 y75", "800+ gumdrops")
    bluechecklist.addcheckbox("x15 y90", "10+ cloud vials")
    bluechecklist.addcheckbox("x15 y105", "Baloons")
    bluechecklist.addcheckbox("x15 y120", "Tad Alts(if possible)")
    bluechecklist.addcheckbox("x15 y135", "2+ Super smoothies")
    bluechecklist.addcheckbox("x15 y150", "Mondo Blessing")
    bluechecklist.addcheckbox("x15 y165", "Puffshrooms") 
    bluechecklist.addcheckbox("x15 y180", "Stickbug")
    bluechecklist.addcheckbox("x150 y30", "Robo Party")
    bluechecklist.addcheckbox("x150 y45", "Good Ping")
    bluechecklist.addcheckbox("x150 y60", "glitter")
    bluechecklist.addcheckbox("x150 y75", "Beacon")
    bluechecklist.addcheckbox("x150 y90", "Wreath")
    bluechecklist.addcheckbox("x150 y105", "LidArt")
    bluechecklist.addcheckbox("x150 y120", "Stack")
    bluechecklist.addcheckbox("x150 y135", "Honeybee quest")
    bluechecklist.addcheckbox("x150 y150", "winds")
    bluechecklist.addcheckbox("x150 y165", "Loaded + smoothie")