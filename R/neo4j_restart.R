#' Restart a local Neo4J database
#'
#' @param neo4j_path Path to the Neo4J executable (usually in the bin directory of the Neo4J installation)
#'
#' @return System messages
#'
#' @examples
#' # if neo4j exists, restart local graph with neo4j executable in the system PATH variable
#' if (nzchar(Sys.which("neo4j"))) {
#'   neo4j_restart()
#' }


neo4j_restart <- function(neo4j_path = "neo4j") {
  sys::exec_wait(neo4j_path, "restart")
}
