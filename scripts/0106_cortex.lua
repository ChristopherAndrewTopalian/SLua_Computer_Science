-- cortex.lua

local cortex = {
    bird = {
        root = {"animal", "vertebrates"},
        aka = {"birds", "birdie", "avian"},
        category = {"animal", "life", "ave", "creature", "being", "vertebrate"},
        attributes = {"feathers", "beak", "hollow bones"},
        actions = {"walk", "hop", "fly", "chirp", "squawk", "hunt worms"},
        associations = {"sky", "tree", "worms", "grass", "chirping"}
    },
    birds = "bird",
    birdie = "bird",

    robin = {
        root = "bird",
        related = {"worm", "spring", "morning"},
        attributes = {"red breast", "fragile talons", "skittish"},
        actions = {"hop", "hunt worms", "fly"},
        associations = {"spring", "morning", "worm", "bird", "tree"}
    },
    robins = "robin",

    worm = {
        root = {"invertebrate", "animal"},
        category = "invertebrate",
        attributes = {"soft", "blind", "live in dirt"},
        associations = {"dirt", "robin", "rain"}
    },
    worms = "worm",

    tree = {
        root = {"plant", "flora", "organism"},
        category = "plant",
        attributes = {"tall", "leaves", "rough bark", "deep roots"},
        actions = {"grow", "sway in wind", "drop leaves"},
        associations = {"bird", "sky", "earth", "robin"}
    },
    trees = "tree",

    dog = {
        root = {"animal", "vertebrate"},
        category = {"animal", "pets", "domesticated"},
        attributes = {"furry", "fast", "strong", "loud", "friendly"},
        actions = {"walk", "run", "sit", "bark", "bite", "jump"},
        associations = {"houses", "people", "veterinarian", "pet food"} 
    },
    dogs = "dog",
    doggie = "dog"
}

-- INPUT
local sentence = "Birds are beautiful creatures. They live in the trees and they fly in the sky. I like birds very much. Dogs are nice too."

-- STATE MEMORY
local recognizedWords = {}
local unknownWords = {}

-- PARSING ENGINE
-- string.gmatch("%S+") loops through every chunk of characters separated by spaces
for raw_word in string.gmatch(sentence, "%S+") do
    -- Clean the word: remove punctuation and lowercase it
    local word = string.gsub(raw_word, "[%.,!?]", "")
    word = string.lower(word)

    if word ~= "" then
        -- Is the word NOT in our cortex? (Checks if it is nil)
        if cortex[word] == nil then
            -- Have we already flagged this unknown word?
            if unknownWords[word] ~= nil then
                unknownWords[word].timesHeard = unknownWords[word].timesHeard + 1
            else
                -- Create a brand new Table for this unknown concept
                unknownWords[word] = {
                    status = "unknown",
                    timesHeard = 1,
                    guessedCategory = "pending"
                }
            end

        else
            -- The word IS in our cortex
            local memory = cortex[word]

            -- SYNAPSE CHECK: Is this just a pointer to another word?
            if type(memory) == "string" then
                print("⚡ Synapse fired: [" .. word .. "] redirecting to [" .. memory .. "]")
                word = memory
                memory = cortex[word] -- Follow pointer to real concept
            end

            -- Add true concept to working memory state
            recognizedWords[word] = memory

            -- Output the deep memory
            print("🧠 Concept activated: " .. word)
            
            if memory.associations ~= nil then
                print("   Associations: " .. table.concat(memory.associations, ", "))
            end
            
            if memory.attributes ~= nil then
                print("   Attributes: " .. table.concat(memory.attributes, ", "))
            end
            print("--------------------")
        end
    end
end

-- --- OUTPUT SUMMARY ---
print("=== UNKNOWN WORDS CACHE ===")
for u_word, data in pairs(unknownWords) do
    print("❓ " .. u_word .. " (Heard " .. data.timesHeard .. " times)")
end

--[[
⚡ Synapse fired: [birds] redirecting to [bird]
Object: 🧠 Concept activated: bird
Object:    Associations: sky, tree, worms, grass, chirping
Object:    Attributes: feathers, beak, hollow bones
Object: --------------------
Object: ⚡ Synapse fired: [trees] redirecting to [tree]
Object: 🧠 Concept activated: tree
Object:    Associations: bird, sky, earth, robin
Object:    Attributes: tall, leaves, rough bark, deep roots
Object: --------------------
Object: ⚡ Synapse fired: [birds] redirecting to [bird]
Object: 🧠 Concept activated: bird
Object:    Associations: sky, tree, worms, grass, chirping
Object:    Attributes: feathers, beak, hollow bones
Object: --------------------
Object: ⚡ Synapse fired: [dogs] redirecting to [dog]
Object: 🧠 Concept activated: dog
Object:    Associations: houses, people, veterinarian, pet food
Object:    Attributes: furry, fast, strong, loud, friendly
Object: --------------------
Object: === UNKNOWN WORDS CACHE ===
Object: ❓ nice (Heard 1 times)
Object: ❓ too (Heard 1 times)
Object: ❓ i (Heard 1 times)
Object: ❓ very (Heard 1 times)
Object: ❓ live (Heard 1 times)
Object: ❓ beautiful (Heard 1 times)
Object: ❓ like (Heard 1 times)
Object: ❓ and (Heard 1 times)
Object: ❓ in (Heard 2 times)
Object: ❓ much (Heard 1 times)
Object: ❓ sky (Heard 1 times)
Object: ❓ the (Heard 2 times)
Object: ❓ fly (Heard 1 times)
Object: ❓ creatures (Heard 1 times)
Object: ❓ they (Heard 2 times)
Object: ❓ are (Heard 2 times)
]]

--[[
Dedicated to God the Father
All Rights Reserved Christopher Andrew Topalian Copyright 2026
https://github.com/ChristopherTopalian
https://github.com/ChristopherAndrewTopalian
]]

