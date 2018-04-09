
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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>Lecture Notes</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/css/demo.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/hotspot/jquery.hotspot.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/hotspot/jquery.hotspot.js"></script>
<script
	src="${contextPath}/js/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#HotspotPlugin_image1")
				.hotspot(
						{
							data : [
									{
										"x" : 50,
										"y" : 240,
										"Message" : " The instrument in encased in a plastic box with sliding doors. This box prevents any accidental release of X-rays which may harm users."
									},
									{
										"x" : 175,
										"y" : 160,
										"Message" : "Inside this box is a mirror which directs the X-ray beam\n" +
                                        "\t\t\t\t\t\t\tdown the flight tube to the sample compartment."
									},
								{
                                    "x" : 350,
                                    "y" : 100,
                                    "Message" : "This is one of the two beam slits. There is a further slit on the other end of this flight tube. These contain a hole (slit) through which the x-ray beam passes before hitting the sample. The size and position of the hole can be adjusted in both the horizontal and vertical direction by motors which are linked to the computer software.This is a very important adjustment which ensures that the X-ray beam is the correct size, shape, and well collimated (parallel sides of the beam)"
								},
                                {
                                    "x" : 630,
                                    "y" : 100,
                                    "Message" : " The instrument in encased in a plastic box with sliding doors. This box prevents any accidental release of X-rays which may harm users."
                                },
                                {
                                    "x" : 800,
                                    "y" : 180,
                                    "Message" : " This is the flight tube for the x-rays to pass from the source to the sample compartment. It is under vacuum to reduce scattering from air molecules."
                                },
                                {
                                    "x" : 630,
                                    "y" : 100,
                                    "Message" : "This is the flight tube for the x-rays to pass from the source to the sample compartment. It is under vacuum to reduce scattering from air molecules."
                                },
                                {
                                    "x" : 170,
                                    "y" : 330,
                                    "Message" : "This is the part of the instrument which generates X-rays by passing an electric current between an electrode and a liquid metal jet."
                                },
                                {
                                    "x" : 180,
                                    "y" : 490,
                                    "Message" : "The base of the instrument is constructed from “optical\n" +
                                    "\t\t\t\t\t\t\tbreadboard” which has bolt holes in a 25mm grid pattern, allowing\n" +
                                    "\t\t\t\t\t\t\tcomponents to be conveniently attached at any desired position."
                                },
                                {
                                    "x" : 500,
                                    "y" : 260,
                                    "Message" : " The instrument in encased in a plastic box with sliding doors. This box prevents any accidental release of X-rays which may harm users."
                                },

							],
							interactivity : "click",
						});

        $("#HotspotPlugin_image3")
            .hotspot(
                {
                    data : [
                        {
                            "x" : 50,
                            "y" : 240,
                            "Message" : " The instrument in encased in a plastic box with sliding doors. This box prevents any accidental release of X-rays which may harm users."
                        },
                        {
                            "x" : 175,
                            "y" : 160,
                            "Message" : "Inside this box is a mirror which directs the X-ray beam\n" +
                            "\t\t\t\t\t\t\tdown the flight tube to the sample compartment."
                        },
                        {
                            "x" : 350,
                            "y" : 100,
                            "Message" : "This is one of the two beam slits. There is a further slit on the other end of this flight tube. These contain a hole (slit) through which the x-ray beam passes before hitting the sample. The size and position of the hole can be adjusted in both the horizontal and vertical direction by motors which are linked to the computer software.This is a very important adjustment which ensures that the X-ray beam is the correct size, shape, and well collimated (parallel sides of the beam)"
                        },
                        {
                            "x" : 630,
                            "y" : 100,
                            "Message" : " The instrument in encased in a plastic box with sliding doors. This box prevents any accidental release of X-rays which may harm users."
                        },
                        {
                            "x" : 800,
                            "y" : 180,
                            "Message" : " This is the flight tube for the x-rays to pass from the source to the sample compartment. It is under vacuum to reduce scattering from air molecules."
                        },
                        {
                            "x" : 630,
                            "y" : 100,
                            "Message" : "This is the flight tube for the x-rays to pass from the source to the sample compartment. It is under vacuum to reduce scattering from air molecules."
                        },
                        {
                            "x" : 170,
                            "y" : 330,
                            "Message" : "This is the part of the instrument which generates X-rays by passing an electric current between an electrode and a liquid metal jet."
                        },
                        {
                            "x" : 180,
                            "y" : 490,
                            "Message" : "The base of the instrument is constructed from “optical\n" +
                            "\t\t\t\t\t\t\tbreadboard” which has bolt holes in a 25mm grid pattern, allowing\n" +
                            "\t\t\t\t\t\t\tcomponents to be conveniently attached at any desired position."
                        },
                        {
                            "x" : 500,
                            "y" : 260,
                            "Message" : " The instrument in encased in a plastic box with sliding doors. This box prevents any accidental release of X-rays which may harm users."
                        },

                    ],
                    interactivity : "click",
                });
	});
