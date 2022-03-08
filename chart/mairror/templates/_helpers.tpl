{{/*
Expand the name of the chart.
*/}}
{{- define "mairror_api.name" -}}
{{- default "mairror-api" .Values.mairror_api.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "mairror_predictor.name" -}}
{{- default "mairror-predictor" .Values.mairror_predictor.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "mairror_bot.name" -}}
{{- default "mairror-bot" .Values.mairror_bot.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "mairror_processor.name" -}}
{{- default "mairror-processor" .Values.mairror_processor.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "mairror_api.fullname" -}}
{{- if .Values.mairror_api.fullnameOverride }}
{{- .Values.mairror_api.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default "mairror-api" .Values.mairror_api.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{- define "mairror_predictor.fullname" -}}
{{- if .Values.mairror_predictor.fullnameOverride }}
{{- .Values.mairror_predictor.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default "mairror-predictor" .Values.mairror_predictor.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{- define "mairror_bot.fullname" -}}
{{- if .Values.mairror_bot.fullnameOverride }}
{{- .Values.mairror_bot.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default "mairror-bot" .Values.mairror_bot.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{- define "mairror_processor.fullname" -}}
{{- if .Values.mairror_processor.fullnameOverride }}
{{- .Values.mairror_processor.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default "mairror-processor" .Values.mairror_processor.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "mairror.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "mairror_api.labels" -}}
helm.sh/chart: {{ include "mairror.chart" . }}
{{ include "mairror_api.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "mairror_predictor.labels" -}}
helm.sh/chart: {{ include "mairror.chart" . }}
{{ include "mairror_predictor.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "mairror_bot.labels" -}}
helm.sh/chart: {{ include "mairror.chart" . }}
{{ include "mairror_bot.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "mairror_processor.labels" -}}
helm.sh/chart: {{ include "mairror.chart" . }}
{{ include "mairror_processor.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "mairror_api.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mairror_api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "mairror_predictor.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mairror_predictor.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "mairror_bot.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mairror_bot.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "mairror_processor.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mairror_processor.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "mairror_api.serviceAccountName" -}}
{{- if .Values.mairror_api.serviceAccount.create }}
{{- default (include "mairror_api.fullname" .) .Values.mairror_api.serviceAccount.name }}
{{- else }}
{{- default "mairror-api" .Values.mairror_api.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "mairror_predictor.serviceAccountName" -}}
{{- if .Values.mairror_predictor.serviceAccount.create }}
{{- default (include "mairror_predictor.fullname" .) .Values.mairror_predictor.serviceAccount.name }}
{{- else }}
{{- default "mairror-predictor" .Values.mairror_predictor.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "mairror_bot.serviceAccountName" -}}
{{- if .Values.mairror_bot.serviceAccount.create }}
{{- default (include "mairror_bot.fullname" .) .Values.mairror_bot.serviceAccount.name }}
{{- else }}
{{- default "mairror-bot" .Values.mairror_bot.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "mairror_processor.serviceAccountName" -}}
{{- if .Values.mairror_processor.serviceAccount.create }}
{{- default (include "mairror_processor.fullname" .) .Values.mairror_processor.serviceAccount.name }}
{{- else }}
{{- default "mairror-processor" .Values.mairror_processor.serviceAccount.name }}
{{- end }}
{{- end }}
