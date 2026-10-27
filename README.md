# wenbinmei.github.io

Personal website of Wenbin Mei, built with [Hugo](https://gohugo.io) and the [Blowfish](https://blowfish.page) theme (v3.9.0, included as a git submodule in `themes/blowfish`). Pushing to `master` builds and deploys to GitHub Pages via `.github/workflows/deploy.yml`.

## Where things live

| What | File |
| --- | --- |
| Homepage ("What I do") | `content/_index.md` |
| Name, headline, bio, profile links | `config/_default/languages.en.toml` (`[params.author]`) |
| Experience, education, skills, service, awards | `content/experience/index.md` |
| Publications | `content/publications/index.md` |
| Patents | `content/patents/index.md` |
| Earlier research projects (one folder each, with `feature.*` image) | `content/projects/` |
| Blog posts (one folder each) | `content/posts/` |
| Menu | `config/_default/menus.en.toml` |
| Theme settings (colours, dark mode, layouts) | `config/_default/params.toml` |
| Layout and typography tweaks | `assets/css/custom.css` |
| Profile photo | `assets/img/me.jpg` |
| CV source / PDF | `cv/cv.html` → `static/uploads/wenbin-mei-cv.pdf` |

## Local preview

Requires Hugo **extended 0.164–0.167** (the deploy workflow uses 0.167.0). No Node or Go needed.

```sh
git clone --recurse-submodules https://github.com/wenbinmei/wenbinmei.github.io.git
cd wenbinmei.github.io
hugo server
```

Then open http://localhost:1313. If you cloned without `--recurse-submodules`, run `git submodule update --init` first.

## Updating the CV PDF

Edit `cv/cv.html`, then run `./cv/build.sh` (uses Google Chrome to print it to PDF). Keep it to two pages. Keep the file name lowercase: GitHub Pages is case-sensitive and Hugo lowercases menu links.
