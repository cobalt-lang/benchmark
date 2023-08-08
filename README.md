# benchmark
A simple program to execute the Computer Language Benchmark Game for ~20 different languages.

## Results
| Ranking | Name | Time |
| -------- | -------- | -------- |
| Row 1, Column 1 | Row 1, Column 2 | Row 1, Column 3 |
| Row 2, Column 1 | Row 2, Column 2 | Row 2, Column 3 |
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