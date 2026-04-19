import * as idl from '@webref/idl';
import * as css from '@webref/css';
import * as elements from '@webref/elements';
import * as fs from 'fs';
import * as p from 'path';
import { fileURLToPath } from 'url';

const __dirname = p.dirname(fileURLToPath(import.meta.url));

async function main() {
  console.log('Parsing IDLs...');
  const parsedIdls = await idl.parseAll();
  
  console.log('Fetching CSS data...');
  const cssData = await css.listAll();
  
  console.log('Fetching Elements data...');
  const elementsData = await elements.listAll();

  const fullData = {
    idl: parsedIdls,
    css: cssData,
    elements: elementsData
  };

  const outputDir = p.join(__dirname, '../.dart_tool/web_generator');
  fs.mkdirSync(outputDir, { recursive: true });
  const outputPath = p.join(outputDir, 'web_apis.json');
  fs.writeFileSync(outputPath, JSON.stringify(fullData, null, 2));
  console.log(`Saved parsed data to ${outputPath}`);
}

main().catch(err => {
  console.error(err);
  process.exit(1);
});
