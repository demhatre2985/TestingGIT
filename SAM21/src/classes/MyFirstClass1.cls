public class MyFirstClass1 {

    public MyFirstClass1(ApexPages.StandardController controller) {

    }
    public pagereference GoToGoogle()
    {
        pagereference ob=new pagereference('https://www.google.com/');
        return ob;
    }

}