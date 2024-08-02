#import "/lib/lib.typ" as ucpc
#import ucpc: color

#set page(
  columns: 10,
  margin: (x: 5pt, y: 5pt),
)

#set align(center + horizon)
#for color in (
  color.brown.at(0),
  color.brown.at(1),
  color.brown.at(2),
  color.brown.at(3),
  color.brown.at(4),
  
  color.bluegray.at(0),
  color.bluegray.at(1),
  color.bluegray.at(2),
  color.bluegray.at(3),
  color.bluegray.at(4),
  
  color.yellow.at(0),
  color.yellow.at(1),
  color.yellow.at(2),
  color.yellow.at(3),
  color.yellow.at(4),
  
  color.cyan.at(0),
  color.cyan.at(1),
  color.cyan.at(2),
  color.cyan.at(3),
  color.cyan.at(4),
  
  color.skyblue.at(0),
  color.skyblue.at(1),
  color.skyblue.at(2),
  color.skyblue.at(3),
  color.skyblue.at(4),

  color.bronze.V,
  color.bronze.IV,
  color.bronze.III,
  color.bronze.II,
  color.bronze.I,
  
  color.silver.V,
  color.silver.IV,
  color.silver.III,
  color.silver.II,
  color.silver.I,
  
  color.gold.V,
  color.gold.IV,
  color.gold.III,
  color.gold.II,
  color.gold.I,
  
  color.platinum.V,
  color.platinum.IV,
  color.platinum.III,
  color.platinum.II,
  color.platinum.I,
  
  color.bronze.V,
  color.bronze.IV,
  color.bronze.III,
  color.bronze.II,
  color.bronze.I,
  
  color.diamond.V,
  color.diamond.IV,
  color.diamond.III,
  color.diamond.II,
  color.diamond.I,
  
  color.ruby.V,
  color.ruby.IV,
  color.ruby.III,
  color.ruby.II,
  color.ruby.I,
  
  color.misc.unrated,
  color.misc.ghudegy,
) {
  rect(
    width: 50pt,
    height: 50pt,
    fill: color,
    stroke: none,
    radius: (: ),
    inset: (: ),
    outset: (: ),
  )
}
