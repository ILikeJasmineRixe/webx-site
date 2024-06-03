-- Function to change text and style of the description paragraph
local function changeText()
    local description = get("description")
    description.set_content("The text has been changed!")
    description.set_style("color", "#ff0000")
    description.set_style("font-weight", "bold")
end

-- Function to handle form submission
local function handleSubmit()
    local input = get("input-name")
    local name = input.get_value()
    local result = get("result")
    result.set_content("Hello, " .. name .. "!")
    result.set_style("color", "#007BFF")
end

-- Attach event listeners to buttons
local btnChange = get("btn-change")
btnChange.on_click(changeText)

local btnSubmit = get("btn-submit")
btnSubmit.on_click(handleSubmit)
