module main

import vweb
import sqlite

struct App {
	vweb.Context
mut:
	db sqlite.DB
}

fn main() {
	db := sqlite.connect('notes.db') or { panic(err) }
	db.exec('drop table if exists Notes')
	sql db {
		create table Note
	}
	http_port := 8080
	app := &App{
		db: db
	}
	vweb.run(app, http_port)
}

['/'; get]
fn (mut app App) hello() vweb.Result {
	return app.text('Welcome to TutLinks!')
}
