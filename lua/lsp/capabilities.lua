local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = false
return capabilities
