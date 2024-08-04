#import "/lib/lib.typ" as ucpc
#import ucpc: i18n

#let base = i18n.en-us
#let base__make-prob-meta-keys = base.make-prob-meta.keys()
#let base__make-prob-overview-keys = base.make-prob-overview.keys()
#let base__make-problem-keys = base.make-problem.keys()
#let base__problem-keys = base.make-problem.keys()

#assert(base__make-problem-keys == base__problem-keys)

#assert(base__make-prob-meta-keys == base.make-problem.make-prob-meta.keys())

#for (locale, content) in (i18n.supports) {
  let message = "The content of locale " + locale + " is incomplete."
  assert(
    base__make-prob-meta-keys == content.make-prob-meta.keys(),
    message: message,
  )
  assert(
    base__make-prob-overview-keys == content.make-prob-overview.keys(),
    message: message,
  )
  assert(
    base__make-problem-keys == content.make-problem.keys(),
    message: message
  )
  assert(
    base__problem-keys == content.problem.keys(),
    message: message
  )

  assert(
    base__make-prob-meta-keys == content.make-problem.make-prob-meta.keys(),
    message: message
  )
}
