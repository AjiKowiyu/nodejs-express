const express   = require('express')
const app       = express()
const port      = 3000


app.use( express.urlencoded({extended:false}) )
app.set('view engine', 'ejs')   //setting penggunaan template engine untuk express
app.set('views', './view-ejs')  //setting penggunaan folder untuk menyimpan file .ejs


app.get('/', (req,res)=>{
    res.render('index')
})


app.get('/profil', (req,res)=>{
    res.render('profil')
})


app.get('/pengalaman', (req,res)=>{
    res.render('daftar-pengalaman', {
        nama: 'Aji Kowiyu Uzumaki',
        jenis_kelamin: 'L',
        posisi: 'Sr. Programmer',
        perusahaan: 'Agung Podomoro',
        gaji: 9557000,
        pajak: (this.gaji > 10000000) ? 'gaji anda kena pajak' : 'aman, gak perlu bayar pajak',
    })
})


app.get('/karyawan', async (req,res)=>{
    const m_karyawan = require('./model/m_karyawan')
    let dataview = {
        req: req,
        semua_karyawan: await m_karyawan.get_semua_karyawan(),
    }
    res.render('karyawan/all', dataview)
})


app.get('/karyawan/detail/:id_karyawan', async (req,res)=>{
    const m_karyawan = require('./model/m_karyawan')
    const id = req.params.id_karyawan
    let dataview = {
        detail_karyawan: await m_karyawan.get_satu_karyawan(id),
    }
    res.render('karyawan/detail', dataview)
})


app.get('/karyawan/tambah', async (req,res)=>{
    res.render('karyawan/form-tambah', {info_error: null})
})


app.post('/karyawan/proses-simpan', async (req,res)=>{
    // ambil kiriman dari form html satu-satu
    // let nama_lengkap = req.body.nama_lengkap
    // let alamat = req.body.alamat
    // ambil semuanya pake req.body
    
    const m_karyawan = require('./model/m_karyawan')
    try {
        let insert = await m_karyawan.tambah_karyawan(req)
        if (insert.affectedRows > 0) {
            res.redirect('/karyawan?note=insert-sukses')
        }
    } catch (error) {
        res.render('karyawan/form-tambah', {info_error: error})
    }
})


app.listen(port, ()=>{
    console.log(`App sudah siap, buka http://localhost:${port}`)
})