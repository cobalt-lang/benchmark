# benchmark
A simple program to execute the Computer Language Benchmark Game for ~20 different languages.

## Results
Rank | Language | Average Time | Average Memory
-----|----------|-------------|----------------
1 | cobaltJIT | 2.91us | 0.00KB
2 | cobalt | 3.01us | 0.00KB
3 | c++ | 3.17us | 0.00KB
4 | c | 3.21us | 0.00KB
5 | lua | 3.27us | 0.00KB
6 | swift | 3.30us | 0.00KB
7 | luajit | 3.35us | 0.00KB
8 | csharp | 3.37us | 0.00KB
9 | rust | 3.38us | 0.00KB
10 | python | 3.39us | 0.00KB
11 | go | 3.42us | 0.00KB
12 | ruby | 3.46us | 0.00KB
13 | java | 4.62us | 0.00KB

***
## Why?
I recently made the language cobalt and wanted to make a demo to showcase its speed in comparison, so here it is. Request languages in issues.
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