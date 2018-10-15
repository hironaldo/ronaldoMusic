 (function(win,doc,undefined){
 	var zturn=function(turn){
 		this.turn=turn
 		this.zturn=$("#"+turn.id)
 		this.X=0
 		this.zturnitem=this.zturn.children(".zturn-item")
 		this.num_li=this.zturnitem.length//轮播元素个数 zturnPy为每个的偏移量
 		this.zturnPy=turn.Awidth/(this.num_li-1)  
 		this.init()
 		this.turn_()
 		return this
 	}
 	zturn.prototype={
 		constructor:zturn,
 		 init:function(){
 		 		var _self = this;
				this.zturn.children(".zturn-item").each(function(index,element){	 		
								//index是第几个元素 X是选取的中间数 num_li是总数
							var rt=1//1:右侧：-1：左侧
							if((index-_self.X)>_self.num_li/2||(index-_self.X)<0&&(index-_self.X)>(-_self.num_li/2)){rt=-1}//判断元素左侧还是右侧
							var i=Math.abs(index-_self.X);//取绝对值
							if(i>_self.num_li/2){i=parseInt(_self.X)+parseInt(_self.num_li)-index;}//i:是左或者右的第几个
							if((index-_self.X)<(-_self.num_li/2)){i=_self.num_li+index-_self.X}
							$(this).css({
								'position':'absolute',
								'left': '50%',
								'margin-left':-_self.turn.width/2+_self.zturnPy*rt*i+"px",
								'z-index':_self.num_li-i, 
								'opacity': Math.pow(_self.turn.opacity,i),
								'transform':'scale('+Math.pow(_self.turn.scale,i)+')',
								'-webkit-transform':'scale('+Math.pow(_self.turn.scale,i)+')',
								'-webkit-transform':'scale('+Math.pow(_self.turn.scale,i)+')',
								'-moz-transform':'scale('+Math.pow(_self.turn.scale,i)+')',
								'-ms-transform':'scale('+Math.pow(_self.turn.scale,i)+')',
								'-o-transform':'scale('+Math.pow(_self.turn.scale,i)+')'
							})
							$(this).attr("data_n",index)
					})
 		 },
 		 turn_:function(){
 		 	var _self=this
 		 	this.zturnitem.click(function(){	 			
 		 		_self.X=$(this).attr("data_n")
 		 		_self.init()
 		 	})
 		 },
 		 prev_:function(){
 		 		var _self=this
 		 		this.X--
				if(this.X<0){this.X=this.num_li-1}
 		 		this.init()
 		 },
 		next_:function(){
 		 		var _self=this
 		 		this.X++
				if(this.X>=this.num_li){this.X=0}
 		 		this.init()
 		 }
 	} 	
 		win.zturn = zturn;
 }(window,document))
 













/*

var zturn=function(turn){
						var self=this
						this.x=1
						var zturn=$("#"+turn.id)
						this.zturnitem=zturn.children(".zturn-item")
						var X=this.x//初始第一个 第一个是0
						var num_li=this.zturnitem.length//轮播元素个数 zturnPy为每个的偏移量
						var zturnPy=turn.Awidth/(num_li-1)  
						

						this.zturnitem.click(function(){
							var zX=$(this).attr("data_n")
								z_sort(turn,zX)
						
						})


						zturn.children(".zturn-item").each(function(index,element){
								//index是第几个元素 X是选取的中间数 num_li是总数
							var rt=1//1:右侧：-1：左侧
							if((index-X)>num_li/2||(index-X)<0&&(index-X)>(-num_li/2)){rt=-1}//判断元素左侧还是右侧
							var i=Math.abs(index-X);//取绝对值
							if(i>num_li/2){i=X+num_li-index}//i:是左或者右的第几个
							if((index-X)<(-num_li/2)){i=num_li+index-X}
							
							$(this).css({
								'position':'absolute',
								'left': '50%',
								'margin-left':-turn.width/2+zturnPy*rt*i+"px",
								'z-index':num_li-i,
								'opacity': Math.pow(turn.opacity,i),
								'transform':'scale('+Math.pow(turn.scale,i)+')',
								'-webkit-transform':'scale('+Math.pow(turn.scale,i)+')',
								'-webkit-transform':'scale('+Math.pow(turn.scale,i)+')',
								'-moz-transform':'scale('+Math.pow(turn.scale,i)+')',
								'-ms-transform':'scale('+Math.pow(turn.scale,i)+')',
								'-o-transform':'scale('+Math.pow(turn.scale,i)+')'
							})
							$(this).attr("data_n",index)
						})	
					}
					
				function z_sort(turn,X){
//						console.log(turn,X)
						var self=this
						var zturn=$("#"+turn.id)
						var zturnitem=zturn.children(".zturn-item")
						var num_li=zturnitem.length//轮播元素个数 zturnPy为每个的偏移量
						var zturnPy=turn.Awidth/(num_li-1)  

					
						zturn.children(".zturn-item").each(function(index,element){
					
						var rt=1//1:右侧：-1：左侧
							if((index-X)>num_li/2||(index-X)<0&&(index-X)>(-num_li/2)){rt=-1}//判断元素左侧还是右侧
							var i=Math.abs(index-X);//取绝对值
							if(i>num_li/2){i=parseInt(X)+num_li-index;}//i:是左或者右的第几个
							if((index-X)<(-num_li/2)){i=num_li+index-X}

							$(this).css({
								'position':'absolute',
								'left': '50%',
								'margin-left':-turn.width/2+zturnPy*rt*i+"px",
								'z-index':num_li-i,
								'opacity': Math.pow(turn.opacity,i),
								'transform':'scale('+Math.pow(turn.scale,i)+')',
								'-webkit-transform':'scale('+Math.pow(turn.scale,i)+')',
								'-webkit-transform':'scale('+Math.pow(turn.scale,i)+')',
								'-moz-transform':'scale('+Math.pow(turn.scale,i)+')',
								'-ms-transform':'scale('+Math.pow(turn.scale,i)+')',
								'-o-transform':'scale('+Math.pow(turn.scale,i)+')'
							})
						})	
					
				}
				*/
				