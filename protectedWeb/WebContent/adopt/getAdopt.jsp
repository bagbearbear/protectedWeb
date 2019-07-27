<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<title>��ȣ�Ұ� �� �о�� ����ȸ</title>
	<meta charset="EUC-KR">
	
	<meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/get/css/bootstrap.css" />
    <link rel="stylesheet" href="/resources/get/css/icon/style.css" />
    <link rel="stylesheet" href="/resources/get/css/font-awesome.min.css" />
    <link rel="stylesheet" href="/resources/get/css/themify-icons.css" />
    <link rel="stylesheet" href="/resources/get/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/resources/get/css/simpleLightbox.css" />
    <link rel="stylesheet" href="/resources/get/css/nice-select.css" />
    <link rel="stylesheet" href="/resources/get/css/animate.css" />
    <link rel="stylesheet" href="/resources/get/css/jquery-ui.css" />
    <!-- main css -->
    <link rel="stylesheet" href="/resources/get/css/style.css" />
    <link rel="stylesheet" href="/resources/get/css/responsive.css" />
    
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css"> 
    
    <style>
    	.row {
			transform: rotate(0.03deg);
		}

		#title {
			font-family: 'NanumSquare', sans-serif !important;
			font-size: 22px !important;
			font-weight: bold;
		}
		
		.product_image_area { 
			font-family: 'NanumSquare', sans-serif !important;
		}
		
 		button{ 
 			font-family: 'NanumSquare', sans-serif !important; 
 		} 
    
	    #carouselExampleIndicators{
        	max-height: 400px;
	    }
	    
       	img {
        	max-height: 450px;
        }
        
        #mapDiv{
/*         	padding-left: 0px; */
/*         	padding-right: 0px; */
        	padding: 0px;
        }
        .col-lg-5.offset-lg-1{
        	position: relative;
        	height: 450px;
        }
        .card_area{
        	position: absolute;
        	left: 0px;
        	bottom: 0px;
        }
        
        #appendTr>td{
        	align: letf;
        	word-break: break-all;	
        }
        
        @media screen and (min-width: 768px) { 
	        .modal:before {
	                display: inline-block;
/* 	                vertical-align: middle; */
	                content: " ";
/* 	                height: 100%; */
	        }
		}
		
        .modal{
      	  display: inline-block;
        	vertical-align: middle;
        }
        
        #modiButton, #delButton, #listButton {
		    padding: 0px 10px;
 		    line-height: 20px; 
 		    border-radius: 3px; 
		}
		
		button {
		    display: inline-block;
		    background: #94BFCA;
		    padding: 0px 10px;
		    letter-spacing: 0.25px;
		    color: #fff;
		    font-size: 12px;
		    font-weight: 500;
		    line-height: 44px;
		    outline: none !important;
		    box-shadow: none !important;
		    text-align: center;
		    border: 1px solid #94BFCA;
		    cursor: pointer;
		    text-transform: uppercase;
		    transition: all 300ms linear 0s;
		    border-radius: 5px;
		}
        
/*         .lnr-heart:before { */
/* 			content: "\e813"; */
/* 		} */
      
    </style>
 
  </head>
  
  <body>
    
    <!--================Header Menu Area =================-->

    <jsp:include page="/layout/toolbar.jsp"></jsp:include>
    
<!--         <div class="hero-wrap hero-bread" style="background-image: url('images/bg_6.jpg');"> -->
<!--       <div class="container"> -->
<!--         <div class="row no-gutters slider-text align-items-center justify-content-center"> -->
<!--           <div class="col-md-9 ftco-animate text-center"> -->
<!--             <h1 class="mb-0 bread" id="h1">�о� -->
<!--             </h1> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->

    <!--================Single Product Area =================-->
    <div class="product_image_area">
      <div class="container">
        <div class="row s_product_inner">
          <div class="col-lg-6">
