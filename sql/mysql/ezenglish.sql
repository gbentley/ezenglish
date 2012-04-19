UPDATE ezcontentclass_classgroup SET group_name = 'Files' where group_name = 'Media';
UPDATE ezcontentclassgroup SET name = 'Files' where name = 'Media';
UPDATE ezcontentobject SET name = 'Documents' where name = 'Files';
UPDATE ezcontentobject_attribute set data_text = 'Documents', sort_key_string = 'documents' where id = 147;
UPDATE ezcontentobject SET name = 'Files' where name = 'Media';
  
