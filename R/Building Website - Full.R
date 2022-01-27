# Building the website
# All of this is from:
# https://www.apreshill.com/blog/2020-12-new-year-new-blogdown/



# Install remotes package if needed
if (!requireNamespace("remotes")) install.packages("remotes")

# Install latest development version of blogdown from github
remotes::install_github("rstudio/blogdown")

# Load the blogdown package
library(blogdown)

# Create a website with the Hugo Wowchemy "starter-academic" theme
# new_site(theme = "wowchemy/starter-academic")
# new_site(theme = "kakawait/hugo-tranquilpeak-theme") # This one had issues 
new_site(theme = "wowchemy/starter-hugo-online-course")

# When using the starter-hugo-online-course template, I had to add
# the following to the config.yaml file
# security:
#   funcs:
#   getenv:
#   - ^HUGO_
#   - ^WC_
# In order to whitelist the environment variable WC_POST_CSS.



# Importantly, when you come back to your project, note that you can use 
# blogdown::serve_site() or the “Serve Site” addin to preview it locally.
blogdown::serve_site()

# You can configure your Rprofile file by navigating there or running
# if exists, opens; if not, creates new
blogdown::config_Rprofile() 

# # Then add the blogdown options to that file, save and RESTART YOUR R SESSION
# # for the changes to take effect
# options(
#   # to automatically serve the site on RStudio startup, set this option to TRUE
#   blogdown.serve_site.startup = FALSE,
#   # to disable knitting Rmd files on save, set this option to FALSE
#   blogdown.knit.on_save = FALSE,     <- change
#   blogdown.author = "Alison Hill",  <- add
#   blogdown.ext = ".Rmarkdown",      <- add
#   blogdown.subdir = "post"          <- add
# )


# Always restart your R session after editing your .Rprofile for changes 
# to take effect. Don’t forget to run serve_site() after a restart.
blogdown::serve_site()


# Blogdown allows you to create new two kinds of R Markdown posts that 
# are knittable:
#   
#   .Rmd 🧶 to .html or
# 
# .Rmarkdown 🧶 to .markdown
# 
# Once knitted, both are then previewable in your Hugo site.
# 
# I used to agonize over which file extension to use. But now I am squarely 
# in .Rmarkdown camp with Maëlle- I like knitting to .markdown and wish this 
# was easier in blogdown; see: https://github.com/rstudio/blogdown/issues/530


# Use the console to author a new .Rmarkdown post; I’ll name my post “Hi Hugo”:
blogdown::new_post(title = "Hi Hugo", 
                   kind = "", # The content type to create, i.e., the Hugo 
                   # archetype. If the archetype is a page bundle 
                   # archetype, it should end with a slash, e.g., post/.
                   open = interactive(), # Whether to open the new file after 
                   # creating it. By default, it is opened in an 
                   # interactive R session.
                   ext = '.Rmarkdown', # The filename extension (e.g., ‘.md’, 
                   # ‘.Rmd’, or ‘.Rmarkdown’). Ignored if file has 
                   # been specified.
                   subdir = "content/tutorial/launch_monitor/", # If specified (not NULL) the post will be
                   # generated under a subdirectory under 
                   # a subdirectory under 'content/'. It
                   # can be a nested subdirectory like 'post/joe/'
                   author = getOption("blogdown.author"),
                   categories = NULL,
                   tags = NULL,
                   date = Sys.Date(),
                   time = getOption("blogdown.time", FALSE),
                   file = NULL, # The filename of the post. Date automatically 
                   # prepended
                   slug = NULL, # The slug of the post. By default (NULL), the 
                   # slug is generated from the filename by removing 
                   # the date and filename extension,
                   title_case = getOption("blogdown.title_case")
                   # A function to convert the title to title case.
)

# This takes the path to where you want your post to live, relative to the 
# content/ folder (so that piece of the path is assumed, rightly so!). 
# In the Academic theme, the example site organizes blog posts into the 
# content/post/ folder, but the name of this folder varies across Hugo themes.

# A rule that is true 90% of the time: folders in content/ are singular, 
# not plural— ️ post not  posts

# If you look in your Files pane, you can see that this creates a folder 
# with the date and the “slug” name of my post ("hi-hugo"). 
# The actual R Markdown file is named index.Rmarkdown.

# This is a Hugo page bundle. Each post gets its own bundle, or folder. 
# Inside the post bundle is where all your static images, static data 
# files like .csv files should go.

# In the post itself, use the relative file path like:
# ![my-first-image](image1.jpg)