<!--             <div class="s_product_img"> -->
              <div
                id="carouselExampleIndicators"
                class="carousel slide"
                data-ride="carousel"
              >
                <ol class="carousel-indicators" >
                
                
                  <c:forEach var="i" begin="0" end="${fn:length(file)-1}" step="1">			
					<c:if test="${i eq 0}">	
	                  <li
	                    data-target="#carouselExampleIndicators"
	                    data-slide-to="${i}"
	                    class="active"
	                  >
	                </c:if>
					<c:if test="${!(i eq 0)}">	
	                  <li
	                    data-target="#carouselExampleIndicators"
	                    data-slide-to="${i}"
	                  >
	                </c:if>	                
                  </c:forEach>               
                     
                </ol>
                
                <div class="carousel-inner">
					<c:forEach var="name" items="${file}" varStatus="status">
						<c:if test="${status.first}">	
							<c:set var ="className" value="carousel-item active"/>
		                </c:if>
						<c:if test="${!(status.first)}">	
							<c:set var ="className" value="carousel-item"/>
		                </c:if>	                
	                    <div class="${className}">	                
		                    <img 
		                      class="d-block w-100"
		                      src="/resources/file/fileAdopt/${name.fileName}" height="450px;" />
	                  	</div>			
	                </c:forEach>
                </div>
                
              </div>
<!--             </div> -->
          </div>
          <div class="col-lg-5 offset-lg-1">
            <div class="s_product_text">
            
<%--              <span style="text-align: justify;"> <font size="5px">${adopt.postTitle}</font> &nbsp;&nbsp;${adopt.id}&nbsp;&nbsp; ${ adopt.regDate }</span><hr/> --%>
              
              
              <ul class="list">
              	
              	<input type="hidden" name="postNo" value="${adopt.postNo}">
              	<input type="hidden" name="userId" value="${user.id}">
              	<input type="hidden" name="levels" value="${user.levels}">
              	
                <li>
                   	<div class="row" style="position:relative;height:35px;">
			        	<div class="col-xs-8 col-md-8" style="position:absolute; left:0px; bottom:0px;" ><font id="title" size="5px">${adopt.postTitle}</font>&nbsp;&nbsp;${adopt.id}</div>
			        	<div class="col-xs-4 col-md-4" align="right" style="position:absolute; right:0px; bottom:0px; " ><font size="5px"></font>${adopt.regDate}</div>
			        </div>
                </li>
                
                <hr/>
              	
                <li>
                   	<div class="row">
				  		<div class="col-md-2 " ><strong>����</strong></div>
						<div class="col-md-3 ">${adopt.dogBreed}</div>
						
						<div class="col-md-2 "><strong>ũ��</strong></div>
						<div class="col-md-5 ">${adopt.dogSize}</div>
					</div>
                </li>
                
                <li>
                   	<div class="row">
				  		<div class="col-md-2 "><strong>ü��</strong></div>
						<div class="col-md-3 ">${adopt.dogWeight}kg</div>
			
				  		<div class="col-md-2 "><strong>����</strong></div>
						<div class="col-md-5 ">${adopt.dogGender}</div>
					</div>
                </li>
                
                <li>
                   	<div class="row">
				  		<div class="col-md-2 "><strong>
					  		<c:if test="${adopt.boardCode eq 'AD' }">å�Ӻ�</c:if>
<%-- 						    <c:if test="${adopt.boardCode eq 'MS' }">��ʺ�</c:if> --%>
				  		</strong></div>
						<div class="col-md-3 "><fmt:formatNumber value="${ adopt.dogPay }" pattern="#,###" />��</div>
			
				  		<div class="col-md-2 " style="padding-right: 0px;"><strong>
				  			<c:if test="${adopt.boardCode eq 'AD' }">�߰�����</c:if>
