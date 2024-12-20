% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/case.R
\name{case}
\alias{case}
\alias{str_to_upper}
\alias{str_to_lower}
\alias{str_to_title}
\alias{str_to_sentence}
\alias{str_to_pascal}
\alias{StrToPascal}
\alias{str_to_camel}
\alias{strToCamel}
\alias{str_to_snake}
\alias{str_to_kebab}
\title{Convert string to upper case, lower case, title case, sentence case, pascal
case, camel case, kebab case, or snake case}
\usage{
str_to_upper(string, locale = "en")

str_to_lower(string, locale = "en")

str_to_title(string, locale = "en")

str_to_sentence(string, locale = "en")

str_to_pascal(string, locale = "en")

StrToPascal(string, locale = "en")

str_to_camel(string, locale = "en")

strToCamel(string, locale = "en")

str_to_snake(string, separator = "_", locale = "en")

str_to_kebab(string, locale = "en")
}
\arguments{
\item{string}{Input vector. Either a character vector, or something
coercible to one.}

\item{locale}{Locale to use for comparisons. See
\code{\link[stringi:stri_locale_list]{stringi::stri_locale_list()}} for all possible options.
Defaults to "en" (English) to ensure that default behaviour is
consistent across platforms.}

\item{separator}{string. For snake case, can change the \verb{_}}
}
\value{
A character vector the same length as \code{string}.
}
\description{
\itemize{
\item \code{str_to_upper()} converts to upper case.
\item \code{str_to_lower()} converts to lower case.
\item \code{str_to_title()} converts to title case, where only the first letter of
each word is capitalized.
\item \code{str_to_sentence()} convert to sentence case, where only the first letter
of sentence is capitalized.
\item \code{str_to_pascal()} converts to pascal case, where only the first letter of
each word is capitalized, with no separation between
words.
\item \code{str_to_pascal()} and \code{StrToPascal()} are synonyms
\item \code{str_to_camel()} converts to camel case, where only the first letter of
each word after the first word is capitalized, with no separation between
words.
\item \code{str_to_camel()} and \code{strToCamel()} are synonyms
\item \code{str_to_kebab()} converts to kebab case, where words are converted to
lower case and separated by dashes (\code{-}).
\item \code{str_to_snake()} converts to snake case, where words are converted to
lower case and separated by underscores (\verb{_}).
}
}
\examples{
dog <- "The quick brown dog"
str_to_upper(dog)
str_to_lower(dog)
str_to_title(dog)
str_to_sentence("the quick brown dog")
str_to_pascal(dog)
StrToPascal(dog)
str_to_camel(dog)
strToCamel(dog)
str_to_kebab(dog)
str_to_snake(dog)

# Locale matters!
str_to_upper("i") # English
str_to_upper("i", "tr") # Turkish
}
