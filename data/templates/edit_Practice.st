<div class="sg-edit">
  <div class="sg-edit-metadata">
    <fieldset class="sg-edit-metadata">
      <legend>Meta-data</legend>
      <input class="sg-meta" type="hidden" name="meta_format" value="$format$"></input>
      <label><b>Type: </b></label>
      <input class="sg-meta" type="text" maxlength="128" size="32" name="meta_type" value="$type$" READONLY></input>
      <label><b>Title: </b></label>
      <input class="sg-meta" type="text" maxlength="128" size="32" name="meta_title" value="$title$"></input>
      <label><b>Lifecycle phase: </b></label>
      <input class="sg-meta" type="text" maxlength="128" size="32" name="meta_lifecyclePhase" value="$lifecyclePhase$"></input>
      <label><b>Product domain: </b></label>
      <input class="sg-meta" type="text" maxlength="128" size="32" name="meta_domain" value="$domain$"></input>
      <label><b>Type of practice: </b></label>
      <input class="sg-meta" type="text" maxlength="128" size="32" name="meta_intervention" value="$intervention$"></input>
      <label><b>Research area: </b></label>
      <input class="sg-meta" type="text" maxlength="128" size="32" name="meta_researchArea" value="$researchArea$"></input>
      <label><b>Conditions: </b></label>
      <input class="sg-meta" type="text" maxlength="128" size="32" name="meta_conditions" value="$conditions$"></input>
      <label><b>Summary: </b></label>
      <input class="sg-meta" type="text" maxlength="128" size="32" name="meta_summary" value="$summary$"></inpupt>

      <input class="sg-meta" type="hidden" name="meta_categories" value="$categories$"></input>
      <input class="sg-meta" type="hidden" name="meta_role" value="$role$"></input
      <input class="sg-meta" type="hidden" name="meta_tool" value="$tool$"></input
      <input class="sg-meta" type="hidden" name="meta_requires" value="$requires$"></input
      <input class="sg-meta" type="hidden" name="meta_provides" value="$provides$"></input
      <input class="sg-meta" type="hidden" name="meta_risks" value="$risks$"></input
      <input class="sg-meta" type="hidden" name="meta_result" value="$result$"></input
      <input class="sg-meta" type="hidden" name="meta_publication" value="$publication$"></input
    </fieldset>
  </div>
  <div class="sg-edit-contents">
    <fieldset class="sg-edit-contents">
      <legend>Contents</legend>
      <label>CKEditor edit area from edit_Practice template</label>
      <textarea cols="20" class="ckeditor" name="editedText" id="editedText">$contents$</textarea>
      <label>(end edit area from template)</label>
    </fieldset>
  </div>
</div>