<%-- 						    <c:if test="${adopt.boardCode eq 'MS' }">��������</c:if> --%>
				  		</strong></div>
						<div class="col-md-5">${adopt.dogDate}</div>
					</div>
                </li>
                
                <li>
                	<div class="row">
				  		<div class="col-md-2  "><strong>����</strong></div>
						<div class="col-md-10 ">${adopt.dogStatus}</div>
					</div>
                </li>
                
                <li>
                	<div class="row">
				  		<div class="col-md-2  "><strong>����</strong></div>
						<div class="col-md-10 ">${adopt.dogPersonality}</div>
					</div>
                </li>
                
                <li>
                	<div class="row">
				  		<div class="col-md-2  "><strong>Ư¡</strong></div>
						<div class="col-md-10 ">${adopt.dogChar}</div>
					</div>
                </li>
         
               	<div class="row">
			  		<div class="col-md-2  "><strong>�۳���</strong></div>
					<div class="col-md-10 " >${adopt.postContent}</div>
				</div>

				
              </ul>
              
              
              <div class="product_count">
                <button
                  onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                  class="increase items-count"
                  type="button"
                >
                </button>
                <button
                  onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                  class="reduced items-count"
                  type="button"
                >
                </button>
              </div>
              
              
              <div class="card_area" >

				<!-- �о� �޴��϶�  -->
              	<c:if test="${adopt.boardCode eq 'AD' }">
	              		<c:if test="${adopt.statusCode ne '3' && sessionScope.user.id ne adopt.id }">
	              			<button id="adoptApply" class="main_btn" href="#" style="width: 189px">�Ծ��û</button>
	              		</c:if>
	              		
	              		<c:if test="${adopt.statusCode eq '2' && sessionScope.user.id eq adopt.id }">
	              			<button class="main_btn" style="width: 189px" id="confirmButton">��û��Ȯ��</button>
	              			<button class="main_btn" style="width: 189px" id="adoptCompleteButton">�о�Ϸ�</button>
	              		</c:if>
	              		
	              		<c:if test="${adopt.statusCode eq '1' && sessionScope.user.id eq adopt.id }">
	              			<button class="main_btn" id="noApply" style="width: 475px;" id="confirmButton">���� ��û���� ��ϵ��� �ʾҽ��ϴ�.</button>
	              		</c:if>
              	</c:if>
              	
              	<!-- ���� �޴��϶�  -->
              	<c:if test="${adopt.boardCode eq 'MS' }">
              		<c:if test="${adopt.statusCode eq '1' && sessionScope.user.id eq adopt.id }">
              			<button class="main_btn" href="#" style="width: 189px" id="missingCompleteButton">ã��Ϸ�</button>
              		</c:if>
              	</c:if>
              	
              	<!-- ����  -->
              	<c:if test="${adopt.statusCode ne '3' &&  sessionScope.user.id ne adopt.id   }">
               		<button class="main_btn" href="#" style="width: 189px">�����ϱ�</button>
               		<a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
               	</c:if>
               	
              	<c:if test="${adopt.statusCode eq '3'}">
               		<button class="main_btn" id="noApply" style="width: 475px;" id="confirmButton">�Ϸ�� ���Դϴ�.</button>
               	</c:if>
              	
              </div>
 
              
              
            </div>
          </div>
        </div>
        
        
        <div class="col-md-12 "><br/><br/></div>
        <hr/><br/>
        
        
        <div id="mapDiv"  class="col-md-12 ">
        
        	<c:if test="${adopt.boardCode eq 'AD' }">
				<strong>�о簡������</strong><br/>
		  		<div id="mapArea" style="width:wrap; height: 300px;"  align="center"></div>
				<div>${adopt.areaKr }</div><br/>
			</c:if>
			
	  		<strong>
	  			<c:if test="${adopt.boardCode eq 'AD' }">
		  			�߰���ġ
		  		</c:if>
			    <c:if test="${adopt.boardCode eq 'MS' }">
		  			������ġ
		  		</c:if>
	  		</strong><br/>
	  		<div id="map" style="width: wrap; height: 300px;"  align="center"></div>
	  		<input type="hidden" class="form-control" id="location" name="location" value="${adopt.location}">
			<div>${adopt.locationKr }</div>
			<br/><br/><br/>
        
        </div>

		<div class="minibox" align="center">
			<div>
				<br/>
				<p/>
				<br/>
				<a href="#"  id="twitter"  title="Ʈ���ͷ� ����"><img src="/resources/file/others/twitter.png"></a>
				<a href="#" id="facebook" title="���̽������� ����"><img src="/resources/file/others/facebook.png"></a>
				<a href="#"  id="naver" title="���̹��� ����"><img src="/resources/file/others/naver.png"></a>
				<a href="#"  id="kakao" title="īī�������� ����"> <img src="/resources/file/others/kakao.png" ></a>
			</div>
		</div>
        <div class="col-md-12"><hr/></div>
        
        <p align="right">
       		<c:if test="${adopt.statusCode eq '1' && sessionScope.user.id eq adopt.id }">
				<button class="main_btn" id="modiButton">����</button>
	       		<button class="main_btn" id="delButton">����</button>
			</c:if>
			
	        <button class="main_btn" id="listButton">���</button>
        </p>
        
        
