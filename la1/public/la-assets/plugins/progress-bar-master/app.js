
//we can set animation delay as following in ms (default 1000)
ProgressBar.singleStepAnimation = 1500;
ProgressBar.init(
  [ 'Analisa Kebutuhan Sistem',
    'Perancangan Sistem',
    'Pengembangan Sistem',
    'Pengujian Sistem',
    'Implementasi Sistem',
    'Pasca Implementasi Sistem'
  ],
  'Pengujian Sistem',
  'progress-bar-wrapper' // created this optional parameter for container name (otherwise default container created)
);