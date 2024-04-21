import {equal} from 'node:assert/strict'
import {readFileSync} from 'node:fs'
import {describe, it} from 'node:test'
import {Validator} from 'jsonschema'

const FILENAMES = [
    'behave.json',
    'canonical.json',
    'cucumber-js.json',
    'cucumber-jvm.json',
    'cucumber-ruby.json',
]

describe('schema validation', () => {
    const validator = new Validator()

    FILENAMES.forEach(filename => {
        it(filename, async () => {
            const schema = JSON.parse(readFileSync('./schemas/' + filename, {encoding: 'utf-8'}))
            const metaSchema = await fetch(schema['$schema']).then(response => response.json())
            const result = validator.validate(schema, metaSchema)
            equal(result.valid, true)
        })
    })
})