<%--         <jsp:include page="/common/comment.jsp"></jsp:include> --%>
        
        
        
      </div>
    </div>
   <br><br><br/>
    <!--================End Single Product Area =================-->
    
    <!-- 	/////////////////////////////////////////       dialog       ///////////////////////////////////////////////////////////////////// -->
   
			<div id="dialog-delAdopt" title="">
			  <p align="center"><br/>�����Ͻðڽ��ϱ�?</p>
			</div>  
			<div id="dialog-adoptComplete" title="">
			  <p align="center"><br/>�о�Ϸ� ���·� �����Ͻðڽ��ϱ�?</p>
			</div>  
			<div id="dialog-missingComplete" title="">
			  <p align="center"><br/>ã��Ϸ� ���·� �����Ͻðڽ��ϱ�?</p>
			</div>  
			<div id="dialog-alreadyApply" title="">
			  <p align="center"><br/></p>
			</div>  
			<div id="dialog-listApply" title="">
<!-- 			  <p id="listJSON"></p> -->
			</div> 
			


	<jsp:include page="/layout/footer.jsp"></jsp:include>
  
    <!--================End Product Description Area =================-->

    <!--================ start footer Area  =================-->
    
    <!--================ End footer Area  =================-->
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/resources/get/js/jquery-3.2.1.min.js"></script>
    <script src="/resources/get/js/popper.js"></script>
    <script src="/resources/get/js/bootstrap.min.js"></script>
    <script src="/resources/get/js/stellar.js"></script>
    <script src="/resources/get/js/simpleLightbox.min.js"></script>
    <script src="/resources/get/js/jquery.nice-select.min.js"></script>
    <script src="/resources/get/js/imagesloaded.pkgd.min.js"></script>
    <script src="/resources/get/js/isotope-min.js"></script>
    <script src="/resources/get/js/owl.carousel.min.js"></script>
    <script src="/resources/get/js/jquery.ajaxchimp.min.js"></script>
    <script src="/resources/get/js/mail-script.js"></script>
    <script src="/resources/get/js/jquery-ui.js"></script>
    <script src="/resources/get/js/jquery.waypoints.min.js"></script>
    <script src="/resources/get/js/jquery.counterup.js"></script>
    <script src="/resources/get/js/theme.js"></script>
    
    <!-- KAKAO -->
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>	
    
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
    <script>
      $(document).ready(function() { 
    	  listApply('load');
      });

      var map;
      var markers = [];
      var loca = "${adopt.location}";
      var localat = parseFloat(  loca.substring( loca.indexOf("(")+1 ,loca.indexOf(",") )  );
      var localng = parseFloat(  loca.substring( loca.indexOf(",")+1, loca.indexOf(")") )  );
      var marker;
      
      var mapArea;
      var markerArea;
      var adArea = "${adopt.adoptArea}";
      var arrayTest = [];
      var arrayMark = [];
      
      var id = $('input[name=userId]').val().trim();
      
      if (adArea.indexOf("#") != -1){
    	  var areaArray = adArea.split("#");
    	  
    	  for ( i=0; i<areaArray.length-1; i++){
    		  arrayTest[i] = areaArray[i].substring( areaArray[i].indexOf("(")+1, areaArray[i].indexOf(",") )+","+ (areaArray[i].substring( areaArray[i].indexOf(",")+1, areaArray[i].indexOf(")") )).trim() ;
    		  arrayMark[i] = "markerArea"+i.toString();
    	  }   	  
      }
      
      
      
      function initMap() {
        var centerLoca = {lat: localat, lng: localng};

        map = new google.maps.Map(document.getElementById('map'), {
        	zoom: 15,
        	center: {lat: localat, lng: localng}
        });
        
        marker = new google.maps.Marker({
            position: {lat: localat, lng: localng},
            map: map
        });

 ////////////////////////////////////////////
 
	    mapArea = new google.maps.Map(document.getElementById('mapArea'), {
			    zoom: 12,
			    center: { lat: parseFloat(arrayTest[0].substring( 0, arrayTest[0].indexOf(",") ))  ,
			    		lng: parseFloat(arrayTest[0].substring( arrayTest[0].indexOf(",")+1, arrayTest[0].length )) }
		});
	    
	    var aaa = "";
	    for ( i=0; i<arrayTest.length; i++){
	    	
		    markerArea= arrayMark[i];
		
		    markerArea = new google.maps.Marker({
		        position: { lat: parseFloat(arrayTest[i].substring( 0, arrayTest[i].indexOf(",") ))  ,
		    			lng: parseFloat(arrayTest[i].substring( arrayTest[i].indexOf(",")+1, arrayTest[i].length )) },
		        map: mapArea
		    });
  		 	
	    }//$('#pop').text(aaa);
	    
      }
      
      //////////////////////////////////////////////////////////////////////////////////////////////////////
      
      function fncComplete() {			
			var postNo = ${adopt.postNo};
			var aText;

// 			alert(typeof postNo);

			$.ajax( 
			 		{
						url : "/adopt/json/updateStatusCode/"+postNo ,
						method : "GET" ,
						dataType : "json" ,
						headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								  },
						success : function(status) {
							$('#confirmButton, #modiButton, #delButton, #adoptCompleteButton, #missingCompleteButton').remove();
							$( "#dialog-adoptComplete, #dialog-missingComplete" ).dialog( "close" );
							$('.card_area').html('<button class="main_btn" id="noApply" style="width: 475px;" id="confirmButton">�Ϸ�� ���Դϴ�.</button>');
						},
						error: function(request, status, error){ 
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
				        }
			});
	 };

	 //////////////////////////////////////////////////////////////////////////////////////////////////////      
      
	
	 //============= SNS���� Event  ó�� =============	
	$( "#twitter" ).on("click" , function() {
 		 window.open('https://twitter.com/intent/tweet?text=[%EA%B3%B5%EC%9C%A0]%20' +encodeURIComponent(document.URL)+'%20-%20'+encodeURIComponent(document.title), 'twittersharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=500,width=600');
	});		
	
	$( "#naver" ).on("click" , function() {
 		 window.open('https://share.naver.com/web/shareView.nhn?url='+encodeURIComponent(document.URL)+'&title=hyemi!', 'naversharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=500,width=600');
	});		
	
	$( "#facebook" ).on("click" , function() {
 		 window.open('https://www.facebook.com/sharer/sharer.php?u=' +encodeURIComponent(document.URL)+'&t='+encodeURIComponent(document.title), 'facebooksharedialog', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');
	});			
	
	$( "#kakao" ).on("click" , function() {
		sendLinkKakao()
	});	
	
  //============= īī�� �����ϱ�Event  ó�� =============		
	 Kakao.init('153d14a106a978cdc7a42f3f236934a6');
  
	 function sendLinkKakao(){
	     Kakao.Link.sendDefault({
	     	objectType: 'feed',
	     	content: {
	     		title: '����ߺ�ȣ',
	     		description: '�۸�',
	     		imageUrl:document.location.href,
	     		link: {
			     		mobileWebUrl: document.location.href,
			     		webUrl:document.location.href
	     			  }
	     		},
	    	buttons: [       
	        			{
	        				title: '��ũ ����',
	        				link: {
	       							mobileWebUrl: document.location.href,
	        						webUrl: document.location.href
	        					  }
	        			}
	      			  ]
	     }); 
	 }  
	 
  //==================================================

	 
      $( function() {
  	    $( "#dialog-delAdopt" ).dialog({
  	    	autoOpen: false,
  		      width: 350,
  		      height: 180,
  		      modal: true,
  		      buttons: {
  		        	��: function() {
  		        		self.location = "/adopt/updateStatusCode?postNo=${adopt.postNo}";
  		        	},
  		        	�ƴϿ�: function() {
  		          		$( this ).dialog( "close" );
  		        	}
  		      }
  	    });
      });
      
      $( function() {
  	    $( "#dialog-adoptComplete, #dialog-missingComplete" ).dialog({
  	    	  autoOpen: false,
  		      width: 350,
  		      height: 180,
  		      modal: true,
  		      buttons: {
  		        	��: function() {
  		        		fncComplete();
  		        	},
  		        	�ƴϿ�: function() {
  		          		$( this ).dialog( "close" );
  		        	}
  		      }
  	    });
      });
      
      $( function() {
  	    $( "#dialog-listApply" ).dialog({
  	    	  autoOpen: false,
  		      width: 500,
  		      height: 600,
  		      modal: true,
  		      buttons: {
//   		        	��: function() {
//   		        		fncComplete();
//   		        	},
  		        	�ݱ�: function() {
  		          		$( this ).dialog( "close" );
  		        	}
  		      }
  	    });
      });
      
      $( function() {
  	    $( "#dialog-alreadyApply" ).dialog({
  	    	  autoOpen: false,
  		      width: 350,
  		      height: 180,
  		      modal: true,
  		      buttons: {
  		        	�ݱ�: function() {
  		          		$( this ).dialog( "close" );
  		        	}
  		      }
  	    });
      });
      

      
  //////////////////////////////////////////////////////////////////////////////////////////////////////
	var str = '';
  
    function listApply(str){
    	var lv = $('input[name=levels]').val();
    	console.log("lv Ȯ�� : "+lv);
		var adoptNo = parseInt(  $('input[name=postNo]').val().trim()  );
		
  		$.ajax( 
		 		{
					url : "/apply/json/listApply/"+adoptNo ,
					method : "GET" ,
					dataType : "json" ,
					headers : {
								"Accept" : "application/json",
								"Content-Type" : "application/json"
							  },
					success : function(data , status) {
// 							console.log(JSON.stringify(data));
// 							alert( data.list.length );
							
							var displayValue = '<table class="table table-hover" >'
										        +'<thead>'
										        	+'<tr>'
											            +'<th style="width: 15%"><strong>No</strong></th>'
											            +'<th style="width: 55%"><strong>��û�� ID</strong></th>'
											            +'<th style="width: 30%"><strong>��û����</strong></th>' 
									           		+'</tr>'
									            +'</thead>'
									            +'<tbody>';
					            
							for( i=0; i<data.list.length; i++ ){
		 						displayValue += 
							            		'<tr class="trApplyNo" id="'+data.list[i].applyNo+'">'
							            			+'<input type="hidden" name="inputApplyNo" value="'+data.list[i].applyNo+'">'
								            		+'<td align="center">'+(i+1)+'</td>'
								            		+'<td align="center">'+data.list[i].id+'</td>'
								            		+'<td align="center">'+data.list[i].regDate+'</td>'
							            		+'</tr>';	
							            		
							}
							displayValue += '</tbody>'+'</table>';
							
							
							if ( str == 'Ȯ��' ) {
								
								$( "#dialog-listApply" ).html(displayValue);
								$( '#dialog-listApply' ).dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
								$( "#dialog-listApply" ).dialog( "open" );
								
							} else if ( str == '' ){
								//�α��� ��������
								if ( id == '' || lv == '������ȸ��' ) {
									$( '#dialog-alreadyApply p' ).html("<br/>����ȸ���� ��û�� �� �ֽ��ϴ�.");
									$( '#dialog-alreadyApply' ).dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
									$( "#dialog-alreadyApply" ).dialog( "open" );
								//�޾ƿ� �����Ϳ� ���̵� ������	
								} else if ( displayValue.indexOf(id) != -1 ) {
									$( '#dialog-alreadyApply p' ).html("<br/>�̹� ��û�ϼ̽��ϴ�.");
									$( '#dialog-alreadyApply' ).dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
									$( "#dialog-alreadyApply" ).dialog( "open" );
								//�α����ѻ���+���̵� ������
								} else {
									self.location = "/apply/addApply?postNo=${adopt.postNo}";
								}
								
								
								
							} else if ( str == 'load' && id != '' && displayValue.indexOf(id) != -1 ) {
								
								$( '#adoptApply' ).text("��û�Ϸ�");
								
							}
							
				},
				error: function(request, status, error){ 
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
		        }
				
			});
 	}
  
  // ���������������������������������������������������������������������������������
  
		function getApply(applyNo){
//     		var applyNo = parseInt( $(this).children($('input')).val().trim()  );
		  	console.log(applyNo);
		  	
// 		  	var displayValue;
		  	
	  		$.ajax( 
			 		{
						url : "/apply/json/getApply/"+applyNo ,
						method : "POST" ,
						dataType : "json" ,
						headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								  },
						success : function(data , status) {
								console.log(JSON.stringify(data));
								console.log(data.raise);
							
								var displayValue;
								
								if( data.mate == "����" && data.raise == "����" ){
									displayValue = 	 '<strong>[����ó]<\/strong> : '+data.phone
													+'<br\/><strong>[����]<\/strong> : '+data.job
													+'<br\/><strong>[������ ����]<\/strong> : '+data.addr
													+'<br\/><strong>[������ ����]<\/strong> : '+data.mate
													+'<br\/><strong>[���� ����]<\/strong> : '+data.mateAgree
													+'<br\/><strong>[��������]<\/strong> : '+data.raise
													+'<br\/><strong>[���� ���� ����]<\/strong> : '+data.currently
													+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+data.plan
													+'<br\/><strong>[1�� ������]<\/strong> : '+data.pay
													+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+data.reason
													+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+data.situation ;
									
								}else if( data.mate == "����" && data.raise == "����" ){
									displayValue = 	 '<strong>[����ó]<\/strong> : '+data.phone
													+'<br\/><strong>[����]<\/strong> : '+data.job
													+'<br\/><strong>[������ ����]<\/strong> : '+data.addr
													+'<br\/><strong>[������ ����]<\/strong> : '+data.mate
													+'<br\/><strong>[���� ����]<\/strong> : '+data.mateAgree
													+'<br\/><strong>[��������]<\/strong> : '+data.raise
													+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+data.plan
													+'<br\/><strong>[1�� ������]<\/strong> : '+data.pay
													+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+data.reason
													+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+data.situation ;
									
								}else if( data.mate == "����" && data.raise == "����" ){
									displayValue = 	 '<strong>[����ó]<\/strong> : '+data.phone
													+'<br\/><strong>[����]<\/strong> : '+data.job
													+'<br\/><strong>[������ ����]<\/strong> : '+data.addr
													+'<br\/><strong>[������ ����]<\/strong> : '+data.mate
													+'<br\/><strong>[��������]<\/strong> : '+data.raise
													+'<br\/><strong>[���� ���� ����]<\/strong> : '+data.currently
													+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+data.plan
													+'<br\/><strong>[1�� ������]<\/strong> : '+data.pay
													+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+data.reason
													+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+data.situation;
									
								}else{
									displayValue = 	 '<strong>[����ó]<\/strong> : '+data.phone
													+'<br\/><strong>[����]<\/strong> : '+data.job
													+'<br\/><strong>[������ ����]<\/strong> : '+data.addr
													+'<br\/><strong>[������ ����]<\/strong> : '+data.mate
													+'<br\/><strong>[��������]<\/strong> : '+data.raise
													+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+data.plan
													+'<br\/><strong>[1�� ������]<\/strong> : '+data.pay
													+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+data.reason
													+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+data.situation ;
								}
								console.log("-----"+displayValue);
				 				$('#'+data.applyNo+'').after('<tr id="appendTr"><td colspan="3" align="left">'+displayValue+'</td></tr>');
				 				$('#appendTr').focus();
							
					},
					error: function(request, status, error){ 
						console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
	//						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
			        }
					
				});
// 	  		return displayValue;
// 	  		console.log("return Ȯ�� : "+displayValue);
	 	}
