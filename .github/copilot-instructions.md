# Copilot Instructions for travel-packlist-rules

## MCP server

- If available, use the MCP server `rules-mcp`.
- Set `trackWeight` to true for all calls as the rules contain weights.
- Always call the MCP tool to answer questions about rules, items, weights, or variable constellations. Do not rely on manual analysis of the rules text when the MCP tool is available.

## Language

All rules must be written in English. This includes category tags, item names, questions, and comments.

## Variables

- Variable names must use `snake_case` (e.g. `$weather_under_0`, `$non_eu_electricity`).

### Temperature Variables

- There are four temperature range variables: `$weather_under_0`, `$weather_0_to_10`, `$weather_10_to_20`, `$weather_above_20`.
- When listing multiple temperature variables in a condition, order them from lowest to highest (e.g. `weather_under_0 OR weather_0_to_10`, not the reverse).

## Categories

- Try to stick with existing category tags when possible.
- If you need to create a new category, use a descriptive name and ensure it is consistent with the naming conventions of existing categories.

## Items

- Avoid duplicating items across rules. Instead, extend conditions with `OR` so each item appears only once.

## Stash

If I instruct to remove an item from the list, move it to the "Stash" section. It is the rule with the condition `NOT always`. This way, the item is not lost and can be easily re-added if needed later.

## Validation

Rules follow the syntax described in https://github.com/dhhyi/travel-packlist/blob/main/libs/documentation/src/doc/rules-documentation.md

Use the `rules-mcp` tool to validate the syntax of the rules after every change.
