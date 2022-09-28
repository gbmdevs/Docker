

var array = [		
    {
    "seqPessaNlist": 12,
    "codTpRegistro": 1,
    "numIdentPessoa": 0,
    "numCpfCnpj": 95039872020,
    "nomeRazaoSocial": "Milena Beatriz da Costa"
},
{
    "seqPessaNlist": 11,
    "codTpRegistro": 1,
    "numIdentPessoa": 0,
    "numCpfCnpj": 95039872020,
    "nomeRazaoSocial": "Milena Beatriz da Costa"
},
{
    "seqPessaNlist": 10,
    "codTpRegistro": 1,
    "numIdentPessoa": 0,
    "numCpfCnpj": 36182475757,
    "nomeRazaoSocial": "Daniel Eduardo Almada"
},
{
    "seqPessaNlist": 10,
    "codTpRegistro": 1,
    "numIdentPessoa": 0,
    "numCpfCnpj": 04074096102,
    "nomeRazaoSocial": "Guilherme Gois Braga de Medeiros"
}
];

const result = array.reduce( function (r, { nomeRazaoSocial: name, numCpfCnpj: numCpfCnpj , ...object }) {
    var temp = r.find(function(o){
       return o.name === name
    });
    if (!temp) {
       r.push(temp = { name,numCpfCnpj, children: [] });
    } 
    temp.children.push(object);
    return r;
}, []);
  
console.log(result);