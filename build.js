import { readdir, stat } from 'fs/promises';
import { spawn } from 'child_process';
import * as fs from 'fs';

const path = './source';
const outPath = './output';
const command = 'make';

function buildOutput(name) 
{
	const process = spawn(command, [name]);
	
	process.on('error', (error) => console.log(error));
	process.on('exit', (code) => {
		if (code !== 0) {				
			throw new Error(`${command} error`);			
		}

		console.log(`${(new Date().toISOString())} build!\x1b[32m ${name} \x1b[0m`);
	});	
}

/**
 * 
 * @param {String} path 
 * @returns {Promise<String[]>}
 */
async function scanDir(path)
{
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

const paths = await scanDir(path);
const outputMap = new Map(paths.map((element) => {
	const arr = element.split('/');
	const start = arr.indexOf('source') + 1;

	return [element, `${outPath}/${arr.slice(start).join('/')}`]
}));
console.log(outputMap);

listenForChange(paths);

function listenForChange(dirs)
{
	console.log('\x1b[34m inizio scan \x1b[0m');
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
	return function dirListener (filename, dir)
	{
		if (!filename.includes('md')) {
			return;
		}

		const arr = filename.split('.');
		arr.pop();		
		const name = `${dir}/${arr.join('.')}.pdf`;

		clearTimeout(timeoutId);
		timeoutId = setTimeout(() => buildOutput(name), 500);
	};
}();

