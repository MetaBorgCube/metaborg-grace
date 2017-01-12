try {
    Exception.raise("this is serious stuff");
} catch {
    e : Exception -> print(e.message);
};