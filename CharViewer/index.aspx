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
            padding-left: 15px;
            padding-right: 15px;
        }

        .leftEdge {
            display: inline-block;
            background-image: url(images/BigDarkEdge.png);
            background-repeat: no-repeat;
            width: 11px;
            height: 43px;
        }

        .bigRowBg {
            display: inline-block;
            background-image: url(images/bigBG.png);
            width: 270px;
            height: 43px;
            vertical-align: top;
            margin-left: -4px;
            margin-right: -4px;
        }

        .bigRowBgMid {
            display: inline-block;
            background-image: url(images/bigBG.png);
            width: 235px;
            height: 43px;
            vertical-align: top;
            margin-left: -4px;
            margin-right: -4px;
        }

        .rightEdge {
            display: inline-block;
            background-image: url(images/BigDarkEdge.png);
            background-repeat: no-repeat;
            -moz-transform: scaleX(-1);
            -o-transform: scaleX(-1);
            -webkit-transform: scaleX(-1);
            transform: scaleX(-1);
            width: 11px;
            height: 43px;
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
            height: 41px;
            background-image: url(images/SmallBright.png);
            background-size: 41px 41px;
            background-repeat: no-repeat;
            font-size: 30px;
            text-align: center;
            margin-top: 1px;
        }

        .abilityScoreSpace {
            display: inline;
            width: 20px;
            height: 41px;
        }

        .abilityLine {
            display: inline-block;
            width: 300px;
            /*height: 288px;*/
            vertical-align: top;
        }

        .defencesArea {
            display: inline-block;
            width: 300px;
            /*height: 288px;*/
        }

        .leftEdgeSmall {
            display: inline-block;
            background-image: url(images/BigDarkEdge.png);
            background-repeat: no-repeat;
            width: 11px;
            height: 43px;
        }

        .bigRowBgSmall {
            display: inline-block;
            background-image: url(images/bigBG.png);
            width: 150px;
            height: 43px;
            vertical-align: top;
            margin-left: -4px;
            margin-right: -4px;
        }

        .rightEdgeSmall {
            display: inline-block;
            background-image: url(images/BigDarkEdge.png);
            background-repeat: no-repeat;
            -moz-transform: scaleX(-1);
            -o-transform: scaleX(-1);
            -webkit-transform: scaleX(-1);
            transform: scaleX(-1);
            width: 11px;
            height: 43px;
        }

        .abilityTextSmall {
            display: inline-block;
            width: 100px;
            height: 41px;
            font-size: 30px;
        }

        .abilityTextBig {
            display: inline-block;
            width: 185px;
            height: 41px;
            font-size: 30px;
        }

        .abilityScoreSmall {
            display: inline-block;
            width: 41px;
            height: 41px;
            background-image: url(images/SmallBright.png);
            background-size: 41px 41px;
            background-repeat: no-repeat;
            font-size: 30px;
            text-align: center;
            margin-top: 1px;
        }

        .spaceDiv {
            height: 10px;
            width: 100%;
        }
        .spaceDivBig {
            height: 20px;
            width: 100%;
        }
       
    </style>

