## Introduction
Plymouth tealinuxos 11 ini menggunakan logo spiral dan bar progress sebagai tampilan dasar
dan untuk memberikan kesan nyaman pada saat proses booting

## Installation
untuk proses instalasi sangat mudah kita hanya memindahkan beberapa file yang kedalam `system` kita

silahkan clone project ini
```
git clone https://www.github.com/Grafiters/Plymouth-TealinuxOS
```

kemudian buat folder baru dengan nama stevia-tea pada:
```
sudo mkdir /usr/share/plymouth/themes/stevia-tea
```

setelah itu copy file gambar yang berada pada folder stevia-tea-rendered
```
sudo copy -pr /stevia-tea-rendered/* /usr/share/plymouth/stevia-tea
```

kemudian copy script pada folder script
```
sudo copy -pr /script/* /usr/share/plymouth/stevia-tea
```

setelah itu kita copy file `default.plymouth` ke dalam `/etc/alternatives' (namun kita backupterlebih dahulu file default.plymouth yang asli menjadi default.plymouth.bak)
```
sudo mv /etc/alternatives/default.plymouth /etc/alternatives/default.plymouth.bak
```
kemudian copy file `default.plymouth`
```
sudo cp default.plymouth /etc/alternatives/
```

kemudian tinggal kita restart PC kita

## SELESAI