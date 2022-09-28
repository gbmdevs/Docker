function populateList(){
     const data = [];
     
   /* Forma 1 */  
    for (let i = 0 ; i < 25 ; i++ ){
        data.push(`<div class="item"> Item ${i + 1}</div>`);
    }
    
    /* Buscar a Classe List */

    const list = document.querySelector('#paginate .list');
    // Separador
    list.innerHTML = data.join("");

    /* Forma 2 
    const data = Array.from({ length: 100}).
    map((_, i) => `Item ${(i + 1)}`);
     */ 
    return data;
}

const data = populateList();
 
//* ------------------- Back-End --------------------*//
// Math Ceil - Arredonda para Cima




const html = {
  get(element){
      return document.querySelector(element);
  }
}

let perPage = 5;
let dataPag = [];
const state = {
    page: 1,
    perPage,
    totalPage: Math.ceil(data.length / perPage),
    pageIni: 0,
    pageFim: 0
}

 
const controls = {
    next() { 
     state.page++
     const lastPage = state.page > state.totalPage;
     if(lastPage){
         state.page--;
     }
      
     pageIni = state.perPage * (state.page - 1 );
     pageFim = (state.page * state.perPage);
     dataPag = data.slice(pageIni, pageFim);

    },
    prev() {
        state.page--;
        if(state.page < 1){
            state.page = 1;
        }
    
        pageIni = state.perPage * (state.page - 1 );
        pageFim = (state.page * state.perPage);
        dataPag = data.slice(pageIni, pageFim);

    },
    goTo(page) {
        if(page < 1 ){
            page = 1;
        }

        if(page > state.totalPage){
            page = state.totalPage;
        }

        state.page = page;
        pageIni = state.perPage * (state.page - 1 );
        pageFim = (state.page * state.perPage);
        dataPag = data.slice(pageIni, pageFim);

    },
    createListeners(){
           html.get('.first').addEventListener('click', () =>{
                 controls.goTo(1);
                 list.update();
                 list.create(dataPag);
           });

          html.get('.prev').addEventListener('click', () => {
                 controls.prev();
                 list.update();
                 list.create(dataPag);
          });

           html.get('.next').addEventListener('click', () => {
                 controls.next();
                 list.update();
                 list.create(dataPag) 

           });

           html.get('.last').addEventListener('click', () => {
                list.update();     
                controls.goTo(state.totalPage) 
                list.create(dataPag)

           });
        
    }
    
}

const list = { 
    create(item){
        html.get('.list').innerHTML=item.join(""); 
    },
    update(){
        html.get('.list').innerHTML="";
        const page = document.querySelector(".pagination .numbers");
        page.innerHTML = '<div>' + state.page +'</div>'; 
    },
    init(){
        dataPag = data.slice(0,state.perPage); 
    }

}
 
function init(){
    list.init()
    list.update()
    list.create(dataPag); 
    controls.createListeners();
}

init()
