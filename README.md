# Meta Content - WordPress Plugin

[![WordPress Plugin Version](https://img.shields.io/badge/version-1.1-blue.svg)](https://wordpress.org/plugins/meta/)
[![WordPress Tested](https://img.shields.io/badge/WordPress-6.8-green.svg)](https://wordpress.org/)
[![License](https://img.shields.io/badge/license-GPLv2%20or%20later-orange.svg)](https://www.gnu.org/licenses/gpl-2.0.html)

A powerful meta box plugin that allows you to add custom content or scripts to any part of your website for each individual post or page.

## 🌟 Features

- ✅ **Easy Meta Box** - Appears on all posts and pages admin area
- ✅ **Flexible Content** - Add text, HTML, or scripts
- ✅ **Simple Shortcode** - `[metacontent]` for easy implementation
- ✅ **PHP Function** - `getmetacontent()` for theme integration
- ✅ **Loop & Non-Loop** - Works inside and outside the WordPress loop
- ✅ **Per Post/Page** - Different content for each post or page
- ✅ **Secure** - Nonce verification and input sanitization
- ✅ **WordPress 6.8 Compatible** - Fully tested and updated

## 📦 Installation

### From WordPress.org

1. Go to **Plugins → Add New**
2. Search for "Meta Content"
3. Click **Install Now** and then **Activate**

### Manual Installation

1. Download the plugin zip file
2. Extract the contents
3. Upload the `meta` folder to `/wp-content/plugins/`
4. Activate the plugin through the **Plugins** menu in WordPress

### From GitHub

```bash
cd wp-content/plugins/
git clone https://github.com/MervinPraison/meta.git
```

## 🚀 Usage

### Step 1: Add Content to Meta Box

1. Edit any post or page
2. Scroll down to the **Meta Data** meta box
3. Enter your custom content (text, HTML, or scripts)
4. Save/Update the post

### Step 2: Display the Content

#### Using Shortcode

Add this shortcode anywhere in your post/page content:

```
[metacontent]
```

#### Using PHP Function (Inside the Loop)

Add this to your theme template:

```php
<?php if ( function_exists('getmetacontent') ) getmetacontent(); ?>
```

#### Using PHP Function (Outside the Loop)

Specify the post ID:

```php
<?php if ( function_exists('getmetacontent') ) getmetacontent($post_id); ?>
```

## 💡 Use Cases

### 1. Custom Scripts Per Page

Add tracking codes, analytics, or custom JavaScript to specific pages:

```html
<script>
  // Page-specific tracking code
  gtag('event', 'page_view', {
    'page_title': 'Custom Page'
  });
</script>
```

### 2. Custom HTML Sections

Add unique HTML content to individual posts:

```html
<div class="custom-callout">
  <h3>Special Offer!</h3>
  <p>This offer is only available on this page.</p>
</div>
```

### 3. Embedded Content

Add iframes, videos, or other embedded content:

```html
<iframe src="https://example.com/embed" width="100%" height="400"></iframe>
```

### 4. Custom CSS

Add page-specific styling:

```html
<style>
  .custom-section {
    background: #f5f5f5;
    padding: 20px;
  }
</style>
```

## 📋 Requirements

- **WordPress:** 3.0 or higher
- **PHP:** 5.6 or higher (7.4+ recommended)
- **MySQL:** 5.0 or higher

## 🔒 Security Features

### Version 1.1 Security Fixes

- ✅ Fixed SQL injection vulnerability with `wpdb->prepare()`
- ✅ Added nonce verification for form submissions
- ✅ Proper input sanitization with `wp_kses_post()`
- ✅ Output escaping with `esc_textarea()`
- ✅ Sanitized `$_GET` and `$_REQUEST` variables
- ✅ Removed deprecated `PLUGINDIR` constant

## 📝 Changelog

### Version 1.1 (2025-01-08)

**Security Fixes:**
- Fixed SQL injection vulnerability with `wpdb->prepare()`
- Added nonce verification for form submissions
- Proper input sanitization with `wp_kses_post()`
- Output escaping with `esc_textarea()`
- Sanitized `$_GET` and `$_REQUEST` variables

**Improvements:**
- Added version number to enqueued scripts
- Updated text domain to 'meta-content-types'
- WordPress 6.8 compatibility tested
- Removed deprecated `PLUGINDIR` constant
- Updated license to GPLv2 or later
- Plugin name changed to 'Meta Content' for clarity

### Version 1.0
- Initial release

## 🎨 Customization

### Meta Box Location

The meta box appears in the normal position with high priority. You can modify its location by editing the plugin file:

```php
add_meta_box(
    'metacontent_types',
    __( 'Meta Data ( Either Text or Scripts )', 'meta-content-types' ),
    array( &$this, 'meta_box' ),
    'post',
    'normal',  // Position: 'normal', 'side', 'advanced'
    'high'     // Priority: 'high', 'low', 'default'
);
```

### Allowed HTML Tags

The plugin uses `wp_kses_post()` which allows the following safe HTML tags:

- All standard HTML tags (div, span, p, a, etc.)
- Script tags (sanitized)
- Style tags (sanitized)
- Iframe tags (sanitized)

## 🐛 Bug Reports & Feature Requests

Found a bug or have a feature request?

- **GitHub Issues:** [Report here](https://github.com/MervinPraison/meta/issues)
- **WordPress.org Support:** [Support Forum](https://wordpress.org/support/plugin/meta/)

## 👨‍💻 Development

### Repository Structure

```
meta/
├── meta.php              # Main plugin file
├── readme.txt            # WordPress.org readme
├── README.md             # This file
├── screenshot-1.png      # Meta box screenshot
└── js/
    └── script.js         # Admin JavaScript
```

### Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## ⚠️ Important Notes

### Content Sanitization

- The plugin uses `wp_kses_post()` to sanitize input
- This allows safe HTML and scripts while preventing malicious code
- Content is stored in post meta as `_meta-content-types`

### Uninstallation

When you uninstall the plugin, all meta data will be removed from your posts. Make sure to backup your content if needed.

## 📄 License

This plugin is licensed under the GPLv2 or later.

```
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.
```

## 👤 Author

**Mervin Praison**
- Website: [mer.vin](https://mer.vin)
- GitHub: [@MervinPraison](https://github.com/MervinPraison)
- WordPress.org: [mervinpraison](https://profiles.wordpress.org/mervinpraison/)

## 🔗 Links

- **WordPress.org:** https://wordpress.org/plugins/meta/
- **GitHub Repository:** https://github.com/MervinPraison/meta
- **Support Forum:** https://wordpress.org/support/plugin/meta/
- **Documentation:** https://mer.vin/meta
- **Author Website:** https://mer.vin

## ⭐ Support

If you find this plugin useful, please consider:

- ⭐ [Leaving a review](https://wordpress.org/support/plugin/meta/reviews/)
- 🐛 [Reporting bugs](https://github.com/MervinPraison/meta/issues)
- 💡 [Suggesting features](https://github.com/MervinPraison/meta/issues)
- 💰 [Making a donation](https://mer.vin)

## 📸 Screenshots

![Meta Box Interface](screenshot-1.png)
*The meta box appears on post and page edit screens*

---

## 📅 Plugin History

**Original Release Date:** March 9, 2012  
**First Published:** WordPress.org Plugin Directory  
**Total Years Active:** 12+ years

---

**Made with ❤️ for the WordPress community**
