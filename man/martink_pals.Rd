\name{martink_pals}
\alias{martink_pals}
\docType{data}
\title{Martin K's Color Palettes
}
\description{
A list of 4 different color blind-friendly palettes of length 8, 12, 15, and 48.
For further details, please see the references.
}
\usage{data("martink_pals")}
\format{
  The format is:
List of 4
 $ martink8 : chr [1:8] "#2271B2" "#359B73" "#E69F00" "#3DB7E9" ...
 $ martink12: chr [1:12] "#9F0162" "#009f81" "#FF5AAF" "#00FCCF" ...
 $ martink15: chr [1:15] "#68023F" "#008169" "#EF0096" "#00DCB5" ...
 $ martink48: chr [1:48] "#560133" "#003D30" "#450270" "#00306F" ...
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
http://mkweb.bcgsc.ca/colorblind/index.mhtml#page-container
}
\references{
Krzywinski, M. Designing for Color Blindess - Martin Krzywinski / Genome Sciences Center. http://mkweb.bcgsc.ca/colorblind/index.mhtml#page-container
}
\examples{
data(martink_pals)
## maybe str(martink_pals) ; plot(martink_pals) ...
}
\keyword{datasets}
