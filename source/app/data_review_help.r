# help file
# save as data_review_help.r

fluidRow(style="width:85%",
         column(width = 12,
                # collapsable panel
                shiny::tags$div(class="panel panel-default",
                                shiny::tags$div(class="panel-heading",
                                                shiny::tags$h3(class="panel-title text-left text-success", 
                                                               HTML('<a data-toggle="collapse" href="#data_review"><i class="fa fa-question fa-fw"></i> Click here for help</a>')
                                                )
                                ),
                                shiny::tags$div(id="data_review", class="panel-collapse collapse",
                                                shiny::tags$div(class="panel-body",
                                                                # here comes the content
###############
column(width=12,
     
       column(width=6,
              shiny::tags$h3("How can I download read count files?", class="text-success"),
              shiny::tags$p(class="lead", "You can download all read count files CRISPRAnalyzeR created for you."),
              shiny::tags$p(class="text-justify","CRISPRAnalyzeR gives you the opportunity to download the read count files for your samples."),
              shiny::tags$p(class="text-justify","In case you uploaded FASTQ.gz data, the read count files have been generated by mapping your sequencing data against your sgRNA library.",
                            "If you come back to CRISPRAnalyzeR, you can then just upload the read count files together with your sgRNA library file, which is much faster."),
              shiny::tags$p(class="text-justify","The read count files are tab-separated text files and come within a gzip archive.")
              
              ),
       column(width=6,
              shiny::tags$h3("How can I download a quality report for my FASTQ.gz sequencing data?", class="text-success"),
              shiny::tags$p(class="lead", "CRISPRAnalyzeR also provides an extensive quality report for your sequencing data."),
              shiny::tags$p(class="text-justify", "Once you upload FASTQ.gz sequencing data, CRISPRAnalyzeR will create a sequencing data quality report.",
                            "The report is generated using the Rqc package "),
              shiny::HTML("<blockquote class='text-left'>
Welliton Souza and Benilton Carvalho (2016).</br>
Rqc: Quality Control Tool for High-Throughput Sequencing Data.</br>
R package version 1.6.2. https://github.com/labbcb/Rqc </blockquote>")
       
              ),
       column(width=12,
              shiny::tags$img(src="images/CRISPRAnalyzeR_data-review_1.png", class="img-responsive")
              ),
       column(width=12,
              shiny::tags$hr() ),
       
       
       column(width=12,
              shiny::tags$h3("What information is provided in the overview table?", class="text-success"),
              shiny::tags$img(src = "images/CRISPRAnalyzeR_data-review_2.png", class="img-responsive"),
              shiny::tags$dl(class="dl-horizontal",
                             shiny::tags$dt("Original Filename"),
                             shiny::tags$dd("The name of the uploaded file", class="text-left"),
                             shiny::tags$dt("Provided Name"),
                             shiny::tags$dd("The name you provided after uploading the files", class="text-left"),
                             shiny::tags$dt("Type"),
                             shiny::tags$dd("Either Fastq for sequencing files or Readcount for read count data", class="text-left"),
                             shiny::tags$dt("Size"),
                             shiny::tags$dd("The filesize", class="text-left"),
                             shiny::tags$dt("Extraction Ratio"),
                             shiny::tags$dd("The ratio gives an estimate of how many sequencing reads were extracted according to the selected regular expression. In general this should be higher than 80%.", class="text-left"),
                             shiny::tags$dt("Mapping to Reference"),
                             shiny::tags$dd("CRISPRAnalyzeR maps your raw data sequencing files to your sgRNA library file and tells you, how many reads were mapped to your sgRNA library.
                                            Each sequencing read can be mapped only once (Aligned once), multiple times or it might be that a read cannot be mapped to your library at all.", class="text-left")
                             )
              
              )
       
       
       )


###############
                                                                ### END OF HELP PAGE INSERT
                                                                       )
                                                                       )
                                                                       )
                                                                       )
)
