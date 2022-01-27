---
active: false
# An instance of the Blank widget.
# Documentation: https://wowchemy.com/docs/page-builder/
widget: blank

# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 1

# Section title
title: Hello

# Section subtitle
subtitle:

# Section design
# design:
#   # Use a 2-column layout
#   columns: "2"
#   # Use a dark navy background with light text.
#   background:
#     color: 'navy'
#     text_color_light: true
    
# design:
#   columns: '1'  # 1 or 2 column layout
#   # view: compact  # For new versions since v5.5+, write the view name
#   view: 2  # For older versions prior to v5.5, use the numeric IDs above
#   flip_alt_rows: true # Flip alternate rows when in Showcase view?    
#

# Color Background
# design:
#   background:
#     color: 'navy'
#     # Text color (true=light, false=dark, or remove for the dynamic theme color). 
#     text_color_light: true    

# Gradient Background
# design:
#   background:
#     gradient_start: '#4bb4e3'
#     gradient_end: '#2b94c3'
#     gradient_angle: 180
#     # Text color (true=light, false=dark, or remove for the dynamic theme color).
#     text_color_light: true

# Image Background
design:
  background:
    # Name of image in `assets/media/`.
    image: contact.jpg
    # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.
    image_darken: 0.6
    #  Options are `cover` (default), `contain`, or `actual` size.
    image_size: cover
    # Options include `left`, `center` (default), or `right`.
    image_position: center
    # Use a fun parallax-like fixed background effect on desktop? true/false
    image_parallax: true
    # Text color (true=light, false=dark, or remove for the dynamic theme color).
    text_color_light: true
    # Spacing
    spacing:
    # Customize the section spacing. Order is top, right, bottom, left.
    padding: ["20px", "0", "20px", "0"]
    
---
Add any content to the body of the section here.more content here
and mother content and more
then more. and test heere

For example, to make a section more compact, the following parameters can be added to the front matter of a section. This example will reduce the top and bottom spacing of the section to just 20 pixels (px).

You'll understand this linking to a figure later, but try it out.
<br>
[A Figure](#figure-wowchemy)

- First item
- A sub-item - Another item

- [x] Write math example
- [x] Write diagram example
- [ ] Do something else

I have more [^1] to say.

{{< spoiler text="Click to view the spoiler" >}} You found me!
{{< /spoiler >}}

[I'm an external link](https://www.google.com)
<br>
[I'm a post]({{< relref "/post/_index.md" >}})
<br>
[A relative link from one post to another post]({{< relref "../tutorial/_index.md" >}})

[Scroll down to a page section with heading *Hi*](#hi)
<br>
<br>
<br>
<br>

## Hi
and more text

{{% staticref "uploads/resume.pdf" "newtab" %}}Download my CV{{% /staticref %}}

{{< toc >}}

## This now shows up
## In the table of contents

This is how you cross-reference a figure. It will look for this in the assets 
{{< figure src="image.jpg" id="wowchemy" >}}.




[^1]: Here's where my footnote goes.