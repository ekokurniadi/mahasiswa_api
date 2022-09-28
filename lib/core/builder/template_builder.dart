import 'dart:io';
import 'package:path/path.dart' as path;

class TemplateBuilder {
  TemplateBuilder();

  String template = '';

  TemplateBuilder setHeader() {
    final file = File(
      path.join(
        Directory.current.path,
        'public',
        'components',
        'header.html',
      ),
    );

    final html = file.readAsStringSync();

    this.template = html;
    return this;
  }

  TemplateBuilder setContent({
    required String folderName,
    required String fileName,
  }) {
    final file = File(
      path.join(
        Directory.current.path,
        'public',
        folderName,
        fileName,
      ),
    );
    final html = file.readAsStringSync();
    this.template += html;
    return this;
  }

  TemplateBuilder setFooter() {
    final file = File(
      path.join(
        Directory.current.path,
        'public',
        'components',
        'footer.html',
      ),
    );

    final html = file.readAsStringSync();

    this.template += html;
    return this;
  }

  String buildTemplate() {
    return template;
  }
}
