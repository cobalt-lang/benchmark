# benchmark
A script to execute the Computer Language Benchmark Game for ~20 different languages.

## Results
| Column 1 | Column 2 | Column 3 |
| -------- | -------- | -------- |
| Row 1, Column 1 | Row 1, Column 2 | Row 1, Column 3 |
| Row 2, Column 1 | Row 2, Column 2 | Row 2, Column 3 |
***
## Usage
1. Get [cobalt](https://github.com/cobalt-lang/cobalt) as it is needed for the benchmarker
2. Make sure you have all the other required languages/compilers
3. `git clone` this repo
4. Run `cobaltjit benchmark.cobalt`
5. Give it a second then check `bench.txt` for a markdown formatted table of results.
## How does it work
It uses the `os.execute` cobalt function to call every language's Computer Language Benchmark Game and then marks the result to a table, benchmarks
every language 100 times, writes the results to `bench.txt` as markdown formatted results.
