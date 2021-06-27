
function Type_Membership_Template(This: String) return boolean is
id : Discrete_Type;
begin
      id := Discrete_Type'value(This);
      return true;
   
      --'value throws constraint_error if its argument isn't in the type
      exception
         when constraint_error =>
            return false;

end Type_Membership_Template;