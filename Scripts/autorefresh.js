
const url = "/sinavsaatlerijson.aspx";
const vm = new Vue({
	el: '#app', 
	
	data: {
          results: [],
		interval:null
        },
	beforeUpdate:function () {
		console.log("before updated");
		if(typeof $(this.$el).slick  !== 'undefined') {
				$("#basari").show();
				$(this.$el).slick('unslick');
		}
	},
	updated: function () {
		var self = this;
  		this.$nextTick(function () {
			console.log("updated");
			if(typeof $(self.$el).slick  !== 'undefined') {
				setTimeout(() => {$(self.$el).slick('refresh'); $("#basari").hide(); },2000);
			}
		});
	},
	
	mounted: function () {
		console.log("mounted");
		var self=this;
		$("#basari").hide();
  this.$nextTick(function () {
	  $(self.$el).slick({
  						slidesToShow: 2,
					  slidesToScroll: 2,
  					autoplay: true,
  					autoplaySpeed: 2000,
	  });
	  /*
	  setTimeout(function() {
	  $(self.$el).slick({
  						slidesToShow: 2,
					  slidesToScroll: 2,
  					autoplay: true,
  					autoplaySpeed: 2000,
				});
	  },2000);
*/
			
	  
	  
	  
  });
},
	
	methods :  {
		fetchData : function(event) {
          axios.get(url).then(response => {
			console.log(response);
            this.results = response.data.items;
			
			
          })
        },
	salonParcala : function(salonlar) {
		      	return salonlar.split(',');
	}

},
					  created: function () {
	var self = this;
	self.fetchData();
    				this.interval = setInterval(function () {
      self.fetchData();
    }, 10000); 
  },

 beforeDestroy: function(){
clearInterval(this.interval);
}



					  
					  
					  
            });


	
