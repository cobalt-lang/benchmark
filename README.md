# benchmark template
A simple program to execute benchmarks for various languages and compilers. It was made to compare the speed of cobalt to other languages.

I haven't added any code yet, but feel free to.
**Languages supported:**
- C (gcc)
- C++ (g++)
- C# (mono)
- Cobalt (cobaltjit)
- Cobalt (cobalt)
- Go (go)
- Java (java)
- Lua (lua)
- LuaJIT (luajit)
- Python (python)
- Ruby (ruby)
- Rust (rustc)
- Swift (swift)
## Example Results
Rank | Language | Average Time | Average Memory
-----|----------|-------------|----------------
1 | Languages | 3.46us | Untracked
2 | Languages | 3.51us | Untracked
3 | Languages | 3.55us | Untracked
4 | Languages | 3.62us | Untracked
5 | Languages | 3.63us | Untracked
6 | Languages | 3.65us | Untracked
7 | Languages | 3.71us | Untracked
8 | Languages | 3.76us | Untracked
9 | Languages | 3.79us | Untracked
10 | Languages | 3.85us | Untracked
11 | Languages | 3.89us | Untracked
12 | Languages | 4.64us | Untracked
13 | Languages | 8.15us | Untracked


***
## Usage
1. Get [cobaltjit](https://github.com/cobalt-lang/cobalt) as it is needed for the benchmarker
2. Make sure you have all the other required languages/compilers
3. `git clone` this repo
4. `cd` into the repo
5. Run `cobaltjit benchmark.cobalt`
6. Give it a second then check `bench.txt` for a markdown formatted table of results.
## How does it work
It uses the `os.execute` cobalt function to call every language's Computer Language Benchmark Game and then marks the result to a table, benchmarks
every language 100 times, writes the results to `bench.txt` as markdown formatted results.
