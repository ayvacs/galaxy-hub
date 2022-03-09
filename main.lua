--return loadstring(game:HttpGet("https://ave.is-a.dev/galaxy-hub", true))()

-- https://ave.is-a.dev/galaxy-hub
ver=0


function ls(url)
    return loadstring(game:HttpGet(url, true))()
end

function desc(a, notes)
    print(a)
    if a then
        local authors = ""
        for i, v in ipairs(a) do
            if i == #a then
                authors = authors .. ", and " .. v
            else
                authors = authors .. ", " .. v
            end
        end

        if notes then
            return "Written by " .. authors .. ". " .. notes .. " [ Loaded with Galaxy Hub ]"
        else
            return "Written by " .. authors .. ". [ Loaded with Galaxy Hub ]"
        end
    else
        if notes then
            return notes .. " [ Loaded with Galaxy Hub ]"
        else
            return "[ Loaded with Galaxy Hub ]"
        end
    end
end


return {
    ["PluginName"] = "Galaxy Hub",
    ["PluginDescription"] = "A cool scripthub",
    ["Commands"] = {
        ["galaxy"] = {
            ["ListName"] = "galaxy help",
            ["Description"] = "Welcome to GalaxyHub!",
            ["Aliases"] = {"gh", "ghub", "ghelp"},
            ["Function"] = function(args, speaker)
                print("Loaded the help script!!")
            end
        },
        ["cmd-x"] = {
            ["ListName"] = "CMD-X",
            ["Description"] = desc({"xxherts", "Curvn"}),
            ["Aliases"] = {"-domain-x", "cmdx", "cx"},
            ["Function"] = function(args, speaker)
                ls("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source")
            end
        },
        ["domain-x"] = {
            ["ListName"] = "Domain X",
            ["Description"] = desc({"shlex", "Sirius Software"}),
            ["Aliases"] = {"-domain-x", "dmnx", "dx"},
            ["Function"] = function(args, speaker)
                ls("https://shlex.dev/release/domainx/latest.lua")
            end
        },
        ["solaris"] = {
            ["ListName"] = "Solaris Hub",
            ["Description"] = desc({"trill"}),
            ["Aliases"] = {"sh"},
            ["Function"] = function(args, speaker)
                ls("https://solarishub.dev/script.lua")
            end
        }
    }
}