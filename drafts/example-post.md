---
# 🧠 Frontmatter metadata – REQUIRED

# Title of your blog post. This is displayed in previews and in the browser tab.
# It will be displayed at the top of your post as h1 too.
title: "🚀 My First PushBlog Post"

# Your name or nickname. Will be shown as the author of the post.
author: "Your Name"

# Publication date in YYYY-MM-DD format. This determines the order of posts.
date: "2025-06-01"

# Short summary of your post, used in previews and SEO meta tags.
description: "A quick introduction to writing on PushBlog and sharing your ideas with the world."

# URL slug – MUST NOT be changed later.
# The filename defines the post's unique key for the author.
slug: "my-first-pushblog-post"

# Tags for your post. Useful for search, filters, and discoverability (not implemented yet).
tags: ["pushblog", "introduction", "first-post", "guide"]
---

## 👋 Welcome to PushBlog!

This is an example post meant to help you get started. Everything you need to do is write in **Markdown**. PushBlog takes care of converting it into a minimal, fast, and SEO-friendly HTML blog post.

Here are a few things to remember:

- **Filename matters:** The filename (e.g., `my-first-pushblog-post.md`) is the unique key for your post. This means you shouldn't rename the file after publishing.
- **Slug is immutable:** The best SEO results are achieved once this requirements is met.
- **Use frontmatter:** The block at the top (between `---`) is called frontmatter. It defines the post’s metadata. All fields are required.

---

## ✍️ What should I write?

You can write anything you'd like—thoughts on engineering, product design, management, or your personal learning journey. Here's a placeholder for your code or walkthrough:

```go
package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "Hello, PushBlog readers!")
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}
```

You can also add some valuable images:
![Pushblog Cover](/assets/pushblog.cover.png)

## 💡 Best Practices

- Commit your `.md` file to your repo’s `posts/` directory.
- Use meaningful titles and short, focused tags.
- Keep descriptions human-readable – they are often shown in search engines and social previews.
- Avoid unnecessary renaming of files once published.
- Changes of the slug are ignored.

---

## ✅ Checklist before publishing

```shell
[ ] File is saved in the correct folder `/posts/`.
[ ] Filename is lowercase, uses dashes instead of spaces, and is final.
[ ] Frontmatter fields are filled and valid.
[ ] Content preview looks fine in Markdown.
[ ] You’re happy with the post. Hit `git push` and you’re live!
```

## 🧭 Need Help?

Contact [Piotr Niewęgłowski](https://linkedin.com/in/pnieweglowski) in case of any question.

Happy blogging! 🎉

👇 A footer with PushBlog branding will be added automatically.