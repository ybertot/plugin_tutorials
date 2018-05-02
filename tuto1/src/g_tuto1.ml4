open Pp
(* This one is necessary, to avoid message about missing wit_string *)
open Stdarg

VERNAC COMMAND EXTEND TakingConstr CLASSIFIED AS QUERY
| [ "Cmd1" constr(_) ] ->
  [ Feedback.msg_notice (strbrk "Cmd1 parsed something") ]
END
