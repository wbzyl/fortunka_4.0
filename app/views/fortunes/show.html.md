<%- model_class = Fortune -%>
# <%=t '.title', :default => model_class.model_name.human %>

<%= @fortune.quotation %>

*<%= @fortune.source %>*

[<%=t '.back', :default => t("helpers.links.back") %>](<%= fortunes_path %>) |
[<%=t '.edit', :default => t("helpers.links.edit") %>](<%= edit_fortune_path(@fortune) %>) |
<%= link_to t('.destroy', default: t("helpers.links.destroy")), fortune_path(@fortune),
  method: 'delete',
  data: {
    confirm: t('.confirm',
    default: t("helpers.links.confirm",
    default: 'Are you sure?'))
  },
  class: 'btn btn-danger' %>
