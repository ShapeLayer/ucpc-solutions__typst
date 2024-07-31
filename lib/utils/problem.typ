#import "/lib/i18n.typ": en-us
#import "/lib/colors.typ": color
#import "/lib/utils/make-prob-meta.typ": make-prob-meta

#let problem(
  id: none,
  title: none,
  tags: (),
  difficulty: none,
  authors: (),
  stat_open: (
    submit_count: -1,
    ac_count: -1,
    ac_ratio: -1,
    first_solver: none,
    first_solve_time: -1,
  ),
  stat_onsite: none,
  pallete: (
    primary: color.bluegray.at(2),
    secondary_color: white,
  ),
  i18n: en-us.make-prob-meta,
  body
) = {
  set page(margin: (top: 3em))
  set text(size: 20pt)
  [= #text(fill: pallete.primary, size: 1.35em)[#id. #title]]
  [\ ]
  make-prob-meta(
    tags: tags,
    difficulty: difficulty,
    authors: authors,
    stat_open: stat_open,
    stat_onsite: stat_onsite,
    i18n: i18n
  )
  set page(
    header: text(
      size: .8em
    )[
      #text(fill: pallete.primary)[
        #text(weight: "bold")[#id\.] #title
      ]
    ]
  )
  set align(horizon)
  set list(marker: [»])
  body
}
