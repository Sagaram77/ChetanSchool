using System;
using System.Security.Cryptography;
using System.Text;

namespace Chetancbsewebsite.BLL
{
    public static class SecurityHelper
    {
        public static string GenerateSalt(int length = 16)
        {
            byte[] saltBytes = new byte[length];
            using (var rng = new RNGCryptoServiceProvider())
            {
                rng.GetBytes(saltBytes);
            }
            return Convert.ToBase64String(saltBytes);
        }

        public static string ComputeSha256Hash(string rawData, string salt)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                // UTF-8 encoding (standard C#)
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData + salt));

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }

        public static string ComputeSha256HashUnicode(string rawData, string salt)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                // UTF-16LE encoding (SQL Server NVARCHAR HASHBYTES compatibility)
                byte[] bytes = sha256Hash.ComputeHash(Encoding.Unicode.GetBytes(rawData + salt));

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }

        public static bool VerifyPassword(string inputPassword, string storedHash, string storedSalt)
        {
            if (string.IsNullOrEmpty(inputPassword) || string.IsNullOrEmpty(storedHash))
                return false;

            // 1. Check Standard C# UTF-8 Salted Hash
            if (!string.IsNullOrEmpty(storedSalt))
            {
                string utf8Hash = ComputeSha256Hash(inputPassword, storedSalt);
                if (string.Equals(utf8Hash, storedHash, StringComparison.OrdinalIgnoreCase))
                    return true;

                // 2. Check SQL Server NVARCHAR HASHBYTES (UTF-16LE) Salted Hash
                string unicodeHash = ComputeSha256HashUnicode(inputPassword, storedSalt);
                if (string.Equals(unicodeHash, storedHash, StringComparison.OrdinalIgnoreCase))
                    return true;
            }

            // 3. Fallback: Check Direct Unsalted SHA-256 Hash
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(inputPassword));
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    sb.Append(bytes[i].ToString("x2"));
                }
                if (string.Equals(sb.ToString(), storedHash, StringComparison.OrdinalIgnoreCase))
                    return true;
            }

            // 4. Fallback: Direct Plaintext comparison (in case entered directly during dev testing)
            if (string.Equals(inputPassword, storedHash, StringComparison.Ordinal))
                return true;

            return false;
        }
    }
}
