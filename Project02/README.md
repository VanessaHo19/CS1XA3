# CS 1XA3 Project02 - hov19
## Overview
This webpage is Vanessa Ho's custom CV which was made using various HTML, javascript, and CSS files. The website includes a nav bar that allows for easy scrolling to a specified section, such as work/experience, skills, projects, and also a contact section.
The webpage is accessible through any internet browser using the url: https://mac1xa3.ca/u/hov19
## Custom Javascript Code
Description: this feature allows the nav bar (that was included in the template) to stay on the top of the screen, even when scrolling enough so that it should go off the screen. This makes it more convenient for the user to access the different sections of the page easier. If the nav bar was only accessible from the top of the page, once it scrolls off the page there is no use for it anymore. All of my personal javascript code is included in the stickyscroll.js file within the ~/js folder.
## HTML/CSS Custom Code Changes
Changes were also made to the HTML file as well as the CSS files included from the original template. In the HTML file, I changed the parts of the template that was filled with general words and information, and made it customized to my own resume. I also added new things such as the RESUME button included at the end of the site (contact section). I omitted some parts of the original template which included functions such as sending messages.
Additionally, I made changes to many of the links that were in the site, and allowed them to link to some other useful sites, such as displaying my past projects. I was also able to change the links to open in a new tab, which would be useful to have, so the user would still be able to see my site while looking at the embedded link.
In the CSS files, I made very minor changes such as changing colours, as well as creating new style sections for new parts of the HTML code I added. I also added some CSS styling for the Custom Javascript Code, and allowing the nav bar to appear as the front element, so that it would never be covered by other elements while scrolling. (this section was included in the header section of the style.css file; the .sticky and .sticky + .header sections).
## References
- The html document used the following HTML, CSS, and javascript Template from w3layouts
https://w3layouts.com/resume-onepage-portfolio-flat-bootstrap-responsive-web-template/
- The following snippets of javascript code were altered from [w3schools how to make sticky header](https://www.w3schools.com/howto/howto_js_sticky_header.asp). All code from the stickyscroll.js file was modified from this code.
- The other files within the ~/js folder was left unchanged from when given in the downloaded template.
- The changes made to the CSS file to make the nav bar appear in front of all other elements was taken from [How to Make Div Appear in Front of the Other](https://stackoverflow.com/questions/5480639/how-to-make-div-appear-in-front-of-another/5480656) regarding using the z-index
- The changes made to the HTML file regarding opening files in new tabs required help from [w3schools Link in New Tab](https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_link_target)
- All images were either taken personally, or were given already in the template, with the exception of the [mail icon](https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepnglogos.com%2Fpics%2Femail&psig=AOvVaw064jD95-iMFfPzhbvnvmTq&ust=1584402500039000&source=images&cd=vfe&ved=0CA0QjhxqFwoTCOjS77TVnegCFQAAAAAdAAAAABBu)
- Allowing the RESUME button to be linked to a pdf of my formal resume and opening it in a new tab was made possible by taking code from [Create an HTML button that Clicks a link](https://www.w3docs.com/snippets/html/how-to-create-an-html-button-that-acts-like-a-link.html)