</head>
<body ng-app="dndApp">
    <form id="form1" runat="server">
        <div ng-controller="dndController" class="pageBg">
            <div class="abilityLine">
                <div>
                    <div class="leftEdge"></div>
                    <div class="bigRowBg">
                        <div class="abilityText">Strength</div>
                        <div class="abilityScore">{{character.AbilityScores.Strength}}</div>
                        <div class="abilityScoreSpace">&nbsp;</div>
                        <div class="abilityScore">{{character.AbilityScores.StrengthMod}}</div>
                    </div>
                    <div class="rightEdge"></div>
                </div>
                <div>
                    <div class="leftEdge"></div>
                    <div class="bigRowBg">
                        <div class="abilityText">Constitution</div>
                        <div class="abilityScore">{{character.AbilityScores.Constitution}}</div>
                        <div class="abilityScoreSpace">&nbsp;</div>
                        <div class="abilityScore">{{character.AbilityScores.ConstitutionMod}}</div>
                    </div>
                    <div class="rightEdge"></div>
                </div>
                <div class="spaceDiv"></div>
                <div>
                    <div class="leftEdge"></div>
                    <div class="bigRowBg">
                        <div class="abilityText">Dexterity</div>
                        <div class="abilityScore">{{character.AbilityScores.Dexterity}}</div>
                        <div class="abilityScoreSpace">&nbsp;</div>
                        <div class="abilityScore">{{character.AbilityScores.DexterityMod}}</div>
                    </div>
                    <div class="rightEdge"></div>
                </div>
                <div>
                    <div class="leftEdge"></div>
                    <div class="bigRowBg">
                        <div class="abilityText">Intelligence</div>
                        <div class="abilityScore">{{character.AbilityScores.Intelligence}}</div>
                        <div class="abilityScoreSpace">&nbsp;</div>
                        <div class="abilityScore">{{character.AbilityScores.IntelligenceMod}}</div>
                    </div>
                    <div class="rightEdge"></div>
                </div>
                <div class="spaceDiv"></div>
                <div>
                    <div class="leftEdge"></div>
                    <div class="bigRowBg">
                        <div class="abilityText">Wisdom</div>
                        <div class="abilityScore">{{character.AbilityScores.Wisdom}}</div>
                        <div class="abilityScoreSpace">&nbsp;</div>
                        <div class="abilityScore">{{character.AbilityScores.WisdomMod}}</div>
                    </div>
                    <div class="rightEdge"></div>
                </div>
                <div>
                    <div class="leftEdge"></div>
                    <div class="bigRowBg">
                        <div class="abilityText">Charisma</div>
                        <div class="abilityScore">{{character.AbilityScores.Charisma}}</div>
                        <div class="abilityScoreSpace">&nbsp;</div>
                        <div class="abilityScore">{{character.AbilityScores.CharismaMod}}</div>
                    </div>
                    <div class="rightEdge"></div>
                </div>
            </div>
            <div class="defencesArea">
                <div>
                    <div class="leftEdgeSmall"></div>
                    <div class="bigRowBgSmall">
                        <div class="abilityTextSmall">AC</div>
                        <div class="abilityScoreSmall">{{character.Defenses.AC}}</div>
                    </div>
                    <div class="rightEdgeSmall"></div>
                </div>
                <div>
                    <div class="leftEdgeSmall"></div>
                    <div class="bigRowBgSmall">
                        <div class="abilityTextSmall">FORT</div>
                        <div class="abilityScoreSmall">{{character.Defenses.Fortitude}}</div>
                    </div>
                    <div class="rightEdgeSmall"></div>
                </div>
                <div>
                    <div class="leftEdgeSmall"></div>
                    <div class="bigRowBgSmall">
                        <div class="abilityTextSmall">REF</div>
                        <div class="abilityScoreSmall">{{character.Defenses.Will}}</div>
                    </div>
                    <div class="rightEdgeSmall"></div>
                </div>
                <div>
                    <div class="leftEdgeSmall"></div>
                    <div class="bigRowBgSmall">
                        <div class="abilityTextSmall">WILL</div>
                        <div class="abilityScoreSmall">{{character.Defenses.Reflex}}</div>
                    </div>
                    <div class="rightEdgeSmall"></div>
                </div>
                <div class="spaceDivBig"></div>
                <div>
                    <div class="leftEdge"></div>
                    <div class="bigRowBgMid">
                        <div class="abilityTextBig">Milestones</div>
                        <div class="abilityScore">{{character.Defenses.Reflex}}</div>
                    </div>
                    <div class="rightEdge"></div>
                </div>
                <div>
                    <div class="leftEdge"></div>
                    <div class="bigRowBgMid">
                        <div class="abilityTextBig">Action Points</div>
                        <div class="abilityScore">{{character.Defenses.Reflex}}</div>
                    </div>
                    <div class="rightEdge"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
