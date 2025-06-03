import 'dart:convert';
import 'dart:io';

Future<void> runProcess(
  String executable,
  List<String> arguments, {
  required String workingDirectory,
}) async {
  final proc = await Process.start(
    executable,
    arguments,
    mode: ProcessStartMode.detached,
    runInShell: Platform.isWindows,
    workingDirectory: workingDirectory,
  );
  final procExit = await proc.exitCode;
  if (procExit != 0) {
    print(proc.stderr.transform(utf8.decoder));
    throw ProcessException(executable, arguments, 'Process failed', procExit);
  }
}
