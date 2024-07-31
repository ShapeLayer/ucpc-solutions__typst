#import "/lib/lib.typ" as ucpc
#import ucpc: i18n

#let base = i18n.en-us
#let base__make-prob-meta-keys = base.make-prob-meta.keys()
#let base__make-prob-overview-keys = base.make-prob-overview.keys()

#for (locale, content) in (
  // Insert locales here
  ("en-us", i18n.en-us),
  ("ko-kr", i18n.ko-kr)
) {
  assert(
    base__make-prob-meta-keys == content.make-prob-meta.keys(),
    message: "The content of locale " + locale + " is incomplete.",
  )
  assert(
    base__make-prob-overview-keys == content.make-prob-overview.keys(),
    message: "The content of locale " + locale + " is incomplete.",
  )
}
