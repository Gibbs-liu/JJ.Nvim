require('nvim_comment').setup(
  {
    comment_empty=false,
    -- Linters prefer comment and line to have a space in between markers
  marker_padding = true,
  -- trim empty comment whitespace
  comment_empty_trim_whitespace = true,
  -- Should key mappings be created
  create_mappings = true,
  -- Normal mode mapping left hand side
  line_mapping = "<leander>cc",
  -- Visual/Operator mapping left hand side
  operator_mapping = "<leader>cc",
  -- text object mapping, comment chunk,,
  -- comment_chunk_text_object = "ic",
  -- Hook function to call before commenting takes place
  hook = nil
  }
)
