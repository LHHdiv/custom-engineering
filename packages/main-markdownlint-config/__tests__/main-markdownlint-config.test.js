'use strict';

const mainMarkdownlintConfig = require('..');
const assert = require('assert').strict;

assert.strictEqual(mainMarkdownlintConfig(), 'Hello from mainMarkdownlintConfig');
console.info('mainMarkdownlintConfig tests passed');
