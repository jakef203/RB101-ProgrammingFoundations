
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flint_array = flintstones.to_a[2]

p flint_array

#or

flintstones.assoc("Barney")