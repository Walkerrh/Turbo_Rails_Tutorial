// app/javascript/application.js

// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"


// To disable Turbo Drive on the whole application, we have to add two lines of config to our JavaScript code. You can, for example, do it directly in the manifest file:
// import { Turbo } from "@hotwired/turbo-rails"
// Turbo.session.drive = false