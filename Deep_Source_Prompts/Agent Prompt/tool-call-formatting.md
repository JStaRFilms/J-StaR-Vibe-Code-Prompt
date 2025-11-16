## Brief overview

This global guideline focuses on proper tool call formatting to prevent malformed XML errors that cause API response failures.

  

## Tool call structure

- Always use complete XML tags with proper opening and closing elements

- Ensure all required parameters are included and properly nested

- Validate XML structure before tool execution

  

Example of correct formatting:

```

<search_files>

<path>src/components</path>

<regex>function</regex>

</search_files>

```

  

## Common pitfalls to avoid

- Missing closing tags for tool names or parameters

- Incomplete parameter definitions

- Truncated XML during generation

  

Examples of incorrect formatting:

```

<search_files> <path>.</path>  // Missing closing </search_files>

<list_files> <path>src/components</path>  // Missing closing </list_files>

```

  

## Verification steps

- Double-check XML completeness before submitting tool calls

- Include all necessary assistant messages alongside tool calls

- Test tool calls in simple scenarios first when possible