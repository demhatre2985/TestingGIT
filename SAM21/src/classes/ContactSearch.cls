public class ContactSearch{

    public static List<Contact> searchForContacts(String Lname, String Mcode)
        {
        
        List<Contact> conrec = [Select ID,NAME from Contact where Name = :Lname and MailingPostalCode = :Mcode];
        
        return conrec;
        
        
        }
       

}