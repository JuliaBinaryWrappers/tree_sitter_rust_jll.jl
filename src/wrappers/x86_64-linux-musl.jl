# Autogenerated wrapper script for tree_sitter_rust_jll for x86_64-linux-musl
export libtreesitter_rust

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libtreesitter_rust`
const libtreesitter_rust_splitpath = ["lib", "libtreesitter_rust.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtreesitter_rust_path = ""

# libtreesitter_rust-specific global declaration
# This will be filled out by __init__()
libtreesitter_rust_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtreesitter_rust = "libtreesitter_rust.so"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"tree_sitter_rust")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libtreesitter_rust_path = normpath(joinpath(artifact_dir, libtreesitter_rust_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtreesitter_rust_handle = dlopen(libtreesitter_rust_path)
    push!(LIBPATH_list, dirname(libtreesitter_rust_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

