#' Calculate Sample Size for Two-Group Comparisons
#'
#' This function calculates the sample size required for a two-group comparison study
#' based on various input scenarios, such as mean differences or effect size (absolute or percentage).
#' The function automatically determines how to calculate the difference (\code{delta}) based on the
#' inputs provided, and it adjusts for dropout if specified.
#'
#' @param mean Numeric. The mean value for a single group (required when using \code{effect_size}).
#' @param effect_size Numeric. The effect size, either in percentage (relative to \code{mean}) or absolute terms.
#' @param is_effect_size_in_perc Logical. Indicates whether \code{effect_size} is in percentage (TRUE) or absolute (FALSE).
#' @param mean1 Numeric. The mean of group 1 (required when using mean difference calculation).
#' @param mean2 Numeric. The mean of group 2 (required when using mean difference calculation).
#' @param sd Numeric. The standard deviation of the data (required). This is assumed to be the same for both groups.
#' @param dropout_ratio Numeric. The expected proportion of participants to drop out (default is 0, no dropout).
#' @param alpha Numeric. The significance level for the hypothesis test (default is 0.05 for a 95% confidence level).
#' @param power Numeric. The desired power for the hypothesis test (default is 0.8, corresponding to 80% power).
#'
#' @return Numeric. The required sample size per group, adjusted for dropout.
#'
#' @details
#' The function determines how to calculate the difference (\code{delta}) based on the following conditions:
#' - If \code{mean1} and \code{mean2} are provided, \code{delta} is calculated as \code{abs(mean1 - mean2)}.
#' - If \code{mean}, \code{effect_size}, and \code{is_effect_size_in_perc} are provided:
#'   - If \code{is_effect_size_in_perc = TRUE}, \code{delta} is calculated as \code{mean * effect_size / 100}.
#'   - If \code{is_effect_size_in_perc = FALSE}, \code{delta} is directly equal to \code{effect_size}.
#'
#' The formula used for sample size calculation per group is:
#' \deqn{n = \frac{2 (Z_{\alpha/2} + Z_{1-\beta})^2 \cdot SD^2}{\delta^2}}
#' Adjustments for dropout are applied as:
#' \deqn{n_{\text{adjusted}} = n / (1 - \text{dropout\_ratio})}
#'
#' @examples
#' # Using mean1 and mean2
#' calculate_sample_size(mean1 = 5, mean2 = 3, sd = 2, dropout_ratio = 0.1)
#'
#' # Using mean and effect size in percentage
#' calculate_sample_size(mean = 5, effect_size = 20, sd = 2,
#'                       is_effect_size_in_perc = TRUE, dropout_ratio = 0.1)
#'
#' # Using mean and absolute effect size
#' calculate_sample_size(mean = 5, effect_size = 1, sd = 2,
#'                       is_effect_size_in_perc = FALSE, dropout_ratio = 0.1)
#'
#' @export

calculate_sample_size <- function(mean = NULL,
                                  effect_size = NULL,
                                  is_effect_size_in_perc = NULL,
                                  mean1 = NULL,
                                  mean2 = NULL,
                                  sd,
                                  dropout_ratio = 0,
                                  alpha = 0.05,
                                  power = 0.8) {
  # Check required package
  if (!requireNamespace("usethis", quietly = TRUE)) {
    stop("The 'usethis' package is required. Please install it using install.packages('usethis').")
  }

  # Decide how to calculate delta based on provided inputs
  if (!is.null(effect_size) && !is.null(is_effect_size_in_perc)) {
      if (!is.null(mean) && is_effect_size_in_perc) {
        delta <- mean * effect_size / 100
        usethis::ui_info("Assuming effect size is provided in percentage")
        usethis::ui_info("Using mean and effect size to calculate delta: {delta}")
      } else if (!is_effect_size_in_perc) {
        delta <- effect_size
        usethis::ui_info("Assuming effect size is provided in absolute terms, and using it to calculate delta: {delta}")
      } else {
        stop("Insufficient inputs to calculate delta. Provide either (mean1 and mean2) or (mean, effect_size, and is_effect_size_in_perc) as arguments to the function.")
      }
  } else if (!is.null(mean1) && !is.null(mean2)) {
    delta <- abs(mean1 - mean2)
    usethis::ui_info("Using the difference between mean1 and mean2 to calculate delta: {delta}")
  } else {
    stop("Insufficient inputs to calculate delta. Provide either (mean1 and mean2) or (mean, effect_size, and is_effect_size_in_perc) as arguments to the function.")
  }

  # Calculate Z-scores for alpha and power
  z_alpha <- qnorm(1 - alpha / 2) # Two-tailed test
  z_beta  <- qnorm(power)         # Power

  # Formula for sample size per group
  n <- 2 * (z_alpha + z_beta)^2 * (sd^2) / (delta^2)

  # Adjust for dropout
  n_adjusted <- n / (1 - dropout_ratio)

  # Round up to ensure sufficient sample size
  n_final <- ceiling(n_adjusted)

  # Return final sample size
  usethis::ui_info("The final sample size per group, accounting for dropout, is: {n_final}")
  return(n_final)
}
