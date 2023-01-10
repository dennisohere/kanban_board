let mix = require('laravel-mix');


mix
    .js('resources/js/app.js', 'dist')
    .sass('resources/styles/app.scss', 'dist')
    .setPublicPath('public')
    .vue({ version: 2 }).version();
