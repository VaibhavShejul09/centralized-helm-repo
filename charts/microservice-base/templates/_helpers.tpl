{{- define "microservice.labels" -}}
app.kubernetes.io/name: {{ .Values.name | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/component: {{ .Values.labels.component | quote }}
app.kubernetes.io/part-of: "rankx"
app.kubernetes.io/managed-by: "Helm"
app.kubernetes.io/version: {{ .Values.image.tag | quote }}

env: {{ .Values.labels.env | quote }}
team: {{ .Values.labels.team | quote }}
tier: {{ .Values.labels.tier | quote }}
{{- end }}