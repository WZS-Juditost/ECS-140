import java.util.*;

public class RemoveDuplicates {
    private int[] arr;
    
    public RemoveDuplicates(int[] arr) {
        this.arr = arr;
    }
    
    public int[] remove() {
        Set<Integer> set = new HashSet<>();
        for (int i = 0; i < arr.length; i++) {
            set.add(arr[i]);
        }
        return set.stream().mapToInt(Integer::intValue).toArray();
    }
    
    public int kthSmallest(int k) {
        int[] distinctArr = remove();
        Arrays.sort(distinctArr);
        return distinctArr[k - 1];
    }
    
    public int mthLargest(int m) {
        int[] distinctArr = remove();
        Arrays.sort(distinctArr);
        return distinctArr[distinctArr.length - m];
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Get array input from user
        System.out.print("Enter the number of integers: ");
        int n = scanner.nextInt();
        int[] arr = new int[n];
        System.out.println("Enter " + n + " integers separated by spaces:");
        for (int i = 0; i < n; i++) {
            arr[i] = scanner.nextInt();
        }
        RemoveDuplicates removeDuplicates = new RemoveDuplicates(arr);
        
        // Get kth smallest and mth largest element input from user
        System.out.print("Enter the value of k: ");
        int k = scanner.nextInt();
        System.out.print("Enter the value of m: ");
        int m = scanner.nextInt();
        
        // Display distinct array and get kth smallest and mth largest element
        int[] distinctArr = removeDuplicates.remove();
        System.out.print("Distinct array: ");
        Arrays.stream(distinctArr).forEach(num -> System.out.print(num + " "));
        System.out.println("\n");
        System.out.println("\n");
        System.out.println(k + "th smallest element: " + removeDuplicates.kthSmallest(k));
        System.out.println(m + "th largest element: " + removeDuplicates.mthLargest(m));
    }
}
