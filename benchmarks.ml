let version = int_of_string Sys.argv.(1)

let run () =
  let arr = Array.init 100_000 (fun i -> -i) in
  let a = Dynarray.create () in
  for i = 1 to 100 do
    Dynarray.append_array a arr;
    Dynarray.stable_sort Stdlib.compare a version;
    Dynarray.clear a;
  done

let () = run (); print_endline "OK"