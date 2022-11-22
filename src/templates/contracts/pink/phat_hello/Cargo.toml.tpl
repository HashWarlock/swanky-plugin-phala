[package]
name = "{{contract_name_snake}}"
version = "0.1.0"
authors = ["{{author_name}}"]
edition = "2021"

[dependencies]
ink_prelude = { version = "3.3", default-features = false }
ink_primitives = { version = "3.3", default-features = false }
ink_metadata = { version = "3.3", default-features = false, features = ["derive"], optional = true }
ink_env = { version = "3.3", default-features = false }
ink_storage = { version = "3.3", default-features = false }
ink_lang = { version = "3.3", default-features = false }

scale = { package = "parity-scale-codec", version = "3", default-features = false, features = ["derive"] }
scale-info = { version = "2", default-features = false, features = ["derive"], optional = true }

serde = { version = "1.0", default-features = false, features = ["derive"] }
serde-json-core = { version = "0.4.0" }
pink-extension = { version = "0.1", default-features = false }

[dev-dependencies]
pink-extension-runtime = "0.1"

[lib]
name = "{{contract_name_snake}}"
path = "lib.rs"
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
    "serde-json-core/std",
]
ink-as-dependency = []
