library(pliman)

potato_leaf <- "C:/Users/00090473/RWD"

potato <- image_import("potato.jpeg", path = potato_leaf)


pot_meas <-
  analyze_objects(potato,
                  watershed = FALSE,
                  marker = "id",
                  show_chull = TRUE) # shows the convex hull



print(pot_meas$results)


write.csv(pot_meas$results, file = "leaf info.csv", row.names = FALSE)

#See WD
