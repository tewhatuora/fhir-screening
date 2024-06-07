## Process for producing HTML DocumentReference content for example instances

1. Create source from markdown - see files `exampledocument-fullreport.md`, `exampledocument-participantonly.md`
2. Render markdown as HTML by publishing the IG
3. Get the HTML source by browser - view source
4. Create an HTML file
5. Base64-encode the HTML content (see below)
6. Paste into FSH example instance definition.

## Obtaining PDF DocumentReference example content

Several ways have been tried to produce a PDF without success -- all produced base64 content in excess of 400KB which is DynamoDb's limit in FHIRWorks:
- Exporting a PDF from figma
- Exporting a PDF from the browser HTML using Mac OS Print - save to PDF
- Exporting a PDF formed from the image of the screening summary

Therefore, PDF sample content is not demonstrated in the present example instances in this IG.

## Generating base64-encoded content for a FHIR instance from a file (mac OS)

```sh
# base64 encode to file
$ base64 -i {inputfile.html|.pdf} -o {outputfile}


# base64 encode to clipboard for pasting into code
$ base64 -i {inputfile.html|pdf} -o - | pbcopy

```