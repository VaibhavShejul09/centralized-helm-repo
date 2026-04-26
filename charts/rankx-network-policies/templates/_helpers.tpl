{{- define "rankx.networkpolicy.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/part-of: rankx
app.kubernetes.io/managed-by: Helm
app.kubernetes.io/component: security
env: {{ .Values.namespace | quote }}
team: platform
owner: platform-team
resource-type: network-policy
{{- end }}

{{- define "rankx.namespace" -}}
{{ .Values.namespace }}
{{- end }}