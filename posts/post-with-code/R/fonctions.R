#' Diviser un triangle
#'
#' @param triangle 
#'
#' @return une liste de 4 triangles
#' @export
#'
#' @examples
divide_triangle <- function(triangle) {
  A <- triangle[1,]
  B <- triangle[2,]
  C <- triangle[3,]
  
  
  AB <- (A + B) / 2
  AC <- (A + C) / 2
  BC <- (B + C) / 2
  

  triangle1 <- rbind(A, AB, AC)
  triangle2 <- rbind(B, AB, BC)
  triangle3 <- rbind(C, AC, BC)
  triangle4 <- rbind(AB,AC,BC)
  
  return(list(triangle1, triangle2, triangle3, triangle4))
}

#' Divise une liste de triangle
#'
#' @param list_triangle 
#'
#' @return
#' @export
#'
#' @examples
divide_list_triangle <- function(list_triangle) {
  new_list_triangle <- c()
  for (triangle in list_triangle) {
    new_triangles <- divide_triangle(triangle)
    new_list_triangle <- c(new_list_triangle, new_triangles)
  }
  return(new_list_triangle)
}
