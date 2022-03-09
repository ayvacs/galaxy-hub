-- https://ave.is-a.dev/galaxy-hub

function ls(url)
    return loadstring(game:HttpGet(url, true))()
end

return {
    ["PluginName"] = "Galaxy Hub",
    ["PluginDescription"] = "A cool scripthub",
    ["Commands"] = {
        ["galaxy"] = {
            ["ListName"] = " [ Galaxy Hub Help ]",
            ["Description"] = "Shows a help menu",
            ["Aliases"] = {"gh", "ghub", "ghelp"},
            ["Function"] = function(args, speaker)
                print("Loaded the help script!!")
            end
        },
        ["cmd-x"] = {
            ["ListName"] = "CMD-X",
            ["Description"] = "Launches CMD-X",
            ["Aliases"] = {"-domain-x", "cmdx", "cx"},
            ["Function"] = function(args, speaker)
                ls("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source")
            end
        },
        ["domain-x"] = {
            ["ListName"] = "Domain X",
            ["Description"] = "Launches Domain X",
            ["Aliases"] = {"-domain-x", "dmnx", "dx"},
            ["Function"] = function(args, speaker)
                ls("https://shlex.dev/release/domainx/latest.lua")
            end
        }
    }
}