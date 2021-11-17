import { readdir, stat } from 'fs/promises';
import { spawn } from 'child_process';
import * as fs from 'fs';

const srcPath = './source';
const outPath = './output';
const command = 'make';

function buildOutput(name) {
	const now = new Date();
	const process = spawn(command, [name]);

	process.on('exit', (code) => {
		if (code !== 0) {
			console.log(`Error: \x1b[31m${command} exit code = ${code}\x1b[0m`);
		}
		else {
			console.log(`Building \x1b[32m'${name}'\x1b[0m... Done! (${now.toLocaleString('it-IT', {
				day: '2-digit',
				month: 'short',
				year: 'numeric',
				hour: '2-digit',
				minute: '2-digit',
				second: '2-digit',
			})})`);
		}
	});
}

/**
 * 
 * @param {String} path 
 * @returns {Promise<String[]>}
 */
async function scanDir(path) {
	let dirs = [];
	for (const file of await readdir(path)) {
		const fullName = `${path}/${file}`;
		const statsFile = await stat(fullName);

		if (statsFile.isDirectory()) {
			dirs.push(fullName);
			dirs = [...dirs, ...await scanDir(fullName)];
		}
	}

	return dirs;
}

const paths = await scanDir(srcPath);
const outputMap = new Map(paths.map((element) => {
	const arr = element.split('/');
	const start = arr.indexOf('source') + 1;

	return [element, `${outPath}/${arr.slice(start).join('/')}`]
}));
console.log(`Trovati sorgenti in:`, outputMap);

// start the watch
listenForChange(paths);

function listenForChange(dirs) {
	console.log('\x1b[34mInizio scansione:\x1b[0m');
	for (const dir of dirs) {
		fs.watch(dir, (e, filename) => dirListener(filename, dir));
	}
}

const dirListener = function () {
	let timeoutId = 0;
	/**
	* 
	* @param {String} filename 
	* @param {String} dir 
	*/
	return function (filename, dir) {
		if (!filename.includes('md')) {
			return;
		}

		const arr = filename.split('.');
		arr.pop();
		const name = `${dir}/${arr.join('.')}.pdf`;

		clearTimeout(timeoutId);
		timeoutId = setTimeout(() => buildOutput(name), 100);
	};
}();

