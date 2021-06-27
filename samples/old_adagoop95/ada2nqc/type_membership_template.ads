--generic subprogram to support Ada/Mindstorms type membership checking

generic
   type Discrete_Type is (<>);
   
function Type_Membership_Template(This: String) return boolean;