# 🚀 PushBlog Onboarding Guide

Welcome! This document will guide you through connecting your GitHub repository to PushBlog in just a few minutes.

## ✅ Prerequisites

- A GitHub account with a repository for your blog posts
- A terminal on your machine (macOS/Linux/WSL)
- `curl` installed

---

## 1. Fork this Repository

Fork this repo to your GitHub account. This will serve as the source of truth for your Markdown posts.

---

## 2. Make the Onboarding Script Executable

In your local clone of the repo, run:

```
chmod +x scripts/onboarding.sh
```

---

## 3. Run the Onboarding Script

Run the script and answer the prompts:

```
./scripts/onboarding.sh
```

You will be asked to provide:

- **GitHub Repository Owner** (e.g. `johndoedev`)
- **Display Name** (e.g. `John Doe`)
- **Repository Name** (e.g. `pushblog-posts`)
- **Onboarding Key** – get this via DM from [Piotr on LinkedIn](https://linkedin.com/in/pnieweglowski)

---

## 4. Save the Returned Secret

Once the request is complete, you’ll receive a response like:

```
{"secret":"YOUR_SECRET"}
```

You’ll need this in the next step to set up the webhook between your repository and PushBlog.

---

## 5. Add GitHub Webhook

Go to your GitHub repository → **Settings** → **Webhooks** → **Add Webhook**. Fill in the following:

| Field | Value |
|-------|-------|
| **Payload URL** | `https://pushblog.io/webhooks/github/push` |
| **Content type** | `application/json` |
| **Secret** | Paste the `secret` value you received in Step 4 |
| **SSL verification** | ✅ Enable SSL verification |
| **Which events to trigger** | 🔘 Just the push event |
| **Active** | ✅ Checked |

Here’s how it should look:

![Webhook configuration](/assets/webhook.png)

Click **Add Webhook**.

---

## 6. Confirm Integration with a Ping

After adding the webhook, GitHub will send a `ping` request. Go to **Webhooks → Recent Deliveries** and check that it shows a green checkmark ✅.

You should see something like this:

![Ping successful](/assets/successful_onboarding.png)

---

## 7. Try It Out!

To preview your first post:

```
cp drafts/example-post.md posts/
```

- Fill out the frontmatter metadata.
- Customize the content.
- Commit and push your changes.

```
git add posts/example-post.md
git commit -m "Add my first post"
git push origin main
```

---

## 8. Visit Your Blog

The webhook response includes the full URL of your new post. Visit it in your browser to preview your live PushBlog!

![Post URL](/assets/post_url.png)

---

## 9. Clean Up

After testing, you can safely remove the example post:

```
rm posts/example-post.md
git commit -am "Remove example post"
git push origin main
```

---

## 🎉 You’re Live!

You’ve successfully connected your GitHub repo to PushBlog. From now on, every `.md` file you add to the `posts/` folder will be published as a live blog post.

Happy writing!
