module main

import vweb
import pg
import os
import zztkm.vdotenv

struct App {
	vweb.Context
mut:
	db pg.DB
}

fn main() {
	vdotenv.load('.env', '.env.develop')
	mut db := pg.connect(
		host: os.getenv('PG_HOST')
		user: os.getenv('PG_USER')
		password: os.getenv('PG_PASSWORD')
		dbname: os.getenv('PG_DATABASE')
		port: os.getenv('PG_PORT').int()
	) or { panic(err) }
	
	sql db {
		create table Note
	}
	http_port := os.getenv('PORT').int()
	app := &App{
		db: db
	}
	vweb.run(app, http_port)
}

['/'; get]
fn (mut app App) hello() vweb.Result {
	return app.text('Welcome to TutLinks, Vweb CloudRun Deployment Demo!')
}
