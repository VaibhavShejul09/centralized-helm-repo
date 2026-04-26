{{- define "microservice.labels" -}}
# Kubernetes Recommended Standard Labels
app.kubernetes.io/name: {{ .Values.name | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/component: {{ .Values.labels.component | quote }}
app.kubernetes.io/part-of: "rankx"
app.kubernetes.io/managed-by: "Helm"
app.kubernetes.io/version: {{ .Values.image.tag | quote }}

# Environment / Ownership Labels
env: {{ .Values.labels.env | quote }}
team: {{ .Values.labels.team | quote }}
tier: {{ .Values.labels.tier | quote }}
owner: {{ .Values.labels.owner | default "platform-team" | quote }}

# Production Governance Labels
criticality: {{ .Values.labels.criticality | default "medium" | quote }}
cost-center: {{ .Values.labels.costCenter | default "engineering" | quote }}
business-unit: {{ .Values.labels.businessUnit | default "rankx" | quote }}

# Security / Compliance Labels
compliance: {{ .Values.labels.compliance | default "internal" | quote }}
data-classification: {{ .Values.labels.dataClassification | default "internal" | quote }}

# Operations Labels
monitoring: {{ .Values.labels.monitoring | default "enabled" | quote }}
backup: {{ .Values.labels.backup | default "required" | quote }}
{{- end }}