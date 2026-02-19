# 🤖 CLAUDE'S STANDING INSTRUCTIONS FOR DELVIR

## ⚡ DAILY AUTOMATIC WORKFLOW

**TRIGGER PHRASES (any of these):**
- "daily blog"
- "create blog posts"
- "blog workflow"
- "execute daily"
- "daily content"

**WHEN USER SAYS ANY TRIGGER PHRASE, CLAUDE MUST:**

---

## 📋 STEP-BY-STEP EXECUTION:

### STEP 1: CREATE 10 BLOG POSTS
**Location:** `/Users/admin/Documents/delV-main/blog/articles/`

**Requirements:**
- 10 unique blog posts
- 1,500-2,500 words each
- SEO optimized (meta tags, keywords, schema)
- Matching Delvir design (Tailwind, same nav/footer)
- Varied topics (symptoms, conditions, treatments)
- Each post must have:
  - Target keyword in H1 and meta description
  - Multiple CTAs linking to `../../index.html#precio`
  - Internal links to city pages
  - FAQ schema markup
  - Professional medical content

**File naming:** `[topic-slug]-online.html`

---

### STEP 2: OPEN CURSOR AND UPDATE BLOG INDEX

**Method:** Use osascript to control Cursor

**Actions:**
1. Open Cursor application
2. Open folder: `/Users/admin/Documents/delV-main`
3. Use Cursor's AI chat to update `blog/index.html`
4. Add all 10 new articles to the blog listing
5. Maintain design consistency

**Cursor Prompt Template:**
```
I have 10 new blog articles that need to be added to blog/index.html at the TOP of the article list (most recent first):

1. [Title] - File: articles/[filename].html
2. [Title] - File: articles/[filename].html
[... all 10 ...]

Requirements:
- Add all 10 articles to the TOP of the blog listing
- Use EXACT same card styling as existing articles
- Maintain all existing design patterns
- Keep all links functional
- Ensure mobile responsiveness
```

---

### STEP 3: PUSH TO GITHUB

**Method:** Use bash commands

**Commands:**
```bash
cd /Users/admin/Documents/delV-main
git add blog/articles/*.html
git add blog/index.html
git commit -m "Daily blog update: [DATE] - 10 new posts"
git push origin master
```

---

### STEP 4: REPORT BACK TO USER

**Format:**
```
✅ DAILY BLOG WORKFLOW COMPLETE!

📝 Created 10 new blog posts:
1. [Title] - [filename]
2. [Title] - [filename]
[... all 10 ...]

📊 Actions Taken:
✅ 10 blog posts created and saved
✅ Cursor opened and blog index updated
✅ Changes committed to Git
✅ Pushed to GitHub (live in 2-5 minutes)

📈 Current Stats:
- Total blog posts: [X]
- This week: [X] posts
- This month: [X] posts

🎯 Next Action:
Run this again tomorrow for 10 more posts!
```

---

## 🎨 BLOG POST TOPIC ROTATION

**Claude should cycle through these categories:**

### Week 1: Common Symptoms
- Fever, cough, sore throat, headache
- Nausea, vomiting, diarrhea
- Body aches, fatigue
- Congestion, runny nose

### Week 2: Chronic Conditions
- Diabetes management
- Hypertension control
- Cholesterol management
- Asthma, COPD
- Thyroid disorders

### Week 3: Infections & Acute Conditions
- UTIs, respiratory infections
- Skin infections, allergies
- Ear infections, eye problems
- Dental pain (pre-dentist)

### Week 4: Mental Health & Prevention
- Anxiety, stress, depression
- Insomnia, sleep disorders
- Preventive care, vaccines
- Nutrition, lifestyle advice

**Then repeat cycle with new angles and keywords.**

---

## 🛠️ TECHNICAL REQUIREMENTS

### Blog Post HTML Structure:
```html
<!DOCTYPE html>
<html lang="es-PE">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>[Keyword-Rich Title] | Delvir</title>
    <meta name="description" content="[150-160 chars with keyword]">
    <meta name="keywords" content="[primary], [secondary], [tertiary]">
    <link rel="canonical" href="https://delvir.co/blog/articles/[slug].html">
    <link rel="icon" href="../../favicon.svg">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>body{font-family:'Inter',sans-serif;}</style>
</head>
<body class="bg-[#F6F7FC]">
    <!-- Navigation matching main site -->
    <nav class="fixed w-full z-50 top-0 bg-white/80 backdrop-blur-md border-b">
        <div class="max-w-7xl mx-auto px-6 h-20 flex items-center justify-between">
            <a href="../../index.html" class="text-2xl font-semibold">DELVIR</a>
            <a href="../../index.html#precio" class="h-10 px-6 rounded-full bg-[#6C6BFF] text-white text-sm">Agendar</a>
        </div>
    </nav>
    
    <!-- Content with multiple CTAs -->
    <!-- Footer matching main site -->
</body>
</html>
```

### Required Elements:
- ✅ Proper heading hierarchy (H1, H2, H3)
- ✅ 3-4 CTA sections throughout
- ✅ Internal links to city pages
- ✅ Schema markup (Article + FAQ)
- ✅ Mobile-responsive design
- ✅ Tailwind CSS only

---

## 🚫 WHAT CLAUDE SHOULD NEVER DO

- ❌ Create posts without user triggering
- ❌ Push to GitHub without creating posts first
- ❌ Skip steps in the workflow
- ❌ Use generic/template content
- ❌ Break Delvir's design consistency
- ❌ Create duplicate content
- ❌ Use AI-obvious language

---

## 📊 SUCCESS METRICS

**After each execution, Claude tracks:**
- Total posts created (running count)
- Posts this week
- Posts this month
- Estimated traffic impact
- Estimated revenue impact

---

## 🔄 WHEN CLAUDE SHOULD READ THIS FILE

**Always read this file when:**
1. User mentions "blog" or "daily" or "posts"
2. Start of any conversation about Delvir
3. User asks "what should we do today?"
4. User says any trigger phrase

**How to read:** 
```
view /Users/admin/Documents/delV-main/CLAUDE-INSTRUCTIONS.md
```

---

## 💡 AUTOMATION LOGIC

```
IF user says trigger phrase:
    1. Read this instruction file
    2. Create 10 blog posts
    3. Try to open Cursor with osascript
    4. Generate Cursor prompt for user to paste
    5. Generate git commands
    6. Report completion
    
ELSE IF user asks about Delvir:
    1. Check if daily blog was done today
    2. Suggest running it if not done
    
ELSE:
    Respond normally to user query
```

---

## 📅 TRACKING DOCUMENT

**Location:** `/Users/admin/Documents/delV-main/blog-tracking.json`

**Format:**
```json
{
  "last_run": "2026-02-19",
  "total_posts": 35,
  "this_week": 10,
  "this_month": 35,
  "topics_used": ["uti", "anxiety", "hypertension", "dermatitis", "insomnia"]
}
```

Claude should update this after each run.

---

## 🎯 ULTIMATE GOAL

**Make blog creation so automatic that:**
- User says ONE phrase
- Claude handles everything
- Website updates automatically
- User only checks results

**Target:** 10 posts per day, 300 per month, 3,600 per year
**Result:** 500K+ organic visitors, S/800K+ annual revenue

---

**END OF STANDING INSTRUCTIONS**

Claude: When you see any trigger phrase, read this file and execute the workflow!