// 		);
	    
  

	    
  // ���������������������������������������������������������������������������������  
      $(function() {
    		$( "#dialog-listApply" ).on("click" ,'.trApplyNo' ,function() {
    			var applyNo = parseInt( $(this).children($('input')).val().trim()  );
    			console.log("Ȯ��111 : "+applyNo);
    			$('#appendTr').remove();

    			getApply(applyNo);
    			
//     			console.log("return Ȯ�� : "+displayValue);
   		    });
         	
		
    	    $( "button:contains('����')" ).on("click" , function() {
				self.location = "/adopt/updateAdopt?postNo=${adopt.postNo}"
			});
		
			$( "button:contains('����')" ).on("click" , function() {
				$('#dialog-delAdopt').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
				$('#dialog-delAdopt').dialog( "open" );
			});
		
			$( "button:contains('�Ծ��û')" ).on("click" , function() {
				listApply('');
// 				self.location = "/apply/addApply?postNo=${adopt.postNo}"
			});
		
			$( "button:contains('��û��Ȯ��')" ).on("click" , function() {
				listApply('Ȯ��');
// 				self.location = "/apply/listApply?adoptNo=${adopt.postNo}"
			});
		
			$( "#adoptCompleteButton" ).on("click" , function() {
				$('#dialog-adoptComplete').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
				$('#dialog-adoptComplete').dialog( "open" );
			});
		
			$( "#missingCompleteButton" ).on("click" , function() {
				$('#dialog-missingComplete').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
				$('#dialog-missingComplete').dialog( "open" );
			});
		
			$( "button:contains('���')" ).on("click" , function() {
				self.location = "/adopt/listAdopt?boardCode=${adopt.boardCode}"
			});

	  });
  


      

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&callback=initMap"
    async defer></script>
    

  </body>
</html>
  
    