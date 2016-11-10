<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CharViewer.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=1080, user-scalable=no">

    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/ui-bootstrap-csp.css" rel="stylesheet" />

    <script src="Scripts/angular.js"></script>
    <script src="Scripts/angular-ui/ui-bootstrap.js"></script>
    <script src="Scripts/angular-touch.js"></script>
    <script src="Scripts/angular-filter.min.js"></script>
    <script>
       
        var dndChar = <%= Newtonsoft.Json.JsonConvert.SerializeObject( dChar) %>;
       
    </script>

    <script src="Scripts/app/dndApp.js"></script>

    <style>
        .pageBg {
            width: 1080px;
            margin-left: auto;
            margin-right: auto;
            background-image: url(images/dnd.png);
            height: 100%;
        }




        .bigRowBgNew {
            display: inline-block;
            /*background-image: url(images/bigBG.png);*/
            width: 292px;
            height: 43px;
            vertical-align: top;
            border-radius: 5px;
            padding-left: 11px;
            background-color: rgb(205,142,117);
            margin-bottom: 2px;
            /*margin-left: -4px;
            margin-right: -4px;*/
        }





        .abilityText {
            display: inline-block;
            width: 170px;
            height: 41px;
            font-size: 30px;
        }

        .abilityScore {
            display: inline-block;
            width: 41px;
            height: 36px;
            /*background-image: url(images/SmallBright.png);*/
            /*background-size: 41px 41px;
            background-repeat: no-repeat;*/
            font-size: 30px;
            text-align: center;
            border-radius: 5px;
            background-color: rgb(226,212,183);
            line-height: 38px;
        }

        .abilityScoreText {
            display: inline-block;
            width: 100px;
            height: 38px;
            /*background-image: url(images/SmallBright.png);*/
            /*background-size: 41px 41px;
            background-repeat: no-repeat;*/
            font-size: 20px;
            text-align: center;
            border-radius: 5px;
            background-color: rgb(226,212,183);
            line-height: 38px;
            vertical-align: top;
            margin-top: 2px;
            font-weight: bold;
        }

        .abilityScoreSpace {
            display: inline;
            width: 20px;
            height: 41px;
        }

        .abilityLine {
            display: inline-block;
            width: 336px;
            height: 360px;
            vertical-align: top;
        }

        .defencesArea {
            display: inline-block;
            width: 250px;
            vertical-align: top;
            /*height: 288px;*/
        }

        .initiativeArea {
            display: inline-block;
            width: 180px;
            /*height: 288px;*/
            vertical-align: top;
            position: relative;
            left: -32px;
        }

        .skillsArea {
            display: inline-block;
            width: 180px;
            /*height: 288px;*/
            vertical-align: top;
            position: relative;
            left: -3px;
        }


        .bigRowBgNew {
            display: inline-block;
            /*background-image: url(images/bigBG.png);*/
            width: 288px;
            height: 43px;
            vertical-align: top;
            border-radius: 5px;
            padding-left: 11px;
            background-color: rgb(205,142,117);
            margin-bottom: 2px;
            border: 1px solid #654321;
            margin-bottom: 10px;
            /*margin-left: -4px;
            margin-right: -4px;*/
        }

        .bigRowBgNewlow {
            display: inline-block;
            /*background-image: url(images/bigBG.png);*/
            width: 250px;
            height: 43px;
            vertical-align: top;
            border-radius: 5px;
            padding-left: 11px;
            background-color: rgb(205,142,117);
            margin-bottom: 2px;
            border: 1px solid #654321;
            /*margin-left: -4px;
            margin-right: -4px;*/
        }

        .bigRowBgNewMid {
            display: inline-block;
            /*background-image: url(images/bigBG.png);*/
            width: 100%;
            height: 43px;
            vertical-align: top;
            border-radius: 5px;
            padding-left: 11px;
            background-color: rgb(205,142,117);
            margin-bottom: 2px;
            border: 1px solid #654321;
            /*margin-left: -4px;
            margin-right: -4px;*/
        }

        .bigRowBgNewSmall {
            display: inline-block;
            width: 172px;
            height: 43px;
            vertical-align: top;
            border-radius: 5px;
            padding-left: 11px;
            background-color: rgb(205,142,117);
            margin-bottom: 22px;
            border: 1px solid #654321;
        }


        .abilityTextSmall {
            display: inline-block;
            width: 100px;
            height: 41px;
            font-size: 30px;
        }

        .abilityTextBig {
            display: inline-block;
            width: 77%;
            height: 41px;
            font-size: 30px;
        }



        .spaceDiv {
            height: 25px;
            width: 100%;
        }

        .spaceDivBig {
            height: 10px;
            width: 100%;
        }

        .spaceDivBigPassive {
            height: 10px;
            width: 100%;
        }

        .spaceDivBigDeity {
            height: 10px;
            width: 100%;
        }

        .roundBtnDiv {
            width: 172px;
            height: 47px;
            border-radius: 5px;
            background-color: rgb(198,192,170);
            margin-top: 5px;
        }

        .resistencesBtn {
            width: 190px;
            height: 48px;
            border-radius: 5px;
            background-color: rgb(198,192,170);
            font-size: 29px;
        }

        /*  small box*/

        .noSpaceDiv {
            width: 180px;
            height: 36px;
        }

        .defDiv {
            width: 200px;
        }

        .bigRowBgNewSmaller {
            display: inline-block;
            width: 190px;
            height: 33px;
            vertical-align: top;
            border-radius: 5px;
            padding-left: 11px;
            background-color: rgb(205,142,117);
            margin-bottom: 2px;
        }



        .abilityTextSmaller {
            display: inline-block;
            width: 150px;
            height: 33px;
            font-size: 24px;
            vertical-align: top;
            position: relative;
            top: -3px;
        }

        .abilityScoreSmaller {
            display: inline-block;
            width: 21px;
            height: 30px;
            border-radius: 5px;
            background-color: rgb(226,212,183);
            /*background-size: 41px 41px;*/
            background-repeat: no-repeat;
            font-size: 24px;
            text-align: center;
            position: relative;
            /*top: -1px;*/
            margin-top: 1px;
            vertical-align: top;
            line-height: 30px;
        }

        .languageBox {
            width: 190px;
            height: 92px;
            border-radius: 5px;
            background-color: rgb(226,212,183);
            margin-top: 7px;
            vertical-align: top;
            border: 1px solid #654321;
        }

        .languageBoxTitle {
            width: 190px;
            height: 33px;
            border-radius: 5px 5px 0px 0px;
            background-color: rgb(205,142,117);
            font-size: 24px;
            font-weight: bold;
            vertical-align: top;
            padding-left: 11px;
            line-height: 30px;
        }

        .languageBoxLanguagesDiv {
            overflow-x: hidden;
            overflow-y: auto;
            width: 190px;
            height: 62px;
        }

        .languageBoxLanguages {
            width: 190px;
            height: 28px;
            font-size: 24px;
            vertical-align: top;
            padding-left: 11px;
        }

        .languageBoxLanguagesOdd {
            width: 190px;
            height: 28px;
            font-size: 24px;
            vertical-align: top;
            padding-left: 11px;
            background-color: rgba(206,192,163, 0.3);
        }

        /* skills*/

        .skillsBox {
            width: 230px;
            height: 260px;
            border-radius: 5px;
            background-color: rgb(226,212,183);
            vertical-align: top;
            border: 1px solid #654321;
            position: relative;
            left: 40px;
        }

        .skillsBoxTitle {
            width: 100%;
            height: 30px;
            border-radius: 5px 5px 0px 0px;
            background-color: rgb(205,142,117);
            font-size: 30px;
            font-weight: bold;
            vertical-align: top;
            padding-left: 11px;
            line-height: 21px;
            padding-top: 2px;
        }

        .skillBoxDiv {
            overflow-x: hidden;
            overflow-y: auto;
            width: 100%;
            height: 225px;
        }

        .skillList {
            width: 100%;
            height: 30px;
            font-size: 22px;
            vertical-align: top;
            padding-left: 11px;
        }

        .skillListOdd {
            width: 100%;
            height: 30px;
            font-size: 22px;
            vertical-align: top;
            padding-left: 11px;
            background-color: rgba(206,192,163, 0.3);
        }

        .skillTrained {
            font-weight: bold;
            width: 100%;
            background-color: rgba(182, 255, 160, 0.3);
        }

        .passiveSight {
            width: 138px;
            font-size: 24px;
            line-height: 43px;
            height: 43px;
            vertical-align: top;
            position: relative;
            left: 80px;
        }

        .abilityTextBigPassive {
            font-size: 30px;
            width: 70px;
            line-height: 41px;
            display: inline-block;
        }

        .deityArea {
            width: 230px;
            font-size: 24px;
            line-height: 43px;
            height: 43px;
            vertical-align: top;
            position: relative;
            left: 40px;
        }

        .abilityTextdeityArea {
            font-size: 30px;
            width: 105px;
            line-height: 41px;
            display: inline-block;
        }

        .TopBar {
            width: 1080px;
            height: 30px;
            background-color: #8b342e;
        }

        .mainTopArea {
            padding-left: 15px;
            padding-right: 15px;
        }

        .nameArea {
            font-size: 40px;
            font-weight: bold;
        }

        .GeneralDescriptionArea {
            font-size: 25px;
            padding-left: 11px;
        }

        .levelDetails {
            font-size: 25px;
            width: 573px;
            display: inline-block;
            padding-left: 11px;
        }

        .weightDetails {
            font-size: 25px;
            display: inline-block;
            margin-bottom: 10px;
        }

        .detailsBorder {
            background-color: rgba(206,192,163, 0.4);
        }

        .PowersArea {
            padding-top: 30px;
            margin-left: 15px;
            display: inline-block;
            height: 400px;
            width: 780px;
        }

        .hpArea {
            padding-top: 15px;
            min-height: 75px;
            width: 100%;
            padding-left: 15px;
            padding-right: 15px;
        }



        .hpBox {
            display: inline-block;
            width: 328px;
            height: 60px;
            background-color: rgb(205,142,117);
            padding-left: 11px;
            border-radius: 5px;
            border: 1px solid #654321;
        }

        .hpBoxLeftSide {
            display: inline-block;
            width: 180px;
            height: 60px;
            line-height: 30px;
            vertical-align: top;
        }

        .hpBoxRightSidePP {
            display: inline-block;
            width: 131px;
            height: 59px;
            line-height: 59px;
            vertical-align: top;
            background: rgb(46,45,40); /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(rgb(86,85,81), rgb(46,45,40)); /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(rgb(86,85,81), rgb(46,45,40)); /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(rgb(86,85,81), rgb(46,45,40)); /* For Firefox 3.6 to 15 */
            background: linear-gradient(rgb(86,85,81), rgb(46,45,40)); /* Standard syntax */
            border-bottom-right-radius: 5px;
            border-top-right-radius: 5px;
            padding-left: 30px;
            position: relative;
            left: 1px;
        }

        .hpBoxRightSide {
            display: inline-block;
            width: 131px;
            height: 59px;
            line-height: 59px;
            vertical-align: top;
            background: rgb(46,45,40); /* For browsers that do not support gradients */
            background: -webkit-linear-gradient(rgb(86,85,81), rgb(46,45,40)); /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(rgb(86,85,81), rgb(46,45,40)); /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(rgb(86,85,81), rgb(46,45,40)); /* For Firefox 3.6 to 15 */
            background: linear-gradient(rgb(86,85,81), rgb(46,45,40)); /* Standard syntax */
            border-bottom-right-radius: 5px;
            border-top-right-radius: 5px;
            padding-left: 16px;
            position: relative;
            left: 1px;
        }

        .hpBoxTitle {
            font-size: 30px;
            height: 25px;
            vertical-align: middle;
            margin-top: 5px;
            line-height: 25px;
        }

        .hpBoxBloodied {
            font-size: 24px;
            height: 17px;
            vertical-align: top;
        }

        .hpBoxTitleSurges {
            font-size: 30px;
            height: 54px;
            vertical-align: middle;
            margin-top: 3px;
            line-height: 25px;
            display: inline-block;
            width: 100px;
        }

        .hpBoxTitlePP {
            font-size: 30px;
            height: 60px;
            vertical-align: middle;
            line-height: 60px;
            display: inline-block;
            width: 180px;
        }

        .hpBoxSurges {
            font-size: 24px;
            vertical-align: top;
            height: 17px;
            display: inline-block;
            width: 50px;
            padding-left: 20px;
            padding-top: 3px;
        }

        .hpBoxSurgesValue {
            font-size: 30px;
            position: relative;
            top: -4px;
            left: 6px;
        }

        .hpBoxHpTextCurrent {
            font-size: 30px;
            color: #ffffff;
            display: inline-block;
            position: relative;
            top: -13px;
            left: 10px;
        }

        .hpBoxHpTextMax {
            font-size: 30px;
            color: #ffffff;
            display: inline-block;
            position: relative;
            top: 5px;
            left: 12px;
        }

        .hpBoxHpSplitter {
            font-size: 47px;
            position: relative;
            color: #ffffff;
            left: 10px;
            display: inline-block;
            top: 3px;
        }

        .hpBoxHpSplitterNoPP {
            font-size: 47px;
            position: relative;
            color: #ffffff;
            left: 23px;
            display: inline-block;
            top: -3px;
        }

        .horizontalSpacer {
            display: inline-block;
            height: 1px;
            width: 24px;
        }

        .powersTitle {
            background: rgb(175,64,45);
            background: -webkit-linear-gradient(rgb(175,64,45), rgb(44,11,0));
            background: -o-linear-gradient(rgb(175,64,45), rgb(44,11,0));
            background: -moz-linear-gradient(rgb(175,64,45), rgb(44,11,0));
            background: linear-gradient(rgb(175,64,45), rgb(44,11,0));
            height: 40px;
            padding-top: 2px;
            vertical-align: top;
            width: 780px;
        }



        .PowerSortElement {
            display: inline-block;
            width: 80px;
            height: 36px;
            border: 1px solid #ffffff;
            color: #ffffff;
            text-align: center;
            line-height: 28px;
            font-size: 26px;
            border-right: none;
            cursor: pointer;
            vertical-align: top;
        }

        .PowerbigSpacer {
            display: inline-block;
            width: 90px;
            height: 36px;
            vertical-align: top;
        }

        .PowerHideUsed {
            display: inline-block;
            font-size: 26px;
            color: #ffffff;
            height: 36px;
            vertical-align: top;
        }

        .PowerEditBtn {
            display: inline-block;
            font-size: 26px;
            color: #ffffff;
            height: 36px;
            vertical-align: top;
        }

        .PowerSortElementFirst {
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
            margin-left: 80px;
        }

        .PowerSortElementLast {
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
            border-right: 1px solid #ffffff;
        }

        .PowerSortElementSelected {
            background-color: white;
            color: rgb(44,11,0);
        }

        .powerGroupName {
            background-color: #cfcfcf;
            width: 780px;
            padding-left: 11px;
            font-size: 24px;
        }

        .powersContainer {
            overflow-x: hidden;
            overflow-y: auto;
            height: 500px;
            width: 780px;
        }

        .powersList {
            display: block;
        }

        .singlePowerTitle {
            background-color: #df4233;
            width: 780px;
            padding-left: 11px;
            font-size: 24px;
            color: #ffffff;
        }

        .singlePowerText {
            font-size: 24px;
            width: 762px;
            padding-left: 11px;
            padding-right: 15px;
        }

        .singlePowerTextFlavor {
         font-size: 16px;
        }

        .singlePowerTextMain {
         font-size: 20px;
        }

        .singlePowerTextWep {
         font-size: 24px;
        }

        .powerTypeAtWill {
            background-color: rgb(0,140,0);
        }

        .powerTypeEncounter {
            background-color: rgb(147,5,3);
        }

        .powerTypeDaily {
            background-color: rgb(115,115,115);
        }

        .singlePowerTitleName {
            display: inline-block;
            width: 300px;
        }

        .singlePowerTitleMore {
            display: inline-block;
          text-align:right;
          width: 430px;
          margin-right: 15px;
        }
    </style>

