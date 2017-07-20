
 
// Main Class
public class TestThis
{
    public static void main(String[] args)
    {
        int n = 8; // Number of threads
        for (int i=0; i<8; i++)
        {
            practice object = new practice();
            object.start();
        }
    }
}