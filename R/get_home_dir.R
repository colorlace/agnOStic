#' GET_HOME_DIR
#' 
#' This funtion returns the home directory of your file system regardless of what operating system you're using. 
#' @keywords file
#' @return the home directory string of your file system 
#' @export
#' @examples 
#' get_home_dir()

get_home_dir <- function(){
  if (Sys.info()['sysname'] == 'Windows'){
    home_dir <- paste0(Sys.getenv("USERPROFILE"),'/')
  }
  else {
    home_dir <- "~/"
  }
  return(home_dir)
}