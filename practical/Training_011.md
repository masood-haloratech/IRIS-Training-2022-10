# Tutorial 11

```
library('tidyverse')
library('whisker')
library('stringr')



template <-'
  <!doctype html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Case Summary</title>
    <style>

      *{
        padding: 0;
        margin: 0;
      }  
    

      html { font-size: 90%; padding: 0px; }
      .header-table { width: 100%; border: 0px; width: 100%; margin: 0px;}
      .header-table tr td { border: 0px; margin: 0px; padding: 5px 0px 5px 0px; }
      .version { font-size: 80%; text-align: right; color: #000000; }
      
      img.v_logo { height: 65px; }
    
      hr { padding: 0px; margin: 30px 0px; border: 0px; border-bottom: solid 1px #0047b1;}
      
      img.v_logo { height: 65px; }
      
      table.subform { width: 60%; margin: auto; }
      table.subform tr td { color: #000; padding: 12px; }
      table.subform tr td.field { padding-left: 5px; font-weight: bold; vertical-align: top; }      
      table.subform tr td.value { padding-left: 5px; vertical-align: top; font-style: Italic }
      
    </style>
  </head>
  <body>
    <div class="container">
    
      <table class="header-table" style="margin-top:20px;">
        <tr>
          <td><img src="{{img_logo}}" class="v_logo" height="50px" alt="logo"/></td>
          <td>
            <h2>COVID-19 Case Summary</h2>
          </td>
          <td class="version">Version: {{version}}</td>
        </tr>
      </table>

      <table class="subform">
        <tr>
          <td class="field f-w-20">Case Number</td>
          <td class="value f-w-30">{{case_num}}</td>
        </tr>
        <tr>
          <td class="field f-w-20">Date of Report</td>
          <td class="value f-w-30">{{case_report_date}}</td>        
        </tr>

        <tr>
          <td class="field">Sex</td>
          <td class="value">{{case_sex}}</td>
        </tr>
        <tr>
          <td class="field">Age Group</td>
          <td class="value">{{case_age_group}}</td>
        </tr>
      </table>

    </div>
  </body>
  </html>
'

template.version <- '1.0.0'

tValues <- list(
  case_num = 1,
  case_report_date = '2020-10-20',
  case_sex = 'Female',
  case_age_group = '40 to 49',
  version = template.version,
  img_logo = params$logo_path
)

output.html <- 'case_summary.html'
files <- c(output.html)
sink(output.html)
cat(whisker.render(template, tValues))
sink()

return (files)
```