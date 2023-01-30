local status, devContainers = pcall(require, "devcontainer")

if not status then
	return
end

devContainers.setup({
	generate_commands = true,
	autocommands = {
		init = false,
		clean = false,
		update = false,
	},
})
