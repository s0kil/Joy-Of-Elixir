# Maps Are Key-Value Pairs
genders = %{"david" => :male, "gillian" => :female}
genders["david"] == :male

# Map With Atom Keys
genders_atom_keys = %{david => "male", gillian => "female"}
genders.gillian == "female"
