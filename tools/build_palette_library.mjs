import fs from 'node:fs';
import path from 'node:path';

const root = path.resolve(import.meta.dirname, '..');
const read = file => fs.readFileSync(path.join(root, file), 'utf8');
const write = (file, value) => fs.writeFileSync(path.join(root, file), value, 'utf8');
const oldJson = 'data/json/color_palettes_50.json';
const newJson = 'data/json/color_palettes_100.json';
const firstFifty = JSON.parse(read(fs.existsSync(path.join(root, oldJson)) ? oldJson : newJson)).slice(0, 50);
const rows = read('data/coolors_trending_2026-09-24.tsv').split(/\r?\n/).filter(line => line && !line.startsWith('#'));
if (firstFifty.length !== 50 || rows.length !== 50) throw new Error('Expected 50 existing and 50 Coolors palettes');

const categoryPositions = {
  'Minimal & Modern': [16, 18, 27, 28, 38, 42],
  'Tech, SaaS & Corporate': [3, 7, 15, 20, 23, 30, 45, 47],
  'Dark Mode & Cyberpunk': [2, 5, 8, 12, 19, 22, 25, 26, 35, 39, 43, 46],
  'Pastel & Sweet': [4, 10, 21, 24, 29, 31, 33, 41],
  'Bold, Earthy & Retro': [1, 6, 9, 13, 14, 17, 36, 37, 40, 44, 48, 49, 50, 51, 52, 53]
};
const roleByCategory = {
  'Minimal & Modern': 'Calm editorial layouts and neutral card surfaces',
  'Tech, SaaS & Corporate': 'Clear interface accents and information panels',
  'Dark Mode & Cyberpunk': 'Dark character cards with luminous accents',
  'Pastel & Sweet': 'Soft character profiles and playful details',
  'Bold, Earthy & Retro': 'Expressive covers and thematic highlights'
};
const categoryFor = position => Object.entries(categoryPositions).find(([, positions]) => positions.includes(position))?.[0];
const displayNames = {
  42: 'Autumn Harvest (Sandstone)',
  44: 'Earthy Tones (Meadow)',
  47: 'Deep Sea (Slate)',
  51: 'Fresh Greens (Mint Gradient)'
};
const newPalettes = rows.map((line, index) => {
  const [positionText, sourceName, codes] = line.split('|');
  const position = Number(positionText);
  const category = categoryFor(position);
  if (!category || !sourceName || !codes) throw new Error(`Invalid source row: ${line}`);
  const colors = codes.split('-').map(code => `#${code}`);
  if (colors.some(color => !/^#[0-9A-F]{6}$/.test(color))) throw new Error(`Invalid hex in ${sourceName}`);
  return {
    category,
    id: index + 51,
    name: displayNames[position] || sourceName,
    sourceName,
    colors,
    role: roleByCategory[category],
    source: 'https://coolors.co/palettes/trending',
    sourcePosition: position,
    sourcedOn: '2026-09-24'
  };
});

const palettes = [...firstFifty, ...newPalettes];
const codes = palettes.map(p => p.colors.join('-'));
if (new Set(codes).size !== 100) throw new Error('Duplicate ordered color palette');
if (new Set(palettes.map(p => p.id)).size !== 100) throw new Error('Duplicate palette ID');
if (new Set(palettes.map(p => p.name)).size !== 100) throw new Error('Duplicate palette name');
write(newJson, `${JSON.stringify(palettes, null, 2)}\n`);

const yamlString = value => JSON.stringify(value);
const yaml = [
  '# Rubii Card Architect - 100 Master Color Palettes',
  '# Entries 51-100: Coolors Trending snapshot, 2026-09-24',
  'palettes:',
  ...palettes.flatMap(p => [
    `  - id: ${p.id}`,
    `    category: ${yamlString(p.category)}`,
    `    name: ${yamlString(p.name)}`,
    ...(p.sourceName ? [`    sourceName: ${yamlString(p.sourceName)}`] : []),
    `    colors: [${p.colors.map(yamlString).join(', ')}]`,
    `    role: ${yamlString(p.role)}`,
    ...(p.source ? [`    source: ${yamlString(p.source)}`, `    sourcePosition: ${p.sourcePosition}`, `    sourcedOn: ${yamlString(p.sourcedOn)}`] : []),
    ''
  ])
].join('\n');
write('data/yaml/color_palettes_100.yaml', `${yaml.trimEnd()}\n`);

const sections = [...new Set(palettes.map(p => p.category))];
const md = [
  '# 🎨 คลังชุดสี 100 รายการ',
  '',
  'ชุดสี 1–50 มาจากคลังเดิม ส่วนชุดสี 51–100 คัดจาก [Coolors Trending](https://coolors.co/palettes/trending) วันที่ 24 กันยายน 2026 โดยเก็บรหัสสีทุกสีตามที่หน้าเว็บแสดง ณ วันนั้น ลำดับบนเว็บอาจเปลี่ยนได้',
  '',
  'ข้อมูลหลักสำหรับนำไปใช้งานอยู่ใน [`color_palettes_100.json`](../json/color_palettes_100.json) และ [`color_palettes_100.yaml`](../yaml/color_palettes_100.yaml)',
  '',
  ...sections.flatMap(category => [
    `## ${category}`,
    '',
    '| # | ชื่อชุดสี | Hex Codes | การใช้งาน | ที่มา |',
    '| ---: | --- | --- | --- | --- |',
    ...palettes.filter(p => p.category === category).map(p => `| ${p.id} | ${p.name.replaceAll('|', '\\|')} | ${p.colors.map(c => `\`${c}\``).join(' ')} | ${p.role.replaceAll('|', '\\|')} | ${p.source ? `[Coolors #${p.sourcePosition}](${p.source})` : 'คลังเดิม'} |`),
    ''
  ]),
  '## คลัง Color Hunt เดิม',
  '',
  'หน้าเว็บยังมีคลัง Color Hunt แยกต่างหากใน [`colorhunt_palettes.json`](../json/colorhunt_palettes.json) และสลับดูได้จากตัวเลือกแหล่งข้อมูลบนหน้าคลังสี',
  ''
].join('\n');
write('data/markdown/palette_color_database.md', md);
write('คลัง Palette Color CSS.md', md.replaceAll('../json/', 'data/json/').replaceAll('../yaml/', 'data/yaml/'));

function colorTags(hex) {
  const [r, g, b] = [1, 3, 5].map(i => parseInt(hex.slice(i, i + 2), 16) / 255);
  const max = Math.max(r, g, b);
  const min = Math.min(r, g, b);
  const delta = max - min;
  const lightness = (max + min) / 2;
  const saturation = delta === 0 ? 0 : delta / (1 - Math.abs(2 * lightness - 1));
  let hue = 0;
  if (delta !== 0) {
    if (max === r) hue = ((g - b) / delta) % 6;
    else if (max === g) hue = (b - r) / delta + 2;
    else hue = (r - g) / delta + 4;
    hue = (hue * 60 + 360) % 360;
  }
  if (lightness < 0.13) return ['black', 'dark'];
  if (lightness > 0.9 && saturation < 0.25) return ['white', 'light'];
  if (saturation < 0.12) return ['grey', lightness < 0.4 ? 'dark' : 'light'];
  const tags = [];
  if (lightness > 0.7) tags.push('light');
  if (lightness < 0.3) tags.push('dark');
  if (hue < 15 || hue >= 345) tags.push('red', ...(lightness < 0.4 ? ['maroon'] : []));
  else if (hue < 45) tags.push('orange', ...(lightness < 0.5 ? ['brown'] : ['peach']));
  else if (hue < 70) tags.push('yellow', ...(saturation < 0.5 ? ['beige'] : []));
  else if (hue < 155) tags.push('green', ...(saturation < 0.3 ? ['sage'] : []));
  else if (hue < 185) tags.push('teal', 'mint');
  else if (hue < 255) tags.push('blue', ...(lightness < 0.35 ? ['navy'] : []));
  else if (hue < 305) tags.push('purple');
  else tags.push('pink');
  return tags;
}
const embedded = palettes.map(p => ({
  id: p.id,
  name: p.name,
  cat: p.category,
  tags: [...new Set([...p.colors.flatMap(colorTags), ...p.name.toLowerCase().split(/\W+/), ...p.category.toLowerCase().split(/\W+/), ...(p.source ? ['popular'] : [])])],
  colors: p.colors,
  role: p.role,
  source: p.source || ''
}));
const indexPath = path.join(root, 'index.html');
const index = fs.readFileSync(indexPath, 'utf8');
const start = '    // MASTER_PALETTES_START';
const end = '    // MASTER_PALETTES_END';
const startAt = index.indexOf(start);
const endAt = index.indexOf(end);
if (startAt < 0 || endAt < startAt) throw new Error('Master palette markers missing from index.html');
const replacement = `${start}\n    let masterPalettes = [\n${embedded.map(p => `      ${JSON.stringify(p)}`).join(',\n')}\n    ];\n    ${end}`;
fs.writeFileSync(indexPath, `${index.slice(0, startAt)}${replacement}${index.slice(endAt + end.length)}`, 'utf8');

for (const file of [
  'README.md', 'README_TH.md', 'README_VI.md', 'README_ZH.md',
  'docs/visual_library_standard.md',
  'integrations/gemini_gem_instructions.md',
  'integrations/chatgpt_custom_gpt.md',
  'data/yaml/gem_plugin_config.yaml',
  'data/json/compound_catalog_v1.json',
  'tools/rubii.ps1'
]) {
  const original = read(file);
  const updated = original.replaceAll('color_palettes_50', 'color_palettes_100');
  if (updated !== original) write(file, updated);
}

for (const file of [oldJson, 'data/yaml/color_palettes_50.yaml']) {
  const absolute = path.join(root, file);
  if (fs.existsSync(absolute)) fs.unlinkSync(absolute);
}
console.log(`Built ${palettes.length} palettes (${newPalettes.length} from Coolors Trending).`);
