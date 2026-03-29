# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::granola::deps()
#
#>
######################################################################
p6df::modules::granola::deps() {

  # shellcheck disable=2034
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
  )
}

######################################################################
#<
#
# Function: p6df::modules::granola::mcp()
#
#>
#/ Synopsis
#/    Installs Granola MCP server
#/
######################################################################
p6df::modules::granola::mcp() {

  p6_js_npm_global_install "granola-mcp-plus"

  p6df::modules::anthropic::mcp::server::add "granola" "npx" "-y" "granola-mcp-plus"
  p6df::modules::openai::mcp::server::add "granola" "npx" "-y" "granola-mcp-plus"

  p6_return_void
}
