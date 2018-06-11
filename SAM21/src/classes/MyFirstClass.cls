public class MyFirstClass {

    public MyFirstClass(ApexPages.StandardController controller) {

    }
    public pagereference GoToGooogle()
    {
    pagereference ob = new pagereference('https://www.google.com/');
    return ob;
    }
}