# Let’s look at the index.Rmarkdown. We’ll knit this .Rmarkdown to 
# a .markdown file. You may knit freely now in blogdown!
# To knit an .Rmarkdown post, you can either:
# Use the Knit button to knit to the correct output format, or
# Use the keyboard shortcut Cmd+Shift+K (Mac) or Ctrl+Shift+K (Windows/Linux).

# Now add some R code to your index.Rmarkdown file and knit


# Many R Markdown output options for HTML documents are not going to be 
# possible here, like tabbed sections, floating table of contents, the 
# code_download button, etc. Also, HTML widgets are a little dicey currently.

# This is a single page. It is made with R Markdown, and happens to be a blog 
# post, although you can use R Markdown to create content for any other 
# content section too.  

# If you want a featured image to accompany your post and show up on your 
# listing page (the clickable list of all your posts), you’ll want to add 
# an image with the word "featured" in the filename:

# Workflow
# 1. Open the RStudio project for the site.
# 2. Start the Hugo server using blogdown::serve_site() (only do this once)
# 3. View site in the RStudio viewer pane and open in a new browser window
#    while working
# 4. Select existing files to edit using the file pane in RStudio
# 5. After making changes, safe as a plain .md file, or if working with an .RMD
#    or an .Rmarkdown document, knit to preview. CMD + Shift + K
# 6. The console will detect the change (it will print Change detected, 
#    rebuilding site.), the viewer pane will update, and (in a few seconds) 
#    your local view in your browser will also refresh. Try to avoid hitting
#    the refresh butting in your browser.
# 7. When happy with changes, add/commit/push changes to GitHub

# Having `blogdown::serve_site` running locally with LiveReload is especially
# useful as you can immediately see if you have totally screwed up. 


# USING GITHUB

# Let's go ahead and push our changes to GitHub. First, let's make a .gitignore
# file
file.edit(".gitignore") 

# Add this content to it
# .Rproj.user
# .Rhistory
# .RData
# .Ruserdata
# .DS_Store
# Thumbs.db

# Let’s use blogdown to check this file before we do our first commit:
blogdown::check_gitignore()

# You have a [TODO] item- go ahead and add public and resources on 
# their own lines in your .gitignore file. We’ll be configuring Netlify 
# to build our site shortly, so go right ahead while the file is open.
# Added them as:
# /public/
# /resources/

# Check to see if it worked
blogdown::check_gitignore()

# While we are at it, let’s check out our content too:
blogdown::check_content()

# Our checks are pretty clean, so you can freely add/commit 
# your project files to GitHub. You now should have the basic 
# mechanics of your site working.

#####
##### STEP 5: PUBLISH SITE
#####

# So far we've only been previewing our site locally, then pushing the 
# source files (but not the built site) to GitHub.
# This workflow works, but we are now going to go one step more advanced
# by using GitHub with Netlify now

# Note that you could use blogdown::build_site(), then publish the public/ 
# folder using Netlify drag & drop. Watch this webinar called “Sharing on 
# Short Notice” to learn more - but this is a less advanced workflow.

# To get started using Netlify for real
# 1. Go online to Netlify
# 2. Click on the sign up button and sign up using your existing
#    GitHub account (no need to creeate another account).
# 3. Log in, and select: 
#    New site from Git > Continuous Deployment: Github
#    Add New site > Import an existing project > GitHub
# 4. From there, Netlify will allow you to select from your existing GitHub
#    repositories.. You'll pick the repo you've been working from with blogdown
#    Leave all settings as they are and select Deploy Site


# When it is done, you can click on the link to your new site! 
# And the most magical thing of all, every time you push any changes
# to your site to GitHub, Netlify will detect the push, re-build
# then update your published site.. It's a good thing. It's called
# continuous deployment, and it is the main reason to use Netlify for a 
# blogdown site.

# With a new site, Netlify will deploy your site and assign you a random 
# subdomain. You can change this by going to Settings and clicking 
# Change site name

# Whether you change your Netlify site name or use the random one, 
# go back to your configuration file and change the baseurl there to match 
# where Netlify is publishing your site:
rstudioapi::navigateToFile("config.yaml", line = 3)

# You actually have most of the necessary wiring laid out for you already in
# your repo, which is why this worked. Our site has a netlify.toml file,
# which sets us the necessary settings for letting Netlify build our site for 
# us and then publish it. You can read more about this file here
# https://www.apreshill.com/post/2019-02-19-hugo-netlify-toml/
# and check it out using:
# if exists, opens; if not, creates new
blogdown::config_netlify()

# Now, back in your local blogdown project, let's check this file with blogdown
blogdown::check_netlify()

# If you end up in a situation where your Hugo versions are different, 
# it's better to "Change HUGO_Version in netlify.toml to match local version

# When you are ready to deploy, commit your changes and push to GitHub! 
# Watch as your site rebuilds

