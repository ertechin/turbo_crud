# Turbo Drive in Ruby on Rails

## Overview:
Turbo Drive speeds up Ruby on Rails applications by converting link clicks and form submissions into AJAX requests, turning the application into a single-page application by default.

With Turbo Drive, Ruby on Rails applications are fast by default. When Turbo Drive intercepts a link click or a form submission, only the body of the HTML page is replaced with the response to the AJAX request. In most cases, the head of the current HTML page remains unchanged, resulting in improved performance as requests to download fonts, CSS, and JavaScript files are only made once when the website is first accessed.

## Rules:
### Frame Replacement Rule:
- When clicking a link within a Turbo Frame, Turbo expects a frame with the same id on the target page. The content of the source frame will be replaced by the content of the target frame.

### Targeting Frames Rule:
- Links can target frames other than the one they are directly nested in using the `data-turbo-frame` attribute.
- Turbo Frame targeting is achieved by specifying the desired frame's id in the `data-turbo-frame` attribute. The frame with the same id on the source page will be replaced by the frame with the same id on the target page.
  - Note: The special frame `_top` represents the whole page. Using `data-turbo-frame="_top"` replaces the entire page, changing its URL to the target page's URL.

### Error Handling Rule:
- If the target page does not have a Turbo Frame with the same ID, the frame disappears and is replaced with a content-missing error


## Turbo Stream Helpers:
- Removing Frames: `turbo_stream.remove`
- Inserting Frames:
  - At the Beginning: `turbo_stream.prepend`
  - At the End: `turbo_stream.append`
- Inserting Frames Before/After Another Frame:
  - Before: `turbo_stream.before`
  - After: `turbo_stream.after`
- Replacing or Updating Frame Content:
  - Updating: `turbo_stream.update`
  - Replacing: `turbo_stream.replace`
  - Note: Except for the `remove` method, all other `turbo_stream` helpers expect a `partial` and `locals` as arguments to specify which HTML to manipulate from the DOM.

 ##### Source [Hotrails](https://www.hotrails.dev/turbo-rails)
