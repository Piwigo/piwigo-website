# How to add FAQ items

The pricing FAQ is driven by 3 parts:

1. `data/faq.js` contains the raw FAQ list as an array of objects with `id`, `question`, and `answer`.
2. `include/pricing.inc.php` reads that file, decodes the array, and assigns it to Smarty as `$faqs`.
3. `template/pricing.tpl` loops over `$faqs` with `{foreach}`.

## Adding a new FAQ

1. Add a new object in `data/faq.js`.
2. Give it a unique `id`.
3. Use the exact same `question` and `answer` text as keys in `language/en_UK/faq.lang.php`.

Example:

```js
{
  "id": 13,
  "question": "Your question here",
  "answer": "Your answer here"
}
```

## Notes

- `data/faq.js` is only the content source.
- `faq.lang.php` is the translation source.
