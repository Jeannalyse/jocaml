Dynarray.stable_sort benchmarks

How to run them :
first, compile in the root directory with `./ocamlopt.opt -I stdlib benchmarks.ml -o benchmarks.opt`,
then, time the execution with `hyperfine "./benchmarks.opt [number]"`, `[number]` being 1, 2 or 3 depending on the version on Dynarray.stable_sort that you want to test.
If you want hyperfine to compare the three versions : `"./benchmarks.opt 1" "./benchmarks.opt 2" "./benchmarks.opt 3"` (the order of the numbers doesn't matter). You can also compare execution times of the same version.

How to obtain a Markdown file storing the results :
add `--export-markdown benchmarks.md` to the command line.
