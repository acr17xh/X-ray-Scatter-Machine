<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Virtual tour</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap.min.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.pannellum.org/2.3/pannellum.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.pannellum.org/2.3/pannellum.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<!--  -->
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="${contextPath}/home">Home</a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="${contextPath}/lecturenotes">Lecture Notes</a></li>
							<li class="active"><a href="${contextPath}/tovirtuallab">VitualLab</a></li>
							<li><a href="${contextPath}/">Notification</a></li>
							<li><a href="${contextPath}/quiz">Quiz</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>


	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">

				<h1 class="cover-heading text-center">Panorama Viewer for the Laboratory</h1>
				<p class="lead text-center">Here is the Panorama virtual tour of the Laboratory, click buttons jump to relevent pages or another Panorama picture</p>

				<div id="panorama2" style="width:1250px;height:650px;"></div>
				<script>
					pannellum.viewer('panorama2', {

						/*
						 * Uncomment the next line to print the coordinates of mouse clicks
						 * to the browser's developer console, which makes it much easier
						 * to figure out where to place hot spots. Always remove it when
						 * finished, though.
						 */
                        "default": {
                            "firstScene": "XRay1",
							"compass":true,
                            "autoLoad" : true,
							"autoRotate": 6,
							"autoRotateStopDelay": 50000,
                            "sceneFadeDuration": 1500,
							"hfov":118
                        },

                        "scenes": {
                            "XRay1": {
                                "title": "XRay1",
                                "type": "equirectangular",
                                "panorama" : "${contextPath}/imgs/Panoramaimg1.jpg",
                                //"hotSpotDebug": true,
                                "hotSpots" : [
                                    {
                                        "pitch" : -31,
                                        "yaw" : -148,
                                        "type" : "scene",
										"sceneId":"Lab",
                                        "text" : "See our work space!"
                                    },
                                    {
                                        "pitch" : -21,
                                        "yaw" : -60,
                                        "type" : "scene",
                                        "sceneId":"XRay2",
                                        "text" : "See our equipment!"
                                    },
                                    {
                                        "pitch" : -13.5,
                                        "yaw" : 121,
                                        "type" : "scene",
                                        "sceneId":"XRay3",
                                        "text" : "See empty tunnel"
                                    },
                                    {
                                        "pitch" : -4,
                                        "yaw" : 120,
                                        "type" : "scene",
                                        "sceneId":"XRay4",
                                        "text" : "See empty tunnel again"
                                    },

                                    {
                                        "pitch" : -18,
                                        "yaw" : 47,
                                        "type" : "info",
                                        "text" : "\tThis instrument also has an extra X-ray detector placed inside the sample compartment which can be used to perform Wide-Angle X-ray scattering (WAXS).\n",
										"URL": "https://en.wikipedia.org/wiki/Wide-angle_X-ray_scattering"
                                    },
                                    {
                                        "pitch" : 3.3,
                                        "yaw" : -26.4,
                                        "type" : "info",
                                        "text" : "\this is the flight tube from the X-ray source. Generated X-rays travel from the source to the sample compartment via this tube.\n",

                                    },
                                    {
                                        "pitch" : 5.5,
                                        "yaw" : -25.8,
                                        "type" : "info",
                                        "text" : "This is one of the two beam slits. There is a further slit on the other end of this flight tube.",

                                    },
                                    {
                                        "pitch" : 55.8,
                                        "yaw" : 24.5,
                                        "type" : "info",
                                        "text" : "This box is the sample compartment. X-rays arrive from the X-ray source to the left, pass through the sample, and exit to the right where they hit the detector.",
                                    },
                                    {
                                        "pitch" : -4,
                                        "yaw" : 60,
                                        "type" : "info",
                                        "text" : "A door with a vacuum seal allows access to the sample compartment, and also prevents escape of scattered X-rays.",
                                    },
                                    {
                                        "pitch" : 8.15,
                                        "yaw" : 6.77,
                                        "type" : "info",
                                        "text" : "This small tube has a Kapton window which allows the sample compartment to be sealed from the X-ray flight tube",
                                    },
                                    {
                                        "pitch" : 11.76,
                                        "yaw" : 27.37,
                                        "type" : "info",
                                        "text" : "This is where the sample is positioned in the instrument",

                                    },
                                    {
                                        "pitch" : 12.23,
                                        "yaw" : 48,
                                        "type" : "info",
                                        "text" : "This small tube has a Kapton window which allows the sample compartment to be sealed from the X-ray flight tube",

                                    },

                                    {
                                        "pitch" : 11.3,
                                        "yaw" : 97.2,
                                        "type" : "info",
                                        "text" : "1)\tThis is the SAXS X-ray detector. Different types are available, this one has a resolution of 1 million pixels and a high sensitivity to X-rays.\n",
                                    	"URL" :"https://en.wikipedia.org/wiki/Small-angle_X-ray_scattering"
									},
                                    {
                                        "pitch" : 9.0,
                                        "yaw" : 83.1,
                                        "type" : "info",
                                        "text" : "This metal component seals the end of the flight tube using a kapton membrane through which X-rays can pass.",
                                    },
                                    {
                                        "pitch" : -34,
                                        "yaw" : 87,
                                        "type" : "info",
                                        "text" : "The detector is mounted on a sliding base so that the detector can be moved closer or further away from the sample chamber. ",
                                    },
                                ]
                            },

                            "XRay2": {
                                "title": "XRay2",
                                "type": "equirectangular",
                                "panorama" : "${contextPath}/imgs/Panoramaimg3.jpg",
                                //"hotSpotDebug": true,
                                "hotSpots" : [
                                    {
                                        "pitch" : -29,
                                        "yaw" : -177,
                                        "type" : "scene",
                                        "sceneId":"Lab",
                                        "text" : "See our work space!"
                                    },
                                    {
                                        "pitch" : -7.5,
                                        "yaw" : 99,
                                        "type" : "scene",
                                        "sceneId":"XRay1",
                                        "text" : "See XRay machine"
                                    },
                                    {
                                        "pitch" : -5.5,
                                        "yaw" : 106.8,
                                        "type" : "scene",
                                        "sceneId":"XRay3",
                                        "text" : "See empty tunnel"
                                    },
                                    {
                                        "pitch" : -2.7,
                                        "yaw" : 106,
                                        "type" : "scene",
                                        "sceneId":"XRay4",
                                        "text" : "See empty tunnel again"
                                    },

                                    {
                                        "pitch" : 4.8,
                                        "yaw" : -18,
                                        "type" : "info",
                                        "text" : "This is the flight tube for the x-rays to pass from the source to the sample compartment."
                                    },
                                    {
                                        "pitch" : 4.8,
                                        "yaw" : -18,
                                        "type" : "info",
                                        "text" : "This is one of the two beam slits. There is a further slit on the other end of this flight tube. "
                                    },
                                    {
                                        "pitch" : 6.81,
                                        "yaw" : -62.7,
                                        "type" : "info",
                                        "text" : "Inside this box is a mirror which directs the X-ray beam down the flight tube to the sample compartment."
                                    },
                                    {
                                        "pitch" : -21.7,
                                        "yaw" : -59,
                                        "type" : "info",
                                        "text" : "The base of the instrument is constructed from “optical breadboard” which has bolt holes in a 25mm grid pattern, allowing components to be conveniently attached at any desired position."
                                    },
                                    {
                                        "pitch" : -11,
                                        "yaw" : 9.5,
                                        "type" : "info",
                                        "text" : "The instrument in encased in a plastic box with sliding doors. "
                                    },
                                    {
                                        "pitch" : -9.8,
                                        "yaw" : -66.5,
                                        "type" : "info",
                                        "text" : "This is the part of the instrument which generates X-rays by passing an electric current between an electrode and a liquid metal jet."
                                    },
                                    {
                                        "pitch" : -34,
                                        "yaw" : -25.7,
                                        "type" : "info",
                                        "text" : "This is the flight tube down which scattered X-rays travel on their way from the sample compartment to the detector.",

                                    },
                                ]
                            },

                            "XRay3": {
                                "title": "XRay3",
                                "type": "equirectangular",
                                "panorama" : "${contextPath}/imgs/Panoramaimg4.jpg",
                                //"hotSpotDebug": true,
                                "hotSpots" : [
                                    {
                                        "pitch" : -18,
                                        "yaw" : -102,
                                        "type" : "scene",
                                        "sceneId":"Lab",
                                        "text" : "See our work space!"
                                    },
                                    {
                                        "pitch" : -4,
                                        "yaw" : -47,
                                        "type" : "scene",
                                        "sceneId":"XRay1",
                                        "text" : "See XRay machine"
                                    },
                                    {
                                        "pitch" : -6,
                                        "yaw" : -52,
                                        "type" : "scene",
                                        "sceneId":"XRay2",
                                        "text" : "See equipment"
                                    },
                                    {
                                        "pitch" : -6.5,
                                        "yaw" : 128,
                                        "type" : "scene",
                                        "sceneId":"XRay4",
                                        "text" : "See empty tunnel"
                                    }
                                ]
                            },

                            "XRay4": {
                                "title": "XRay4",
                                "type": "equirectangular",
                                "panorama" : "${contextPath}/imgs/Panoramaimg5.jpg",
                                //"hotSpotDebug": true,
                                "hotSpots" : [
                                    {
                                        "pitch" : -0.25,
                                        "yaw" : -86,
                                        "type" : "scene",
                                        "sceneId":"Lab",
                                        "text" : "See our work space!"
                                    },
                                    {
                                        "pitch" : -4,
                                        "yaw" : -49.5,
                                        "type" : "scene",
                                        "sceneId":"XRay1",
                                        "text" : "See XRay machine"
                                    },
                                    {
                                        "pitch" : -0.4,
                                        "yaw" : -50.5,
                                        "type" : "scene",
                                        "sceneId":"XRay2",
                                        "text" : "See equipment"
                                    },
                                    {
                                        "pitch" : -10,
                                        "yaw" : -49,
                                        "type" : "scene",
                                        "sceneId":"XRay3",
                                        "text" : "See empty tunnel"
                                    }
                                ]
                            },

                            "Lab": {
                                "title": "Lab",
                                "type": "equirectangular",
                                "panorama": "${contextPath}/imgs/Panoramaimg2.jpg",
                                //"hotSpotDebug": true,
                                "hotSpots": [
                                    {
                                        "pitch": 2.4,
                                        "yaw": 173,
                                        "type": "scene",
                                        "text": "See our XRay machine!",
                                        "sceneId": "XRay1",
                                        "targetYaw": -23,
                                        "targetPitch": 2
                                    },
                                    {
                                        "pitch" : 0.61,
                                        "yaw" : 153,
                                        "type" : "scene",
                                        "sceneId":"XRay2",
                                        "text" : "See equipment"
                                    },
                                    {
                                        "pitch" : 10.,
                                        "yaw" : -137,
                                        "type" : "scene",
                                        "sceneId":"XRay3",
                                        "text" : "See empty tunnel"
                                    },
                                    {
                                        "pitch" : 11.9,
                                        "yaw" : -123.7,
                                        "type" : "scene",
                                        "sceneId":"XRay4",
                                        "text" : "See empty tunnel"
                                    }
                                ]
                            }
                        }
					});
				</script>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-9 column"></div>
	</div>
	<hr>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<footer class="py-5 bg-dark">
					<div class="container">
						<p class="m-0 text-center text-white">Copyright &copy; Your
							Website 2017</p>
					</div>
					<!-- /.container -->
				</footer>
			</div>
		</div>
	</div>
</body>
</html>
