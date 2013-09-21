<div class="createtools">
  <fieldset>
    <legend>Create</legend>
    <form method="post" id="createPageForm">
      <input type="hidden" name="editedText" id="editedText"/>
      <label for="pageType">Page type: </label>
      <select id="pageType" name="pageType">

<option value="---
format: markdown
type: Practice
title: {short one line title}
lifecyclePhase: {phase}
domain: {product domain}
intervention: {intervention}
researchArea: {research area}
conditions: {pre-conditions}
summary: {summary}
categories: Practice
role: {kind(s) of staff who perform this practice (name of page)}
tool: {tool(s) used to perform this practice (name of page)}
requires: {required resources (inputs)}
provides: {provided resources (outputs)}
risks: {risks of not doing this practice}
result: {research result from which this practice is taken (name of page)}
publication: {publication where this practice is described (url)}
...
">Practice</option>


<option value="---
format: markdown
title: {short phrase about resource}
categories: Resource
...
">Resource</option>

<option value="---
format: markdown
type: Role
title: {short phrase about role}
categories: Role
skill level: {list of skill levels (junior, mid, senior)}
summary: {brief summary}
...


# Description
Role description, possibly including  links to relevant research,
testimonials, case studies.  

">Role</option>

<option value="---
format: markdown
type: Tool
title: {short phrase about tool}
categories: Tool
...

">Tool</option>

<option value="---
format: markdown
type: Publication
title: {publication title}
categories: Publication
...
">Publication</option>

<option value="---
format: markdown
type: Method
title: {research method name}
categories: Method
...
">Method</option>

      </select>

      <label for="pageName">Page name: </label>
      <input type="text" name="pageName" id="pageName"/>
      <input type="button" id="createPageSubmit" value="Create"/>
    </form>
  </fieldset>
</div>
