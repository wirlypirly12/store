# store

Store is a wrapper that allows you to hide values from stack inspecting (not constant inspecting)
How is this useful? Traditionally a lot of the time when you are reverse engineering a script you will tamper with the stack of the script. Store fixes this and encodes it when storing it in a variable.

There are tons of improvements I could make to this such as inlining string encoding/decoding.
