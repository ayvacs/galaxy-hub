-- https://ave.is-a.dev/galaxy-hub
-- v1.0.0


meta = {
    _name = "Galaxy Hub",
    _desc = "Launch other scripts and script hubs easily, through Infinite Yield.",
    _author = "ayvacs @ GitHub",

    loadsig = "[ Loaded with Galaxy Hub ]\n\n"
}

print(meta._name)


function ls(url)
    -- Loadstring function; loads url.
    return loadstring(game:HttpGet(url, true))()
end

function desc(a, notes)
    --[[
        a = authors table [OPTIONAL]
            i.e. {"ScriptPublisher", "Author1", "Author2"}
        notes = script notes [OPTIONAL]
            i.e. "Currently having compatibility issues with Mac injectors."
    ]]
    if a then
        local authors = ""
        
        if #a == 1 then
            -- When there's only one author
            authors = a[1]
        elseif #a == 2 then
            -- When there's two authors
            authors = a[1] .. " and " .. a[2]
        else
            -- When there's 3+ authors
            for i, v in pairs(a) do
                if i == 1 then
                    authors = v
                else
                    if i == #a then
                        authors = authors .. ", and " .. v
                    else
                        authors = authors .. ", " .. v
                    end
                end
            end
        end

        if notes then
            return meta.loadsig .. "Written by " .. authors .. ". " .. notes
        else
            return meta.loadsig .. "Written by " .. authors .. ". "
        end
    else
        if notes then
            return meta.loadsig .. "Written by an unknown author." .. notes
        else
            return meta.loadsig .. "Written by an unknown author."
        end
    end
end


return {
    ["PluginName"] = meta._name,
    ["PluginDescription"] = meta._desc,
    ["Commands"] = {
        -- Galaxy Maintenance Scripts

        ["galaxy"] = {
            ["ListName"] = " galaxy help",
            ["Description"] = "Welcome to GalaxyHub!",
            ["Aliases"] = {"gh", "ghub", "ghelp"},
            ["Function"] = function(args, speaker)
                print("Loaded the help script!!")
            end
        },


        -- Community Scripts

        ["cmd-x"] = {
            ["ListName"] = "cmd-x",
            ["Description"] = desc({"xxherts", "Curvn"}),
            ["Aliases"] = {"cmdx", "cx"},
            ["Function"] = function(args, speaker)
                ls("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source")
            end
        },
        ["domain-x"] = {
            ["ListName"] = "domain-x",
            ["Description"] = desc({"shlex", "Sirius Software"}),
            ["Aliases"] = {"domainx", "dmnx", "dx"},
            ["Function"] = function(args, speaker)
                ls("https://shlex.dev/release/domainx/latest.lua")
            end
        },
        ["solaris"] = {
            ["ListName"] = "solaris",
            ["Description"] = desc({"trill"}),
            ["Aliases"] = {"solaris-hub", "sh"},
            ["Function"] = function(args, speaker)
                ls("https://solarishub.dev/script.lua")
            end
        }
    }
}