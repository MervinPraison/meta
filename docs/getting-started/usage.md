# Usage

## Meta Box

Edit any post/page and find "Meta Data" meta box. Add your content there.

## Shortcode

```
[metacontent]
```

## PHP Function

```php
<?php if (function_exists('getmetacontent')) getmetacontent(); ?>
```

With post ID:
```php
<?php getmetacontent($post->ID); ?>
```
