<#
Amazon Comprehend is an AWS service for gaining insight into the content of documents. 
Reference: https://docs.aws.amazon.com/cli/latest/reference/comprehend
#>
exit #PREVENT F5
aws comprehend help

aws comprehend detect-sentiment --text 'I love it!' --language-code en
aws comprehend detect-sentiment --text 'I hate it!' --language-code en
