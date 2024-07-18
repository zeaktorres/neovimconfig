local g = vim.g

g.ale_ruby_rubocop_auto_correct_all = 1

g.ale_linters = {
    python = {'flake8'},
    lua = {'lua_language_server'}
}

g.ale_fixers = {
    python = {'black'}
}

g.ale_fix_on_save = 1
