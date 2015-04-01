publicDirectory = './public'
publicAssets = publicDirectory + '/assets'
sourceDirectory = './app'
sourceAssets = sourceDirectory + '/assets'
sourceAssetsStylsheets = sourceAssets + '/stylesheets'
sourceAssetsJavaScripts = sourceAssets + '/javascripts'
sourceAssetsGenerated = sourceAssets + '/generated'
tmpDirectory = './.tmp'

module.exports =
  publicDirectory: publicDirectory
  sourceAssets: sourceAssets
  sourceAssetsStylsheets: sourceAssetsStylsheets
  sourceAssetsJavaScripts: sourceAssetsJavaScripts
  sourceAssetsGenerated: sourceAssetsGenerated
  publicAssets: publicAssets
  tmpDirectory: tmpDirectory

  browserSync:
    server:
      baseDir: publicDirectory
    files: ['pubilc/**/*.html']

  browserify:
    entries: sourceAssetsJavaScripts + '/app.js'
    dest: publicAssets
    outputName: 'app.js'

  jade:
    src: sourceDirectory + '/pages/**/*.jade'
    dest: publicDirectory
    locals:
      title: 'Hello world!'
      description: 'Sample gulp generated page'

  sass:
    autoprefixer:
      browsers: ['last 2 version']
    src: sourceAssetsStylsheets + '/app.sass'
    dest: publicAssets
    settings:
      indentedSyntax: true # Enable .sass syntax!
      imagePath: 'assets/images' # Used by the image-url helper

  importCss:
    src: sourceAssetsStylsheets + '/import.css'
    dest: sourceAssetsStylsheets + '/generated'
    name: 'import.scss'
    settings:
      extensions: ["css"]

  images:
    src: sourceAssets + '/images/**'
    dest: publicAssets + '/images'

  iconFont:
    name: 'Gulp Starter Icons'
    src: sourceAssets + '/icons/*.svg'
    dest: publicAssets + '/fonts'
    sassDest: sourceAssetsStylsheets + '/generated'
    template: './gulpfile.js/tasks/iconFont/template.sass'
    sassOutputName: 'icons.sass'
    fontPath: 'fonts'
    className: 'icon'
    options:
      fontName: 'icons'
      appendCodepoints: true
      normalize: false

  copyCssDependencies:
    src: [ './node_modules/normalize.css/normalize.css' ]
    dest: sourceAssetsStylsheets + '/import'

  copy:
    src: sourceDirectory + '/copy/*'
    dest: publicDirectory

  deploy:
    url: 'http://valeryvs.github.io/gulp-blank-project/',
    src: publicDirectory + '/**/*'

  watch:
    sass:
      src: sourceDirectory + '/**/*.{sass,scss}'
    css:
      src: sourceDirectory + '/**/*.css'
    coffee:
      src: sourceDirectory + '/**/*.coffee'
    scripts:
      src: sourceDirectory + '/**/*.js'
    html:
      src: sourceDirectory + '/**/*.{jade,html,md}'
    images:
      src: sourceAssets + '/images/**'
    iconFont:
      src: sourceAssets + '/icons/*.svg'
    copy:
      src: sourceDirectory + '/copy/*'
