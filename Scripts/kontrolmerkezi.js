const url = "/sinavsaatlerijson.aspx";
var vm = new Vue({
  el: '#app',
  data: {
	  columns: ['Index', 'Dersin Kodu', 'Dersin Adı', 'Tarih/Saat', 'Salonlar', 'Gözetmenler', 'Yayın Durumu', 'Yayınlanması Planlanan Zaman', 'Yayından Kaldırılacağı Zaman', 'Eylemler '],
    results: [],
    bin: [],
    input: {},
	  editInput:{}
  },
			  
  created: function () {
		this.fetchData();
	},
  methods: {
	  fetchData: function (event) {
			axios.get(url).then(response => {
				console.log(response);
				this.results = response.data.items;


			})
		},
			  
			  
			  
			  
	  add: function() {
		  
		  axios.put('/sinavapi.aspx?umbdebugshowtrace=true', {
    firstName: 'Fred',
    lastName: 'Flintstone'
  })
  .then(function (response) {
    console.log(response);
  })
  .catch(function (error) {
    console.log(error);
  });
		  
		  
      this.results.push({
        dersin_kodu: this.input.dersin_kodu,
        dersin_adi: this.input.dersin_adi,
        sinav_salonlari: this.input.sinav_salonlari,
        sinav_tarihi: this.input.sinav_tarihi,
        gozetmenler: this.input.gozetmenler
      });

      for (var key in this.input) {
        this.input[key] = '';
      }
      this.$refs.dkodu.focus();
    },
    //function to handle data edition
    edit: function(index) {
		 this.editInput = this.results[index];
      console.log(this.editInput);
      this.results.splice(index, 1);
	},
    //function to send data to bin
    archive: function(index) {},
    //function to restore data
    restore: function(index) { },
    //function to update data
    update: function(){},
    //function to defintely delete data 
    deplete: function(index) {}
  }
});

//function to sort table data alphabetically
var ordonner = function(a, b) {
  return (a.lname > b.lname);
};
