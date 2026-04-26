{{- define "rankx.redis.labels" -}}
app.kubernetes.io/name: redis
app.kubernetes.io/part-of: rankx
app.kubernetes.io/managed-by: Helm
app.kubernetes.io/component: cache

env: {{ .Values.labels.env | quote }}
team: {{ .Values.labels.team | quote }}
tier: data
{{- end }}

{{- define "rankx.redis.selectorLabels" -}}
app.kubernetes.io/name: redis
app.kubernetes.io/component: cache
tier: data
{{- end }}