# To get an *.rbind.io URL, follow these instructions:
# https://www.apreshill.com/post/2017-06-12-up-and-running-with-blogdown/#rbindio-domain-names

# Anytime you change your subdomain name, you need to update the baseurl in 
# your config.toml file (so I changed mine to 
# baseurl = “https://apreshill.netlify.com/").

######
###### STEP 6: Sculpt Site
######

# Now we'll leave blogdown and R Markdown behind. We'll just be using Hugo
# and Wowchemy to build your personal websitte

# Let’s start by running another blogdown check to check_hugo():
blogdown::check_hugo()

# All set! We've already checkeed out our Netlify set-up.
# If you wish to clean up your local Hugo installations, check out:
blogdown::remove_hugo()


#### CONFIGURE YOUR SITE
# Time to decorate.

# Open up the file config/_default/params.toml
# Play with any of these configurations you want, but especially
# fonts/themes
rstudioapi::navigateToFile("config/_default/params.toml")

# Note that for me, these were yaml files, so that code doesn't work.
# Had to use this
rstudioapi::navigateToFile("config/_default/params.yaml")

# If you want deeper customization of the styling, you can create a new
# CSS file assets/scss/custom.scss and use it to override any existing styles.
# You can see mine here:
# https://github.com/rbind/apreshill/blob/master/assets/scss/custom.scss

# While you're at it, edit the other configuration files
# You can also view my config.toml file
# https://github.com/rbind/apreshill/blob/master/config.toml


# Let's run a blogdown check on the configuration file before we leave
blogdown::check_config()

# Lett's say goodbye to Nelson Bighetti
# Everything in this single markdown file populates what is called the 
# `about` widget

# Find and open the file
rstudioapi::navigateToFile("content/authors/admin/_index.md")

# Edit the YAML metadata to change:
# 1. The icons and where they link to
# 2. Your current role and organization
# 3. Your interests
# 4. Your education

# The text under the YAML is your bio.; you can use markdown here.
# Add an `avatar.jpg` file too (it must be named this) to the same folder.

### PRUNE WIDGETS
# Remember how we started with thinking about your conttent.
# We are ready to prunt out some of our unwantted widgets
# Recall that on the Academic demo site, the enttire
# home page is filled with widgets! The default example site is the 
# exact same as the demo. It sets almost every available widget to active
# to show you the range of what you could do..

# Deactivating thte widgets you don't need and only activatting the ones you 
# wantt will help you avoid having your home page feel like the scroll of death

# Each widget you see is a `*.md` file in the `content/home/` folder
# The metadata at the top helps you configure each widget;
# namelyu whether it is `active` (true or false) and the widgets `weight`
# (ordering, actual numbers doesn't matter- only relative to other weights)

# For example, to turn off the hero widget, use this code in your console
# and set active = FALSE
rstudioapi::navigateToFile("content/home/hero.md", line = 5, column = 10)


### TRANSPLANT WIDGETS
# If you opted for a more streamlined home page with fewer widgets, you may
# experience widget pruning regret. Many are veery useful, and you may wish
# to use widgets on other pages that are not the home page.

# In this theme, this is possible! Even if you turn off a widget on the home 
# page, you can create whatt is called a widget page and add or even combine
# widgets there. I make heavy use of widget pages in my own site.
# Here aree thte steps (following the docs):
# https://sourcethemes.com/academic/docs/managing-content/#create-a-widget-page

# 1. Createe a new folder in content/; let's call it resume
# 2. Inside content/resume/, add a file named index.md
# 3. Populate content/resume/index.md with a YAML, like this:
# ---
# summary: More about my work experience
# title: "Resume"
# type: widget_page
# ---
# The very critical line here is the type: widget_page—this sets you up to now 
# copy over widgets from content/home/ in this new folder.

# 4. Copy the widget *.md files you'd like to use into this content/resume
#    folder. Edit their metadata (weights, other info), and be sure tot set
#    active = true. For my own resume, I copied the experience and 
#    accomplishments widgets over.

# 5. If you want to access this new widgett page from your top navbar,
#    open up your config/_default/menus.toml and add it there, like:

# [[main]]
# name = "Resume"
# url = "/resume"
# weight = 50

# You can link to any specific widget by ttaking your baseurl and appending
# /#{name-of-widget} 
# so /#slider links to my homepage slider. And /reesume/#accomplishments links
# to my honors and awards

# Let's run one final check, which wraps all 5 checking functions we've
# used so far intto a single final checklist:
blogdown::check_site()

# This is immensely comforting to me; read more about these new checking 
# functions here:
#   https://www.apreshill.com/post/2020-12-27-blogdown-checks/
