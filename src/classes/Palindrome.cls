/**
 * Created by Home on 12/07/2022.
 */

public with sharing class Palindrome {

    public Boolean isPalindrome(String toCheck)
    {
        Integer start = 0;
        Integer finish = toCheck.length() - 1;

        while (finish - start > 1)
        {
            if (toCheck.charAt(start) != toCheck.charAt(finish))
            {
                return false;
            }

            start++;
            finish--;
        }

        return true;
    }

    public Boolean isPalindromeInt(Integer toCheck)
    {
        Integer temp = toCheck;
        Integer reversed = 0;

        while (temp > 0)
        {
            Integer remainder = Math.mod(temp, 10);
            reversed += remainder;

            temp = temp / 10;

            if (temp != 0)
            {
                reversed = reversed * 10;
            }
        }

        return reversed == toCheck;
    }
}