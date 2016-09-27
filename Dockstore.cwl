#!/usr/bin/env cwl-runner

class: CommandLineTool
id: Picard_Reorder
label: Picard_Reorder tool
cwlVersion: latest

dct:creator:
  foaf:name: Pooja Vade
  foaf:mbox: pooja043@uw.edu

requirements:
- class: DockerRequirement
  dockerPull: quay.io/pooja043/picard_reorder:latest

hints:
- class: ResourceRequirement
  coresMin: 1
  ramMin: 4092
  outdirMin: 512000
  description: the process requires at least 4G of RAM

inputs:
  bam_input:
    type: File
    format: http://edamontology.org/format_2572
    inputBinding:
      position: 2
    doc: The bam/sam file used as input.

outputs:
  picardreorder_result:
    type: File
    format: http://edamontology.org/format_2572
    outputBinding:
      glob: pecardreorder_result
    doc: result of picardReorder
    
baseCommand: [bash, /usr/local/bin/bwa]
