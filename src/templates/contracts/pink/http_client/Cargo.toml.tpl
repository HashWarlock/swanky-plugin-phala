[package]
name = "{{contract_name_snake}}"
version = "0.1.0"
authors = ["{{author_name}}"]
edition = "2021"

[dependencies]
ink_primitives = { version = "3.3.1", default-features = false }
ink_metadata = { version = "3.3.1", default-features = false, features = ["derive"], optional = true }
ink_env = { version = "3.3.1", default-features = false }
ink_storage = { version = "3.3.1", default-features = false }
ink_lang = { version = "3.3.1", default-features = false }

scale = { package = "parity-scale-codec", version = "3.1", default-features = false, features = ["derive"] }
scale-info = { version = "2.1", default-features = false, features = ["derive"], optional = true }

pink-extension = { version = "0.1", default-features = false }

[lib]
name = "{{contract_name_snake}}"
path = "src/lib.rs"
crate-type = [
	# Used for normal contract Wasm blobs.
	"cdylib",
]

[features]
default = ["std"]
std = [
    "ink_metadata/std",
    "ink_env/std",
    "ink_storage/std",
    "ink_primitives/std",
    "scale/std",
    "scale-info/std",
    "pink-extension/std",
]
ink-as-dependency = []
