{{/* 
    Expand the name of the chart. 
*/}} 
{{- define "home-assistant.name" -}} 
{{- if contains .Chart.Name .Release.Name }}
{{- .Release.Name | replace "." "-" | trunc 50 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name .Chart.Name | replace "." "-" | trunc 50 | trimSuffix "-" }}
{{- end }}
{{- end }}