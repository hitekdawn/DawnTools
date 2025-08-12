local DawnTools = LibStub("AceAddon-3.0"):GetAddon("DawnTools")
local DawnHelperFunctions = DawnTools:NewModule("DawnHelperFunctions",
                                                "AceEvent-3.0")

function DawnHelperFunctions:ParseInput(input)
    local parsedInput = string.gmatch(input, "[^\r\n]+")
    return parsedInput
end

function DawnHelperFunctions:IsThreeMonthsAgo(input)
    local timeToConvert = strsub(input, 0, 19) -- Convert input to yyyy-MM-dd hh:mm:ss

    local threemonths = 7889229 -- Three months in epoch
    local threemonthsago = time() - threemonths -- Get time 3 months ago

    -- Convert string to time
    local pattern = "(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)"
    local runyear, runmonth, runday, runhour, runminute, runseconds =
        timeToConvert:match(pattern)
    local convertedTimestamp = time({
        year = runyear,
        month = runmonth,
        day = runday,
        hour = runhour,
        min = runminute,
        sec = runseconds
    })

    -- Return true if input is older than 6mths, false if not
    return threemonthsago > convertedTimestamp
end

function DawnHelperFunctions:IsOlderThanDays(input, days)
    local timeToConvert = strsub(input, 0, 19) -- Convert input to yyyy-MM-dd hh:mm:ss

    local daysInSeconds = days * 24 * 60 * 60 -- Convert days to seconds
    local cutoffTime = time() - daysInSeconds -- Get cutoff time

    -- Convert string to time
    local pattern = "(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)"
    local runyear, runmonth, runday, runhour, runminute, runseconds =
        timeToConvert:match(pattern)
    local convertedTimestamp = time({
        year = runyear,
        month = runmonth,
        day = runday,
        hour = runhour,
        min = runminute,
        sec = runseconds
    })

    -- Return true if input is older than specified days, false if not
    return cutoffTime > convertedTimestamp
end

-- Parse the invite panel's editbox
function DawnHelperFunctions:ParseInviteInput()
    wipe(DawnTools.groupInviter.playersToInvite)
    local input = DawnTools.groupInviter.inviteWindow.editBox:GetText()
    local parsedInput = string.gmatch(input, "[^\r\n]+")
    for entry in parsedInput do
        local matches = {}
        for match in entry:gmatch("[^:]+") do
            table.insert(matches, match)
        end
        local name = matches[1] or ""
        local balance = matches[2] or 0
        if name and not name:find("-") then
            name = name .. "-" .. select(2, UnitFullName("player"))
        end
        DawnTools.groupInviter.playersToInvite[#DawnTools.groupInviter
            .playersToInvite + 1] = {
            name = name,
            balance = balance * 10000,
            timer = nil,
            status = "Waiting...",
            hasSentMessage = false
        }
    end
end

function DawnHelperFunctions:NewLine() return "\n" end
function DawnHelperFunctions:NewLine2() return "\\n" end
function DawnHelperFunctions:Quote() return '"' end
