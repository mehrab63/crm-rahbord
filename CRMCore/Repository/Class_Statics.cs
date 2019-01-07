using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.IO;
using System.Text.RegularExpressions;

namespace CRMCore.Repository
{
    public static class Class_Statics
    {
         //public static string MasterConnectionString = @"data source=130.185.74.164;initial catalog=DB_Shop;persist security info=True;user id=sa;password=qwe?asd?zxc??";
        public static string MasterConnectionString = Properties.Settings.Default.myconn;

        public static string Encrypt(string clearText, string key)
        {
            string EncryptionKey = key;
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }
        public static string Decrypt(string cipherText, string key)
        {
            string EncryptionKey = key;
            cipherText = cipherText.Replace(" ", "+");
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }

        public static string ConvertAscii(string inp)
        {
            inp = inp.Replace('ي', 'ی');
            return inp;
        }

        public static byte[] GetBytes(string str)
        {

            byte[] result = Encoding.Default.GetBytes(str);
            return result;
            byte[] bytes = new byte[str.Length * sizeof(char)];
            System.Buffer.BlockCopy(str.ToCharArray(), 0, bytes, 0, bytes.Length);
            return bytes;
        }
        public static string GetString(byte[] bytes)
        {
            return Encoding.Default.GetString(bytes, 0, bytes.Length);
        }

        public static string ExtractNumber(string input)
        {
            input = input.Replace("-", "");
            input = input.Replace(",", "");

            return Regex.Match(input, @"\d+").Value;
        }

        public static string NumberFormating(object number)
        {
            try
            {


                if (number == null) return "-";
                if (number.ToString() == "0") return "-";
                decimal value = decimal.Parse(number.ToString());

                return value.ToString("###,###,###");
            }
            catch
            {
                return number.ToString();
            }
        }

        public static string ConvertRialToToman(object number)
        {
            try
            {


                if (number == null) return "0";
                if (number.ToString() == "0") return "0";
                int rial = int.Parse(number.ToString().Replace(",", ""));

                return (rial / 10).ToString();
            }
            catch
            {
                return number.ToString();
            }
        }

        public static string NormalGroupIds(string ids)
        {
            ids = ids.Replace(",,", ",");
            if (ids == "") return "";
            if (ids == ",") return "";
            if (ids.Substring(0, 1) == ",") ids = ids.Substring(1, ids.Length - 1);
            if (ids.Substring(ids.Length - 1, 1) == ",") ids = ids.Substring(0, ids.Length - 1);
            return ids;
        }

        //public static DateTime ShamsiToMiladi(string Shamsi)
        //{
        //    try
        //    {


        //        PersianDate pd = new PersianDate(Shamsi);
        //        return DateTime.Parse(PersianDateConverter.ToGregorianDate(pd));
        //    }
        //    catch
        //    {
        //        return DateTime.Now;
        //    }

        //}

        //public static string MiladiToShamsi(object Miladi)
        //{
        //    try
        //    {


        //        if (Miladi == null) return "";
        //        if (Miladi.ToString() == "") return "";

        //        if (Miladi.ToString().Length == 8)
        //        {
        //            Miladi = Miladi.ToString().Substring(0, 4) + "/" + Miladi.ToString().Substring(4, 2) + "/" + Miladi.ToString().Substring(6, 2);
        //        }
        //        return PersianDateConverter.ToPersianDate(DateTime.Parse(Miladi.ToString())).ToString("d");
        //    }
        //    catch
        //    {
        //        return "";
        //    }

        //}


        public static string RemoveInjection(string inp)
        {
            inp = inp.Replace("--", "");
            inp = inp.Replace("'", "");
            inp = inp.Replace("select", "");
            inp = inp.Replace("delete", "");
            inp = inp.Replace("insert", "");
            inp = inp.Replace("drop", "");
            inp = inp.Replace("trucate", "");
            inp = inp.Replace("update", "");



            return inp;
        }


        public static DataRow GetDefault()
        {
            Class_Ado _clsAdo = new Class_Ado();
            return _clsAdo.FillDataTable("select top 1 * from tbl_Defaults").Rows[0];

        }

        public static string CompareTwoPrice(string first, string second)
        {
            try
            {
                if (first == "" && second != "")
                {
                    return second;
                }
                else if (first != "" && second == "")
                {
                    return first;
                }
                else if (first == "0" && second != "0")
                {
                    return second;
                }
                else if (first != "0" && second == "0")
                {
                    return first;
                }
                else if (int.Parse(first) > int.Parse(second))
                {
                    return second;
                }
                else
                {
                    return first;
                }
            }
            catch
            {
                return "";
            }
        }
        //public static string Today()
        //{
        //    PersianDate pp = new PersianDate(DateTime.Now);

        //    return pp.ToString().Substring(0, 10);

        //}



        public static string GetPaymentTypeName(object type)
        {
            if (type == null)
            {
                return "نا مشخص";
            }
            else if (type.ToString() == "0")
            {
                return "آنلاین";
            }
            else
            {
                return "نقدی در محل";
            }
        }

        

    }
}
