<%--
    Document   : helloView
    Created on : May 2, 2010, 2:06:25 PM
    Author     : nbuser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <Link ReL=stylesheet HreF="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" inteGRIty=sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z CrOSsOrigIn="anonymous"/>
        <TItle>Welcome to Calcu</TiTLe>
        <StYle>
            @keyframes move_wave {
                0% {
                    transform: translateX(0) translateZ(0) scaleY(1)
                }

                50% {
                    transform: translateX(-25%) translateZ(0) scaleY(0.55)
                }

                100% {
                    transform: translateX(-50%) translateZ(0) scaleY(1)
                }
            }

            .waveWrapper {
                overflow: hidden;
                position: absolute;
                left: 0;
                right: 0;
                bottom: 0;
                top: 0;
                margin: auto;
            }

            .waveWrapperInner {
                position: absolute;
                width: 100%;
                overflow: hidden;
                height: 100%;
                bottom: -1px;
                background-image: linear-gradient(to top, #753475 20%, #312670 80%);
            }

            .bgTop {
                z-index: -5;
                opacity: 0.5;
            }

            .bgMiddle {
                z-index: -10;
                opacity: 0.75;
            }

            .bgBottom {
                z-index: -15;
            }

            .wave {
                position: absolute;
                left: 0;
                width: 200%;
                height: 100%;
                background-repeat: repeat no-repeat;
                background-position: 0 bottom;
                transform-origin: center bottom;
            }

            .waveTop {
                background-size: 50% 100px;
            }

            .waveAnimation .waveTop {
                animation: move-wave 3s;
                -webkit-animation: move-wave 3s;
                -webkit-animation-delay: 1s;
                animation-delay: 1s;
            }

            .waveMiddle {
                background-size: 50% 120px;
            }

            .waveAnimation .waveMiddle {
                animation: move_wave 10s linear infinite;
            }

            .waveBottom {
                background-size: 50% 100px;
            }

            .waveAnimation .waveBottom {
                animation: move_wave 15s linear infinite;
            }

            .footer {
                text-align: center;
                font-size: 12px;
            }

            .inner {
                position: relative;
                max-width: 960px;
                height: 100%;
                margin: 0 auto;
                display: flex;
                flex-direction: column;
                flex-wrap: nowrap;
                justify-content: center;
                align-items: center;
                text-align: center;
                padding: 40px;
                z-index: 4;
            }
        </style>


    </head>
    <body>


        <diV class ="inner" styLe="max-width: 500px; margin: 30px auto 0px auto; padding: 10px; color: white">

            <H1>Hai, Welcome to CALCU!</H1>
            <BR/>
            <H6>CALCU adalah aplikasi kalkulator sederhana, yang membantu kamu menyelesaikan tugas dengan cepat.</h6>
            <br/>

              <form:form method="POST" action="/calc.htm" modelAttribute="calculator">
             <table>
                <tr>
                    <td><form:label path="angka1">Name</form:label></td>
                    <td><form:input path="angka1"/>${angka1}</td>
                </tr>
                <tr>
                    <td><form:label path="angka2">Id</form:label></td>
                    <td><form:input path="angka2"/>${angka2}</td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
        </Div>
        <dIV ClAss="footer">
            <Br/>
            <Br/>
            <bR/>
            <P>Jessi, Raven  2020 © Tugas 4 Pemrograman Lanjut
        </dIv>
        <DIV CLaSs="waveWrapper waveAnimation">
            <DIV Class="waveWrapperInner bgTop">
                <Div class="wave waveTop"
                     style="background-image: url('http://front-end-noobs.com/jecko/img/wave-top.png')"></dIV>
            </div>
            <div class="waveWrapperInner bgMiddle">
                <DIv class="wave waveMiddle"
                     style="background-image: url('http://front-end-noobs.com/jecko/img/wave-mid.png')"></diV>
            </DIV>
            <DiV CLaSS="waveWrapperInner bgBottom">
                <div class="wave waveBottom"
                     style="background-image: url('http://front-end-noobs.com/jecko/img/wave-bot.png')"></DiV>
            </dIv>
        </diV>
    <body>
