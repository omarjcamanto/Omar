.onAttach <- function(libname, pkgname) {
  message <- c("\n Welcome to Omar's Sandbox!",
               "\n \n Happy coding!")
  packageStartupMessage(message)
}