</script>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<div class="container-fluid" style="padding: 0px">
		<div class="row">
			<div class="col-md-12">

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
							<li class="active"><a href="${contextPath}/lecturenotes">Lecture
									Notes</a></li>
							<li><a href="${contextPath}/tovirtuallab">VitualLab</a></li>
							<li><a href="${contextPath}/displaynotifs">Notification</a></li>
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
				<div class="text-center">
					<img src="${contextPath}/imgs/xuess%20length%201.jpg"
						style="width: 1200px; height: 300px">
					<h1
						style="position: absolute; top: 100px; left: 400px; color: white">Welcome
						to Lecture Notes</h1>
					<h3
						style="position: absolute; top: 160px; left: 450px; color: white">Find
						more details of machine</h3>
				</div>
				<div class="row">
					<div class="col-xs-3">
						<ul class="nav nav-tabs nav-stacked" data-spy="affix"
							data-offset-top="125" id="myScrollspy">
							<li><a href="${contextPath}/lecturenotes#section-1">X-ray
									Source</a></li>
							<li><a href="${contextPath}/lecturenotes#section-2">Sample
									Compartment</a></li>
							<li><a href="${contextPath}/lecturenotes#section-3">Detector</a></li>
							<li><a href="${contextPath}/lecturenotes#section-6">Download</a></li>
						</ul>
					</div>

					<div class="col-xs-9">
						<h2 id="section-1">X-ray Source</h2>
						<div>
							<div id="HotspotPlugin_image1">
								<img src="${contextPath}/imgs/Lecturenote1.jpeg"
									alt="FirstPicture" style="width: 850px; height: 450px"
									class="img-responsive center-block img-rounded" />
							</div>
						</div>
						<p>1) This is the flight tube for the x-rays to pass from the
							source to the sample compartment. It is under vacuum to reduce
							scattering from air molecules.</p>
						<p id="q9">2) This is one of the two beam slits. There is a
							further slit on the other end of this flight tube. These contain
							a hole (slit) through which the x-ray beam passes before hitting
							the sample. The size and position of the hole can be adjusted in
							both the horizontal and vertical direction by motors which are
							linked to the computer software.This is a very important
							adjustment which ensures that the X-ray beam is the correct size,
							shape, and well collimated (parallel sides of the beam).</p>
						<p>3) Inside this box is a mirror which directs the X-ray beam
							down the flight tube to the sample compartment.</p>
						<p>4) The base of the instrument is constructed from “optical
							breadboard” which has bolt holes in a 25mm grid pattern, allowing
							components to be conveniently attached at any desired position.
							However components are not moved after construction of the
							instrument.This breadboard provides a strong, flat, and vibration
							free base for the instrument.</p>
						<p>5) The instrument in encased in a plastic box with sliding
							doors. This box prevents any accidental release of X-rays which
							may harm users.</p>
						<p>6) This is the part of the instrument which generates
							X-rays by passing an electric current between an electrode and a
							liquid metal jet.</p>
						<hr>
						<h2 id="section-2">Sample Compartment</h2>
						<div id="HotspotPlugin_image2">
							<img src="${contextPath}/imgs/Lecturenote2.jpeg"
								style="width: 850px; height: 450px" alt="SecondPicture"
								class="img-responsive center-block img-rounded" />
						</div>
						<p>1) This is the flight tube from the X-ray source. Generated
							X-rays travel from the source to the sample compartment via this
							tube.</p>
						<p>2) This is one of the two beam slits. There is a further
							slit on the other end of this flight tube. These contain a hole
							(slit) through which the x-ray beam passes before hitting the
							sample. The size and position of the hole can be adjusted in both
							the horizontal and vertical direction by motors which are linked
							to the computer software. This is a very important adjustment
							which ensures that the X-ray beam is the correct size, shape, and
							well collimated (parallel sides of the beam).</p>
						<p>3) This is a CCD camera which allows the user the view
							inside the sample compartment while an experiment is in progress.
							This is very useful when adjusting the position of the sample
							stage to either change sample or investigate a different area of
							the sample.</p>
						<p id="q8">4) This box is the sample compartment. X-rays
							arrive from the X-ray source to the left, pass through the
							sample, and exit to the right where they hit the detector. The
							sample compartment is sealed from the outside as well as from
							both X-ray flight tubes, so can be placed under vacuum to reduce
							scattering from the atmosphere, or remain at atmospheric pressure
							to allow the analysis of liquid samples which would boil under
							vacuum.</p>
						<p>5) A door with a vacuum seal allows access to the sample
							compartment, and also prevents escape of scattered X-rays.</p>
						<p>6) This instrument also has an extra X-ray detector placed
							inside the sample compartment which can be used to perform
							Wide-Angle X-ray scattering (WAXS).</p>
						<p>7) This small tube has a Kapton window which allows the
							sample compartment to be sealed from the X-ray flight tube, and a
							vacuum obtained inside the flight tube but not in the sample
							compartment. X-rays can pass through the window without a
							significant loss in intensity. However, the kapton window does
							scatter X-rays which can be seen on the detector. These must be
							removed by background subtraction.</p>
						<p>8) This is where the sample is positioned in the
							instrument. X-rays incident on the sample from the left hand
							side, are scattered by the sample, and then pass to the detector
							to the right hand side.</p>
						<p>9) This small tube has a Kapton window which allows the
							sample compartment to be sealed from the X-ray flight tube, and a
							vacuum obtained inside the flight tube but not in the sample
							compartment. X-rays can pass through the window without a
							significant loss in intensity. However, the kapton window does
							scatter X-rays which can be seen on the detector. These must be
							removed by background subtraction.</p>
						<p>10) This is the flight tube down which scattered X-rays
							travel on their way from the sample compartment to the detector.
							It is wider than the other flight tube so that it doesn’t block
							the path of the scattered X-rays. The tube is composed of several
							segments allowing the distance between the sample and detect to
							be altered between 0 and 10 meters.</p>
						<p>11) This is the sample holder and motorized stage.
							Depending on the type of sample different sample holders can be
							attached to the motorized stage. The motorized stage allows the
							sample to be moved both in directions perpendicular to the beam,
							as well as parallel to the beam. Multiple samples can be loaded
							onto a sample holder and the software programmed to move to a new
							sample position after the acquisition of a sample. Certain stages
							also allow temperature control of the sample, or shearing of the
							sample while X-ray scattering is performed.</p>
						<p>12) There are multiple ports in the sample chamber which
							can be opened to allow electrical cables or tubes to pass in or
							out of the sample chamber. This is useful when temperature
							controlled stages or stages which require electrical cables are
							used.</p>
						<p>13) Liquid nitrogen is used to cool temperature controlled
							stages. This is placed in a dewar outside of the sample chamber
							and pumped to the sample stage when required by the temperature
							controller.</p>
						<hr>
						<h2 id="section-3">Detector</h2>
						<div id="HotspotPlugin_image3">
							<img src="${contextPath}/imgs/Lecturenote3.jpeg"
								style="width: 850px; height: 450px" alt="ThirdPicture"
								class="img-responsive center-block img-rounded" />
						</div>
						<p id="q1">1) This is the SAXS X-ray detector. Different types
							are available, this one has a resolution of 1 million pixels and
							a high sensitivity to X-rays.</p>
						<p>2) The detector is mounted on a sliding base so that the
							detector can be moved closer or further away from the sample
							chamber. This allows the camera length to be altered and
							different length scales investigated.</p>
						<p id="q7">3) These tubes are the flight tubes from the sample
							chamber to the detector. They are wider than the other flight
							tube so that they do not block the path of the scattered X-rays.
							The whole tube is made up of shorter sections which clip together
							to allow the camera length to be changed. The flight tube is
							placed under vacuum to reduce scattering of X-rays by the
							atmosphere.</p>
						<p>4) This metal component seals the end of the flight tube
							using a kapton membrane through which X-rays can pass. This
							allows the flight tube to be placed under vacuum while allowing
							the detector to not be under vacuum. This component also houses
							the beam stop and beam stop motors which control the position of
							the beam stop.</p>
						<p>5) Electrical cables with provide power to the detector and
							beam stop motors. They also transfer data from the detector to
							the computer software. To allow the camera length to be changed
							without disconnecting and reconnecting electrical cables they are
							longer than needed and have a supporting carriage track.</p>
						<p>6) The detector slides along rail bearings so that the
							camera length can be adjusted. These keep the alignment of the
							beam and detector while allowing the heavy detector to be moved
							relatively easily.</p>
						<hr>

						<h2 id="section-6">Download</h2>
						<p>Download lecture notes and other documents</p>
						<table class="table table-condensed table-hover">
							<thead>
								<tr>
									<th>File name</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${downloadfiles}" var="downloadfile">
									<tr>
										<td><a
											href="${contextPath}/downloadfiles?fileid=${downloadfile.notesfileid}">${downloadfile.filename}</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<hr>
					</div>
				</div>
			</div>
		</div>
	</div>
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
