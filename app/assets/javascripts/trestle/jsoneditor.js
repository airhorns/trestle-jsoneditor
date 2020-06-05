//= require vendored_jsoneditor/jsoneditor

Trestle.init(function (_, root) {
  $(root).find('[data-enable-jsoneditor]').each(function (index, element) {
    const $field = $(element).parent().find('input.json-text-area');
    let object;
    try {
      object = JSON.parse($field.val());
    } catch {
      object = {}
    }

    const editor = new JSONEditor(element, Object.assign({
      mode: 'code',
      onChangeText: function (string) {
        $field.val(string)
      }
    }, Trestle.JSONEditorConfig || {}), object)

    editor.aceEditor.setOptions({
      maxLines: 10000
    })
  })
})

