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
            font-size: 17px;
            text-align: center;
            border-radius: 5px;
            background-color: rgb(226,212,183);
            line-height: 38px;
            vertical-align: top;
            margin-top: 2px;
        }

        .abilityScoreSpace {
            display: inline;
            width: 20px;
            height: 41px;
        }

        .abilityLine {
            display: inline-block;
            width: 340px;
            /*height: 288px;*/
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
            margin-bottom: 10px;
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
            width: 75%;
            height: 41px;
            font-size: 30px;
        }



        .spaceDiv {
            height: 20px;
            width: 100%;
        }

        .spaceDivBig {
            height: 8px;
            width: 100%;
        }

        .spaceDivBigPassive {
            height: 18px;
            width: 100%;
        }

        .roundBtnDiv {
            width: 172px;
            height: 25px;
            border-radius: 5px;
            background-color: rgb(198,192,170);
            margin-top: 5px;
        }

        .resistencesBtn {
            width: 171px;
            height: 24px;
            border-radius: 5px;
            background-color: rgb(198,192,170);
        }

        /*  small box*/

        .noSpaceDiv {
            width: 180px;
            height: 24px;
        }

        .defDiv {
            width: 200px;
        }

        .bigRowBgNewSmaller {
            display: inline-block;
            width: 172px;
            height: 23px;
            vertical-align: top;
            border-radius: 5px;
            padding-left: 11px;
            background-color: rgb(205,142,117);
            margin-bottom: 2px;
        }



        .abilityTextSmaller {
            display: inline-block;
            width: 130px;
            height: 23px;
            font-size: 20px;
            vertical-align: top;
            position: relative;
            top: -3px;
        }

        .abilityScoreSmaller {
            display: inline-block;
            width: 21px;
            height: 20px;
            border-radius: 5px;
            background-color: rgb(226,212,183);
            /*background-size: 41px 41px;*/
            background-repeat: no-repeat;
            font-size: 17px;
            text-align: center;
            position: relative;
            /*top: -1px;*/
            margin-top: 1px;
            vertical-align: top;
            line-height: 20px;
        }

        .languageBox {
            width: 171px;
            height: 92px;
            border-radius: 5px;
            background-color: rgb(226,212,183);
            margin-top: 7px;
            vertical-align: top;
            border: 1px solid #654321;
        }

        .languageBoxTitle {
            width: 171px;
            height: 21px;
            border-radius: 5px 5px 0px 0px;
            background-color: rgb(205,142,117);
            font-size: 17px;
            font-weight: bold;
            vertical-align: top;
            padding-left: 11px;
            line-height: 21px;
        }

        .languageBoxLanguagesDiv {
            overflow-x: hidden;
            overflow-y: auto;
            width: 171px;
            height: 62px;
        }

        .languageBoxLanguages {
            width: 171px;
            height: 21px;
            font-size: 17px;
            vertical-align: top;
            padding-left: 11px;
        }

        .languageBoxLanguagesOdd {
            width: 171px;
            height: 21px;
            font-size: 17px;
            vertical-align: top;
            padding-left: 11px;
            background-color: rgba(206,192,163, 0.3);
        }

        /* skills*/

        .skillsBox {
            width: 230px;
            height: 202px;
            border-radius: 5px;
            background-color: rgb(226,212,183);
            vertical-align: top;
            border: 1px solid #654321;
            position: relative;
            left: 40px;
        }

        .skillsBoxTitle {
            width: 100%;
            height: 21px;
            border-radius: 5px 5px 0px 0px;
            background-color: rgb(205,142,117);
            font-size: 17px;
            font-weight: bold;
            vertical-align: top;
            padding-left: 11px;
            line-height: 21px;
        }

        .skillBoxDiv {
            overflow-x: hidden;
            overflow-y: auto;
            width: 100%;
            height: 177px;
        }

        .skillList {
            width: 100%;
            height: 30px;
            font-size: 17px;
            vertical-align: top;
            padding-left: 11px;
        }

        .skillListOdd {
            width: 100%;
            height: 30px;
            font-size: 17px;
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
            font-size: 17px;
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
            font-size: 17px;
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
           background-color:  rgba(206,192,163, 0.4);
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
                            <div class="abilityScore">{{character.Defenses.Reflex}}</div>
                        </div>
                    </div>
                    <div>
                        <div class="bigRowBgNewlow">
                            <div class="abilityTextBig">Action Points</div>
                            <div class="abilityScore">{{character.Defenses.Reflex}}</div>
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
                                <div class="abilityScore">{{character.Defenses.Reflex}}</div>
                            </div>
                        </div>
                        <div>
                            <div class="bigRowBgNewMid">
                                <div class="abilityTextBigPassive">PP</div>
                                <div class="abilityScore">{{character.Defenses.Reflex}}</div>
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
                    <div class="spaceDivBigPassive"></div>
                    <div class="deityArea">
                        <div>
                            <div class="bigRowBgNewMid">
                                <div class="abilityTextdeityArea">Vision</div>
                                <div class="abilityScoreText">low light{{character.Defenses.Reflex}}</div>
                            </div>
                        </div>
                        <div>
                            <div class="bigRowBgNewMid">
                                <div class="abilityTextdeityArea">Deity</div>
                                <div class="abilityScoreText">moshe {{character.Defenses.Reflex}}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
