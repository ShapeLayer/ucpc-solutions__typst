#import "/lib/i18n.typ": en-us

#let __make-answer-stat(stat, i18n) = {
  let keys = stat.keys()
  let builder = ()
  if "submit_count" in keys {
    builder.push(i18n.submitted_prefix + str(stat.submit_count) + i18n.submitted_postfix)
  }
  if "ac_count" in keys {
    builder.push(i18n.passed_prefix + str(stat.ac_count) + i18n.passed_postfix)
  }
  if "ac_ratio" in keys {
    builder.push(i18n.ac_ratio_prefix + str(stat.ac_ratio) + i18n.ac_ratio_postfix)
  }
  if builder.len() == 3 [
    - #builder.at(0)\, #builder.at(1)\
      #builder.at(2)
  ] else if builder.len() > 0 [
    - #builder.join(", ")
  ]

  builder = ()
  if "first_solver" in keys {
    builder.push(i18n.first_solver_prefix + stat.first_solver + i18n.first_solver_postfix)
  }
  if "first_solve_time" in keys {
    builder.push(i18n.first_solved_at_prefix + str(stat.first_solve_time) + i18n.first_solved_at_postfix)
  }
  if builder.len() > 0 [
    - #builder.join(", ")
  ]
}

#let make-prob-meta(
  tags: (),
  difficulty: none,
  authors: (),
  stat_open: (
    submit_count: -1,
    ac_count: -1,
    ac_ratio: -1,
    first_solver: "",
    first_solve_time: -1,
  ),
  stat_onsite: none,
  i18n: en-us.make-prob-meta
) = [
  // Tags
  #text(size: .8em)[#tags.map(each => raw("#" + each)).join(", ") \ ]

  #i18n.difficulty_prefix#difficulty#i18n.difficulty_postfix

  #align(horizon)[
    #if type(authors) == array [
      #if authors.len() == 1 [
        - #i18n.author: #authors.at(0)
      ] else [
        - #i18n.authors: #authors.join(", ")
      ]
    ] else if (type(authors) == content) or (type(authors) == str) [
      - #i18n.author: #authors
    ]
    
    
    #if stat_onsite == none {
      __make-answer-stat(stat_open, i18n)
     } else [
      #table(
        columns: (1fr, 1fr),
        stroke: none,
        inset: (x: 0pt),
        [
          - #i18n.online_open_contest
            #__make-answer-stat(stat_open, i18n)
        ], [
          - #i18n.offline_onsite_contest
            #__make-answer-stat(stat_onsite, i18n)
        ]
      )
    ]
      
  ]
]
