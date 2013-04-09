using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

//this class contains various utility functions that are needed in several places
static class Util
{
    //bitwise copy float to integer
    public static Int32 ftoi(float f)
    {
        byte[] b = BitConverter.GetBytes(f);
        return BitConverter.ToInt32(b, 0);
    }
    //bitwise copy integer to float
    public static float itof(Int32 f)
    {
        byte[] b = BitConverter.GetBytes(f);
        return BitConverter.ToSingle(b, 0);
    }
    //cut a string after a specific sequence
    public static String cutStrAfter(String s, String end)
    {
        int index = s.IndexOf(end);
        if (index >= 0)
        {
            s = s.Substring(0, index);
        }
        return s;
    }

    //cut a string before a specific sequence
    public static String cutStrBefore(String s, String end)
    {
        int index = s.IndexOf(end);
        if (index == -1)
        {
            return "";
        }
        index += end.Length;
        s = s.Substring(index, s.Length-index);
        return s;
    }
}
