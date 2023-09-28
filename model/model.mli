type t = { name : string; notes : string; url : string; created_at : float }
[@@deriving irmin]

val v : created_at:float -> name:string -> url:string -> notes:string -> t
val key_path : t -> string list
val merge : t option Irmin.Merge.t
val equal : t -> t -> bool
