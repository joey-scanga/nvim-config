local function insert_bashargparse()
  -- Define the boilerplate text as a Lua table
  local boilerplate = {
    '#!/bin/bash',
    '',
    'args=$(getopt -l "kwarg:,arg" -o "" - "$@")',
    'eval set -- "$args"',
	'while [ $# -gt 0 ]; do',
	'	case "$1" in',
	'		--)',
	'			shift',
	'			break',
	'			;;',
	'		--kwarg)',
	'			export kwarg="$2"',
	'			shift',
	'			;;',
	'		--arg)',
	'			# Insert arg logic here',
	'			;;',
	'	esac',
	'	shift',
	'done'
  }
  -- Get the current line number
  local line_num = vim.fn.line('.')
  -- Insert each line of the boilerplate at the current cursor position
  for i, line in ipairs(boilerplate) do
    vim.fn.append(line_num + i - 1, line)
  end
end

vim.api.nvim_create_user_command('BashArgParse', function()
  insert_bashargparse()
end, {})



local function insert_bashscriptdirline()
  -- Define the boilerplate text as a Lua table
  local boilerplate = {
    'SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )'
  }
  -- Get the current line number
  local line_num = vim.fn.line('.')
  -- Insert each line of the boilerplate at the current cursor position
  for i, line in ipairs(boilerplate) do
    vim.fn.append(line_num + i - 1, line)
  end
end

vim.api.nvim_create_user_command('BashScriptDir', function()
  insert_bashscriptdirline()
end, {})
