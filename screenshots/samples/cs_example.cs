using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace NotepadThemeDemo
{
    // C# sample highlighting LINQ, tasks, and modern properties.
    public record User(int Id, string Username, string Email);

    public class UserManager
    {
        private readonly List<User> _users = new();

        public void AddUser(User user)
        {
            if (user == null) throw new ArgumentNullException(nameof(user));
            _users.Add(user);
        }

        public async Task<User?> GetUserByIdAsync(int id)
        {
            await Task.Delay(50); // Simulate network latency
            return _users.Find(u => u.Id == id);
        }

        public IEnumerable<string> GetUserEmailsMatching(string domains)
        {
            return _users
                .Where(u => u.Email.EndsWith(domains, StringComparison.OrdinalIgnoreCase))
                .Select(u => u.Email);
        }
    }

    class Program
    {
        static async Task Main(string[] args)
        {
            var manager = new UserManager();
            manager.AddUser(new User(1, "alice", "alice@company.com"));
            manager.AddUser(new User(2, "bob", "bob@gmail.com"));

            var user = await manager.GetUserByIdAsync(1);
            if (user is not null)
            {
                Console.WriteLine($"Loaded: {user.Username} ({user.Email})");
            }
        }
    }
}