</head>
<body ng-app="dndApp">
    <form id="form1" runat="server">
        <div ng-controller="dndController" class="pageBg">
            <div class="TopBar"></div>
            <div class="mainTopArea">
                <div class="nameArea">{{character.Details.Name}}</div>
                <div class="GeneralDescriptionArea">
                    <span><span class="detailsBorder">Gender: {{character.Details.Gender}} </span><span class="detailsBorder">Race: {{character.Details.Race}} </span><span class="detailsBorder">Class: {{character.Details.Class}} </span><span class="detailsBorder">Alignment:{{character.Details.Alignment}}</span></span>
                </div>
                <div class="detailsArea">
                    <span class="levelDetails "><span class="detailsBorder">Level {{character.Details.Level}} / {{character.Details.Experience}} Xp</span></span>
                    <span class="weightDetails"><span class="detailsBorder">Height: {{character.Details.Height}} cm  /  Weight: {{character.Details.Weight}} kg</span></span>
                </div>
                <div class="abilityLine">
                    <div>
                        <%-- <div class="leftEdge"></div>--%>
                        <div class="bigRowBgNew">
                            <div class="abilityText">Strength</div>
                            <div class="abilityScore">{{character.AbilityScores.Strength}}</div>
                            <div class="abilityScoreSpace">&nbsp;</div>
                            <div class="abilityScore">{{character.AbilityScores.StrengthMod}}</div>
                        </div>
                        <%--  <div class="rightEdge"></div>--%>
                    </div>
                    <div>

                        <div class="bigRowBgNew">
                            <div class="abilityText">Constitution</div>
                            <div class="abilityScore">{{character.AbilityScores.Constitution}}</div>
                            <div class="abilityScoreSpace">&nbsp;</div>
                            <div class="abilityScore">{{character.AbilityScores.ConstitutionMod}}</div>
                        </div>

                    </div>
                    <div class="spaceDiv"></div>
                    <div>
                        <div class="bigRowBgNew">
                            <div class="abilityText">Dexterity</div>
                            <div class="abilityScore">{{character.AbilityScores.Dexterity}}</div>
                            <div class="abilityScoreSpace">&nbsp;</div>
                            <div class="abilityScore">{{character.AbilityScores.DexterityMod}}</div>
                        </div>
                    </div>
                    <div>
                        <div class="bigRowBgNew">
                            <div class="abilityText">Intelligence</div>
                            <div class="abilityScore">{{character.AbilityScores.Intelligence}}</div>
                            <div class="abilityScoreSpace">&nbsp;</div>
                            <div class="abilityScore">{{character.AbilityScores.IntelligenceMod}}</div>
                        </div>
                    </div>
                    <div class="spaceDiv"></div>
                    <div>
                        <div class="bigRowBgNew">
                            <div class="abilityText">Wisdom</div>
                            <div class="abilityScore">{{character.AbilityScores.Wisdom}}</div>
                            <div class="abilityScoreSpace">&nbsp;</div>
                            <div class="abilityScore">{{character.AbilityScores.WisdomMod}}</div>
                        </div>
                    </div>
                    <div>
                        <div class="bigRowBgNew">
                            <div class="abilityText">Charisma</div>
                            <div class="abilityScore">{{character.AbilityScores.Charisma}}</div>
                            <div class="abilityScoreSpace">&nbsp;</div>
                            <div class="abilityScore">{{character.AbilityScores.CharismaMod}}</div>
                        </div>
                    </div>
                </div>
                <div class="defencesArea">
                    <div class="defDiv">
                        <div class="bigRowBgNewSmall">
                            <div class="abilityTextSmall">AC</div>
                            <div class="abilityScore">{{character.Defenses.AC}}</div>
                        </div>
                    </div>
                    <div class="defDiv">
                        <div class="bigRowBgNewSmall">
                            <div class="abilityTextSmall">FORT</div>
                            <div class="abilityScore">{{character.Defenses.Fortitude}}</div>
                        </div>
                    </div>
                    <div class="defDiv">
                        <div class="bigRowBgNewSmall">
                            <div class="abilityTextSmall">REF</div>
                            <div class="abilityScore">{{character.Defenses.Reflex}}</div>
                        </div>
                    </div>
                    <div class="defDiv">
                        <div class="bigRowBgNewSmall">
                            <div class="abilityTextSmall">WILL</div>
                            <div class="abilityScore">{{character.Defenses.Will}}</div>
                        </div>
                    </div>
                    <div class="spaceDivBig"></div>
                    <div>
                        <div class="bigRowBgNewlow">
                            <div class="abilityTextBig">Milestones</div>
                            <div class="abilityScore">{{character.Details.Milestones}}</div>
                        </div>
                    </div>
                    <div>
                        <div class="bigRowBgNewlow">
                            <div class="abilityTextBig">Action Points</div>
                            <div class="abilityScore">{{character.Details.ActionPoints}}</div>
                        </div>
                    </div>
                </div>
                <div class="initiativeArea">
                    <div class="noSpaceDiv">
                        <div class="bigRowBgNewSmaller">
                            <div class="abilityTextSmaller">Initiative</div>
                            <div class="abilityScoreSmaller">{{character.Details.Initiative}}</div>
                        </div>
                    </div>
                    <div class="noSpaceDiv">
                        <div class="bigRowBgNewSmaller">
                            <div class="abilityTextSmaller">Speed</div>
                            <div class="abilityScoreSmaller">{{character.Details.Speed}}</div>
                        </div>
                    </div>
                    <div class="noSpaceDiv">
                        <div class="bigRowBgNewSmaller">
                            <div class="abilityTextSmaller">Saving Throw</div>
                            <div class="abilityScoreSmaller">{{character.Details.SavingThrows}}</div>
                        </div>
                    </div>

                    <div class="roundBtnDiv">
                        <button class="resistencesBtn">Resistences</button>
                    </div>

                    <div class="languageBox">
                        <div class="languageBoxTitle">Languages</div>
                        <div class="languageBoxLanguagesDiv">
                            <div class="languageBoxLanguages" ng-repeat="lang in character.Details.languages" ng-class="{languageBoxLanguagesOdd: $odd}">{{lang}} </div>

                        </div>
                    </div>

                    <div class="spaceDivBigPassive"></div>
                    <div class="passiveSight">
                        <div>
                            <div class="bigRowBgNewMid">
                                <div class="abilityTextBigPassive">PI</div>
                                <div class="abilityScore">{{character.Details.PassiveInsight}}</div>
                            </div>
                        </div>
                        <div>
                            <div class="bigRowBgNewMid">
                                <div class="abilityTextBigPassive">PP</div>
                                <div class="abilityScore">{{character.Details.PassivePerception}}</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="skillsArea">
                    <div class="skillsBox">
                        <div class="skillsBoxTitle">skills</div>
                        <div class="skillBoxDiv">
                            <div class="skillList" ng-repeat="skill in character.skills" ng-class="{skillTrained : skill.isTrained, skillListOdd : $odd}"><span>{{skill.name}} ({{skill.skillScore}})</span> <span ng-if=" skill.isTrained">T </span></div>

                        </div>
                    </div>
                    <div class="spaceDivBigDeity"></div>
                    <div class="deityArea">
                        <div>
                            <div class="bigRowBgNewMid">
                                <div class="abilityTextdeityArea">Vision</div>
                                <div class="abilityScoreText">{{character.Details.Vision}}</div>
                            </div>
                        </div>
                        <div>
                            <div class="bigRowBgNewMid">
                                <div class="abilityTextdeityArea">Deity</div>
                                <div class="abilityScoreText">{{character.Details.Deity}}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hpArea">

                <div class="hpBox">
                    <div class="hpBoxLeftSide">
                        <div class="hpBoxTitle">Hit Points</div>
                        <div class="hpBoxBloodied">(bloodied {{character.Details.HpBloodied}})</div>
                    </div>
                    <div class="hpBoxRightSide">
                        <div class="hpBoxHpTextCurrent">{{character.Details.HpCurrent}}</div>
                        <div class="hpBoxHpSplitter">/</div>
                        <div class="hpBoxHpTextMax">{{character.Details.HpMax}}</div>
                    </div>
                </div>

                <div class="horizontalSpacer"></div>

                <div class="hpBox">
                    <div class="hpBoxLeftSide">
                        <div class="hpBoxTitleSurges">Healing Surges</div>
                        <div class="hpBoxSurges">Value <span class="hpBoxSurgesValue">{{character.Details.HealingSurgesValue}}</span></div>
                    </div>
                    <div class="hpBoxRightSide">
                        <div class="hpBoxHpTextCurrent">{{character.Details.HealingSurgesCurrent}}</div>
                        <div class="hpBoxHpSplitter">/</div>
                        <div class="hpBoxHpTextMax">{{character.Details.HealingSurgesMax}}</div>
                    </div>
                </div>

                <div class="horizontalSpacer"></div>

                <div class="hpBox">
                    <div class="hpBoxLeftSide">
                        <div class="hpBoxTitlePP">Power Points</div>

                    </div>
                    <div class="hpBoxRightSidePP">
                        <div class="hpBoxHpTextCurrent">{{character.Details.PowerPointsCurrent}}</div>
                        <div class="hpBoxHpSplitter" ng-show="character.Details.HasPowerPoints">/</div>
                        <div class="hpBoxHpSplitterNoPP" ng-show="!character.Details.HasPowerPoints">-</div>
                        <div class="hpBoxHpTextMax">{{character.Details.PowerPointsMax}}</div>
                    </div>
                </div>

            </div>
            <div class="PowersArea">
                <div class="powersTitle">
                    <div class="PowerSortElement PowerSortElementFirst" ng-click="powerSortClick('Action')" ng-class="{PowerSortElementSelected : propertyName=='Action'}">action</div><div class="PowerSortElement" ng-click="powerSortClick('Usage')" ng-class="{PowerSortElementSelected : propertyName=='usage'}">Usage</div><div class="PowerSortElement" ng-click="powerSortClick('Name')" ng-class="{PowerSortElementSelected : propertyName=='name'}">Name</div><div class="PowerSortElement PowerSortElementLast" ng-click="powerSortClick('Level')" ng-class="{PowerSortElementSelected : propertyName=='level'}">Level</div>
                    <div class="PowerbigSpacer"></div>
                    <div class="PowerHideUsed">HideUsed</div>
                    <div class="PowerbigSpacer"></div>
                    <div class="PowerEditBtn">Edit</div>
                </div>

                <div class="powersContainer">
                    <div class="powerGroup" ng-repeat="(key, value) in character.Powers | groupBy: propertyName">
                        <div class="powerGroupName" ng-show="propertyName != 'Name'">{{ key }}</div>
                        <div class="powersList" ng-repeat="power in value">
                            <div class="singlePowerTitle " ng-class="{powerTypeDaily: power.Usage=='Daily', powerTypeEncounter: power.Usage=='Encounter', powerTypeAtWill: power.Usage=='At-Will'}">
                                <div class="singlePowerTitleName">
                                    {{power.name}}
                                </div>
                                <div class="singlePowerTitleMore">
                                    {{power.Usage}} <span ng-show="power.range">-</span> {{power.range}} <span ng-show="power.target">-</span> {{power.target}}
                                </div>
                            </div>
                            <div class="singlePowerText">
                                <div class="singlePowerTextFlavor" ng-show="power.flavorText">{{power.flavorText}}</div>
                                <div class="singlePowerTextMain" ng-show="power.AttackType || power.Hit">Attack: {{power.AttackType}} Hit: {{power.Hit}}</div>
                                <div class="singlePowerTextWep" ng-show="power.weapons[0]">{{power.weapons[0].name}}: +{{power.weapons[0].attackBonus}} attack, {{power.weapons[0].Damage}}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
