var pool = require('./bd');
// var md5 = require ('md5');

async function getNovedades() {
    try{
        var query = 'select * from novedades';

        var rows = await pool.query(query);
        return rows;

    }catch (error){
        console.log(error);
    }

}
async function insertNovedad(obj){
    try{
        var query = "insert into novedades set?";
        var rows = await pool.query(query, [obj]);
        return rows;

    } catch(error){
        console.log(error);
        throw error;
    }
}


async function deleteNovedadesById(id){
    var query='delete from novedades where id= ?';
    var rows= await pool.query(query, [id]);
    return rows;
}

async function getNovedadById(id){
    var query=" select * from novedades where id=? ";
    var rows= await pool.query(query, [id]);
    return rows[0];
}

async function editarNovedadById(obj, id){
    try{
        var query = 'update novedades set? where id = ?';
        var rows = await pool.query(query, [obj, id]);
        return rows;

    } catch(error){
        // console.log(error);
        throw error;
    }
}



module.exports={ getNovedades, insertNovedad, deleteNovedadesById, getNovedadById, editarNovedadById }