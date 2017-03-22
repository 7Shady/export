<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InIm.aspx.cs" Inherits="export.InIm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #NAV_1 {
            bottom: 263px;
            box-shadow: rgba(0, 0, 0, 0.0470588) 0px 1px 0px 0px;
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            height: 75px;
            left: 0px;
            position: fixed;
            right: 0px;
            text-align: left;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 0px;
            width: 1349px;
            z-index: 1030;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 674.5px 37.5px;
            transform-origin: 674.5px 37.5px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
            outline: rgb(51, 51, 51) none 0px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#NAV_1*/

        #DIV_2 {
            bottom: 0px;
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            height: 83px;
            left: 0px;
            position: relative;
            right: 0px;
            text-align: left;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 0px;
            width: 1349px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 674.5px 41.5px;
            transform-origin: 674.5px 41.5px;
            caret-color: rgb(51, 51, 51);
            background: rgb(255, 255, 255) none repeat scroll 0% 0% / auto padding-box border-box;
            border-top: 0px none rgb(51, 51, 51);
            border-right: 0px none rgb(51, 51, 51);
            border-bottom: 5px solid rgb(52, 152, 219);
            border-left: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
            margin: 0px 26.9688px 0px 0px;
            outline: rgb(51, 51, 51) none 0px;
            padding: 0px 42px;
        }
            /*#DIV_2*/

            #DIV_2:after {
                box-sizing: border-box;
                clear: both;
                color: rgb(51, 51, 51);
                content: '"' '"';
                display: table;
                text-align: left;
                text-decoration: none solid rgb(51, 51, 51);
                text-size-adjust: 100%;
                column-rule-color: rgb(51, 51, 51);
                caret-color: rgb(51, 51, 51);
                border: 0px none rgb(51, 51, 51);
                font: normal normal normal normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
                outline: rgb(51, 51, 51) none 0px;
            }
            /*#DIV_2:after*/

            #DIV_2:before {
                box-sizing: border-box;
                color: rgb(51, 51, 51);
                content: '"' '"';
                display: table;
                text-align: left;
                text-decoration: none solid rgb(51, 51, 51);
                text-size-adjust: 100%;
                column-rule-color: rgb(51, 51, 51);
                caret-color: rgb(51, 51, 51);
                border: 0px none rgb(51, 51, 51);
                font: normal normal normal normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
                outline: rgb(51, 51, 51) none 0px;
            }
        /*#DIV_2:before*/

        #DIV_3 {
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            float: left;
            height: 75px;
            text-align: left;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            width: 118px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 59px 37.5px;
            transform-origin: 59px 37.5px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 14px / 20px "Helvetica Neue", Helvetica, Arial, sans-serif;
            margin: 0px 20px 0px 0px;
            outline: rgb(51, 51, 51) none 0px;
        }
        /*#DIV_3*/

        #A_4 {
            box-sizing: border-box;
            color: rgba(0, 0, 0, 0.901961);
            display: table-cell;
            height: 75px;
            letter-spacing: 3.6px;
            max-width: 118px;
            text-align: left;
            text-decoration: none solid rgba(0, 0, 0, 0.901961);
            text-size-adjust: 100%;
            vertical-align: middle;
            width: 118px;
            column-rule-color: rgba(0, 0, 0, 0.901961);
            perspective-origin: 59px 37.5px;
            transform-origin: 59px 37.5px;
            caret-color: rgba(0, 0, 0, 0.901961);
            border: 0px none rgba(0, 0, 0, 0.901961);
            font: normal normal normal normal 18px / 25.7143px Lato, arial, sans-serif;
            outline: rgba(0, 0, 0, 0.901961) none 0px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_4*/

        #IMG_5 {
            box-sizing: border-box;
            color: rgba(0, 0, 0, 0.901961);
            height: 52.2656px;
            letter-spacing: 3.6px;
            max-height: 100%;
            max-width: 100%;
            text-align: left;
            text-decoration: none solid rgba(0, 0, 0, 0.901961);
            text-size-adjust: 100%;
            vertical-align: middle;
            width: 118px;
            column-rule-color: rgba(0, 0, 0, 0.901961);
            perspective-origin: 59px 26.125px;
            transform-origin: 59px 26.125px;
            caret-color: rgba(0, 0, 0, 0.901961);
            border: 0px none rgba(0, 0, 0, 0.901961);
            font: normal normal normal normal 18px / 25.7143px Lato, arial, sans-serif;
            margin: 2px 0px 0px;
            outline: rgba(0, 0, 0, 0.901961) none 0px;
        }
        /*#IMG_5*/

        #DIV_6 {
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            cursor: pointer;
            display: none;
            float: right;
            height: 75px;
            text-align: left;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            vertical-align: middle;
            width: 75px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 50% 50%;
            transform-origin: 50% 50%;
            user-select: none;
            caret-color: rgb(51, 51, 51);
            border-top: 0px none rgb(51, 51, 51);
            border-right: 1px solid rgba(0, 0, 0, 0.0470588);
            border-bottom: 0px none rgb(51, 51, 51);
            border-left: 1px solid rgba(0, 0, 0, 0.0470588);
            font: normal normal normal normal 11px / 75px "Helvetica Neue", Helvetica, Arial, sans-serif;
            outline: rgb(51, 51, 51) none 0px;
            transition: background 0.27s cubic-bezier(0, 0, 0.58, 1) 0s, color 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#DIV_6*/

        #I_7 {
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            cursor: pointer;
            display: table-cell;
            height: 100%;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            vertical-align: middle;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 50% 50%;
            transform-origin: 50% 50%;
            user-select: none;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 21px / 21px FontAwesome;
            outline: rgb(51, 51, 51) none 0px;
        }
            /*#I_7*/

            #I_7:before {
                box-sizing: border-box;
                color: rgb(51, 51, 51);
                content: '""';
                cursor: pointer;
                text-align: center;
                text-decoration: none solid rgb(51, 51, 51);
                text-size-adjust: 100%;
                column-rule-color: rgb(51, 51, 51);
                perspective-origin: 50% 50%;
                transform-origin: 50% 50%;
                user-select: none;
                caret-color: rgb(51, 51, 51);
                border: 0px none rgb(51, 51, 51);
                font: normal normal normal normal 21px / 21px FontAwesome;
                outline: rgb(51, 51, 51) none 0px;
            }
        /*#I_7:before*/

        #DIV_8 {
            bottom: 0px;
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            float: left;
            height: 78px;
            left: 0px;
            position: relative;
            right: 0px;
            text-align: left;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 0px;
            width: 702.844px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 351.422px 39px;
            transform-origin: 351.422px 39px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 14px / 20px Lato, sans-serif;
            outline: rgb(51, 51, 51) none 0px;
        }
        /*#DIV_8*/

        #UL_9 {
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            float: right;
            height: 78px;
            letter-spacing: 0.4px;
            max-height: 243px;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            width: 702.844px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 351.422px 39px;
            transform-origin: 351.422px 39px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            margin: 0px;
            outline: rgb(51, 51, 51) none 0px;
            padding: 0px;
        }
        /*#UL_9*/

        #LI_10 {
            bottom: 0px;
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            float: left;
            height: 75px;
            left: 0px;
            letter-spacing: 0.4px;
            position: relative;
            right: 0px;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 0px;
            width: 69.0625px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 34.5313px 37.5px;
            transform-origin: 34.5313px 37.5px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            margin: 0px 0px 0px 20px;
            outline: rgb(51, 51, 51) none 0px;
        }
        /*#LI_10*/

        #A_11 {
            box-sizing: border-box;
            color: rgb(33, 33, 33);
            display: inline-block;
            height: 75px;
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(33, 33, 33);
            text-size-adjust: 100%;
            width: 69.0625px;
            column-rule-color: rgb(33, 33, 33);
            perspective-origin: 34.5313px 37.5px;
            transform-origin: 34.5313px 37.5px;
            caret-color: rgb(33, 33, 33);
            border: 0px none rgb(33, 33, 33);
            font: normal normal normal normal 13px / 75px Lato, sans-serif;
            list-style: none outside none;
            outline: rgb(33, 33, 33) none 0px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_11*/

        #LI_12 {
            bottom: 0px;
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            float: left;
            height: 75px;
            left: 0px;
            letter-spacing: 0.4px;
            position: relative;
            right: 0px;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 0px;
            width: 63.4531px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 31.7188px 37.5px;
            transform-origin: 31.7188px 37.5px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            margin: 0px 0px 0px 20px;
            outline: rgb(51, 51, 51) none 0px;
        }
        /*#LI_12*/

        #A_13 {
            box-sizing: border-box;
            color: rgb(33, 33, 33);
            display: inline-block;
            height: 75px;
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(33, 33, 33);
            text-size-adjust: 100%;
            width: 63.4531px;
            column-rule-color: rgb(33, 33, 33);
            perspective-origin: 31.7188px 37.5px;
            transform-origin: 31.7188px 37.5px;
            caret-color: rgb(33, 33, 33);
            border: 0px none rgb(33, 33, 33);
            font: normal normal normal normal 13px / 75px Lato, sans-serif;
            list-style: none outside none;
            outline: rgb(33, 33, 33) none 0px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_13*/

        #LI_14 {
            bottom: 0px;
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            float: left;
            height: 75px;
            left: 0px;
            letter-spacing: 0.4px;
            position: relative;
            right: 0px;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 0px;
            width: 124.719px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 62.3594px 37.5px;
            transform-origin: 62.3594px 37.5px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            margin: 0px 0px 0px 20px;
            outline: rgb(51, 51, 51) none 0px;
        }
        /*#LI_14*/

        #A_15 {
            box-sizing: border-box;
            color: rgb(33, 33, 33);
            display: inline-block;
            height: 75px;
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(33, 33, 33);
            text-size-adjust: 100%;
            width: 124.719px;
            column-rule-color: rgb(33, 33, 33);
            perspective-origin: 62.3594px 37.5px;
            transform-origin: 62.3594px 37.5px;
            caret-color: rgb(33, 33, 33);
            border: 0px none rgb(33, 33, 33);
            font: normal normal normal normal 13px / 75px Lato, sans-serif;
            list-style: none outside none;
            outline: rgb(33, 33, 33) none 0px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_15*/

        #LI_16 {
            bottom: 0px;
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            float: left;
            height: 75px;
            left: 0px;
            letter-spacing: 0.4px;
            position: relative;
            right: 0px;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 0px;
            width: 123.781px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 61.8906px 37.5px;
            transform-origin: 61.8906px 37.5px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            margin: 0px 0px 0px 20px;
            outline: rgb(51, 51, 51) none 0px;
        }
        /*#LI_16*/

        #A_17 {
            box-sizing: border-box;
            color: rgb(33, 33, 33);
            display: inline-block;
            height: 75px;
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(33, 33, 33);
            text-size-adjust: 100%;
            width: 123.781px;
            column-rule-color: rgb(33, 33, 33);
            perspective-origin: 61.8906px 37.5px;
            transform-origin: 61.8906px 37.5px;
            caret-color: rgb(33, 33, 33);
            border: 0px none rgb(33, 33, 33);
            font: normal normal normal normal 13px / 75px Lato, sans-serif;
            list-style: none outside none;
            outline: rgb(33, 33, 33) none 0px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_17*/

        #LI_18 {
            bottom: 0px;
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            float: left;
            height: 75px;
            left: 0px;
            letter-spacing: 0.4px;
            position: relative;
            right: 0px;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 0px;
            width: 88.0938px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 44.0469px 37.5px;
            transform-origin: 44.0469px 37.5px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            margin: 0px 0px 0px 20px;
            outline: rgb(51, 51, 51) none 0px;
        }
        /*#LI_18*/

        #A_19 {
            box-sizing: border-box;
            color: rgb(33, 33, 33);
            display: inline-block;
            height: 75px;
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(33, 33, 33);
            text-size-adjust: 100%;
            width: 88.0938px;
            column-rule-color: rgb(33, 33, 33);
            perspective-origin: 44.0469px 37.5px;
            transform-origin: 44.0469px 37.5px;
            caret-color: rgb(33, 33, 33);
            border: 0px none rgb(33, 33, 33);
            font: normal normal normal normal 13px / 75px Lato, sans-serif;
            list-style: none outside none;
            outline: rgb(33, 33, 33) none 0px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_19*/

        #LI_20 {
            bottom: 0px;
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            float: left;
            height: 75px;
            left: 0px;
            letter-spacing: 0.4px;
            position: relative;
            right: 0px;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 0px;
            width: 93.7344px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 46.8594px 37.5px;
            transform-origin: 46.8594px 37.5px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            margin: 0px 0px 0px 20px;
            outline: rgb(51, 51, 51) none 0px;
        }
        /*#LI_20*/

        #A_21 {
            box-sizing: border-box;
            color: rgb(33, 33, 33);
            display: inline-block;
            height: 75px;
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(33, 33, 33);
            text-size-adjust: 100%;
            width: 93.7344px;
            column-rule-color: rgb(33, 33, 33);
            perspective-origin: 46.8594px 37.5px;
            transform-origin: 46.8594px 37.5px;
            caret-color: rgb(33, 33, 33);
            border: 0px none rgb(33, 33, 33);
            font: normal normal normal normal 13px / 75px Lato, sans-serif;
            list-style: none outside none;
            outline: rgb(33, 33, 33) none 0px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_21*/

        #I_22 {
            box-sizing: border-box;
            color: rgb(33, 33, 33);
            display: inline-block;
            height: 13px;
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(33, 33, 33);
            text-size-adjust: 100%;
            width: 10.3594px;
            column-rule-color: rgb(33, 33, 33);
            perspective-origin: 5.17188px 6.5px;
            transform-origin: 5.17188px 6.5px;
            caret-color: rgb(33, 33, 33);
            border: 0px none rgb(33, 33, 33);
            font: normal normal normal normal 13px / 13px FontAwesome;
            list-style: none outside none;
            outline: rgb(33, 33, 33) none 0px;
        }
            /*#I_22*/

            #I_22:before {
                box-sizing: border-box;
                color: rgb(33, 33, 33);
                content: '""';
                letter-spacing: 2px;
                text-align: center;
                text-decoration: none solid rgb(33, 33, 33);
                text-size-adjust: 100%;
                column-rule-color: rgb(33, 33, 33);
                caret-color: rgb(33, 33, 33);
                border: 0px none rgb(33, 33, 33);
                font: normal normal normal normal 13px / 13px FontAwesome;
                list-style: none outside none;
                outline: rgb(33, 33, 33) none 0px;
            }
        /*#I_22:before*/

        #UL_23 {
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            display: none;
            float: right;
            height: auto;
            left: 0px;
            letter-spacing: 0.4px;
            position: absolute;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 100%;
            width: 200px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 50% 50%;
            transform-origin: 50% 50%;
            caret-color: rgb(51, 51, 51);
            background: rgba(30, 30, 30, 0.972549) none repeat scroll 0% 0% / auto padding-box border-box;
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: circle outside none;
            margin: auto;
            outline: rgb(51, 51, 51) none 0px;
            padding: 0px;
        }
        /*#UL_23*/

        #LI_24, #LI_26, #LI_36, #LI_38, #LI_40, #LI_42 {
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            display: block;
            float: left;
            height: auto;
            letter-spacing: 0.4px;
            position: relative;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            width: 100%;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 50% 50%;
            transform-origin: 50% 50%;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            outline: rgb(51, 51, 51) none 0px;
        }
        /*#LI_24, #LI_26, #LI_36, #LI_38, #LI_40, #LI_42*/

        #A_25, #A_27, #A_37, #A_41 {
            box-sizing: border-box;
            color: rgb(176, 176, 176);
            cursor: pointer;
            display: block;
            position: relative;
            text-align: left;
            text-decoration: none solid rgb(176, 176, 176);
            text-size-adjust: 100%;
            width: 100%;
            column-rule-color: rgb(176, 176, 176);
            perspective-origin: 50% 50%;
            transform-origin: 50% 50%;
            caret-color: rgb(176, 176, 176);
            border: 0px none rgb(176, 176, 176);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            outline: rgb(176, 176, 176) none 0px;
            padding: 11px 15px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_25, #A_27, #A_37, #A_41*/

        #LI_28 {
            bottom: 263px;
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            height: 75px;
            left: 1096.08px;
            letter-spacing: 0.4px;
            position: fixed;
            right: 20px;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 0px;
            width: 212.922px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 106.453px 37.5px;
            transform-origin: 106.453px 37.5px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            margin: 0px 0px 0px 20px;
            outline: rgb(51, 51, 51) none 0px;
        }
        /*#LI_28*/

        #A_29 {
            box-sizing: border-box;
            color: rgb(33, 33, 33);
            display: inline-block;
            height: 75px;
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(33, 33, 33);
            text-size-adjust: 100%;
            width: 121px;
            column-rule-color: rgb(33, 33, 33);
            perspective-origin: 60.5px 37.5px;
            transform-origin: 60.5px 37.5px;
            caret-color: rgb(33, 33, 33);
            border: 0px none rgb(33, 33, 33);
            font: normal normal bold normal 13px / 75px sans-serif;
            list-style: none outside none;
            outline: rgb(33, 33, 33) none 0px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_29*/

        #SPAN_30 {
            box-sizing: border-box;
            color: rgb(255, 255, 255);
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(255, 255, 255);
            text-size-adjust: 100%;
            column-rule-color: rgb(255, 255, 255);
            caret-color: rgb(255, 255, 255);
            background: rgb(66, 133, 244) none repeat scroll 0% 0% / auto padding-box border-box;
            border: 1px solid rgb(66, 133, 244);
            border-radius: 4px 4px 4px 4px;
            font: normal normal bold normal 13px / 75px sans-serif;
            list-style: none outside none;
            outline: rgb(255, 255, 255) none 0px;
            padding: 5px;
        }
        /*#SPAN_30*/

        #A_31 {
            box-sizing: border-box;
            color: rgb(33, 33, 33);
            display: inline-block;
            height: 75px;
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(33, 33, 33);
            text-size-adjust: 100%;
            width: 86px;
            column-rule-color: rgb(33, 33, 33);
            perspective-origin: 43px 37.5px;
            transform-origin: 43px 37.5px;
            caret-color: rgb(33, 33, 33);
            border: 0px none rgb(33, 33, 33);
            font: normal normal bold normal 13px / 75px sans-serif;
            list-style: none outside none;
            margin: 0px 0px 0px 3px;
            outline: rgb(33, 33, 33) none 0px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_31*/

        #SPAN_32 {
            box-sizing: border-box;
            color: rgb(255, 255, 255);
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(255, 255, 255);
            text-size-adjust: 100%;
            column-rule-color: rgb(255, 255, 255);
            caret-color: rgb(255, 255, 255);
            background: rgb(219, 68, 55) none repeat scroll 0% 0% / auto padding-box border-box;
            border: 1px solid rgb(219, 68, 55);
            border-radius: 4px 4px 4px 4px;
            font: normal normal bold normal 13px / 75px sans-serif;
            list-style: none outside none;
            outline: rgb(255, 255, 255) none 0px;
            padding: 5px;
        }
        /*#SPAN_32*/

        #LI_33 {
            bottom: 0px;
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            float: left;
            height: 78px;
            left: 0px;
            letter-spacing: 0.4px;
            position: relative;
            right: 0px;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 0px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 0px 39px;
            transform-origin: 0px 39px;
            caret-color: rgb(51, 51, 51);
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            margin: 0px 0px 0px 20px;
            outline: rgb(51, 51, 51) none 0px;
        }
        /*#LI_33*/

        #A_34 {
            box-sizing: border-box;
            color: rgb(33, 33, 33);
            display: inline-block;
            height: 75px;
            letter-spacing: 2px;
            text-align: center;
            text-decoration: none solid rgb(33, 33, 33);
            text-size-adjust: 100%;
            width: 0px;
            column-rule-color: rgb(33, 33, 33);
            perspective-origin: 0px 37.5px;
            transform-origin: 0px 37.5px;
            caret-color: rgb(33, 33, 33);
            border: 0px none rgb(33, 33, 33);
            font: normal normal normal normal 13px / 75px sans-serif;
            list-style: none outside none;
            outline: rgb(33, 33, 33) none 0px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_34*/

        #UL_35 {
            box-sizing: border-box;
            color: rgb(51, 51, 51);
            display: none;
            float: right;
            height: auto;
            letter-spacing: 0.4px;
            position: absolute;
            right: 0px;
            text-align: center;
            text-decoration: none solid rgb(51, 51, 51);
            text-size-adjust: 100%;
            top: 100%;
            width: 200px;
            column-rule-color: rgb(51, 51, 51);
            perspective-origin: 50% 50%;
            transform-origin: 50% 50%;
            caret-color: rgb(51, 51, 51);
            background: rgba(30, 30, 30, 0.972549) none repeat scroll 0% 0% / auto padding-box border-box;
            border: 0px none rgb(51, 51, 51);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: circle outside none;
            margin: auto;
            outline: rgb(51, 51, 51) none 0px;
            padding: 0px;
        }
        /*#UL_35*/

        #A_39, #A_43 {
            box-sizing: border-box;
            color: rgb(176, 176, 176);
            cursor: pointer;
            display: block;
            position: relative;
            text-align: left;
            text-decoration: none solid rgb(176, 176, 176);
            text-size-adjust: 100%;
            width: 100%;
            column-rule-color: rgb(176, 176, 176);
            perspective-origin: 50% 50%;
            transform-origin: 50% 50%;
            caret-color: rgb(176, 176, 176);
            border: 0px none rgb(176, 176, 176);
            font: normal normal normal normal 13px / 16.9px Lato, sans-serif;
            list-style: none outside none;
            outline: rgb(176, 176, 176) none 0px;
            padding: 11px 15px;
            transition: all 0.27s cubic-bezier(0, 0, 0.58, 1) 0s;
        }
        /*#A_39, #A_43*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="aspNetHidden">

            <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334" />
            <input type="hidden" name="__PREVIOUSPAGE" id="__PREVIOUSPAGE" value="KNiZiHexPoXoEWQbw2sSE_u6x0JkIrKAg0vjcipZa3tEEnChPZoV1vFvKoafVTbzfznXjIFERofABN5vz7Xxog2" />
        </div>
        <!-- Page Wrap -->
        <div class="page" id="top">

            <!-- Home Section -->

            
        

            <div style="background-color: white;">

                <nav id="NAV_1">
                    <div id="DIV_2">
                        <!-- Logo ( * your text or image into link tag *) -->

                        <div id="DIV_3">
                            <a href="Default.aspx" id="A_4">
                                <img src="images/logo-dark.png" alt="" id="IMG_5" /></a>
                        </div>
                        <div id="DIV_6">
                            <i id="I_7"></i>
                        </div>
                        <!-- Main Menu -->

                        <div id="DIV_8">
                            <ul id="UL_9">
                                <li id="LI_10">
                                    <a href="about.aspx" id="A_11">About Us</a>
                                </li>
                                <li id="LI_12">
                                    <a href="Services.aspx" id="A_13">Services</a>
                                </li>
                                <li id="LI_14">
                                    <a href="becomeconsultant.aspx" id="A_15">Consultant Zone</a>
                                </li>
                                <li id="LI_16">
                                    <a href="knowledgezone.aspx" id="A_17">Knowledge Zone</a>
                                </li>
                                <li id="LI_18">
                                    <a href="clientzone.aspx" id="A_19">Client Zone</a>
                                </li>
                                <li id="LI_20">
                                    <a href="#" id="A_21">Contact Us<i id="I_22"></i></a>
                                    <!-- Sub -->

                                    <ul id="UL_23">
                                        <li id="LI_24">
                                            <a href="ourreach.aspx" id="A_25">Our Reach</a>
                                        </li>
                                        <li id="LI_26">
                                            <a href="career.aspx" id="A_27">Careers</a>
                                        </li>
                                    </ul>
                                    <!-- End Sub -->

                                </li>
                                <li id="LI_28">
                                    <a href="login.aspx" id="A_29"><span id="SPAN_30">Existing User</span></a> <a href="signup.aspx" id="A_31"><span id="SPAN_32">New User</span></a>
                                </li>
                                <li id="LI_33">
                                    <a href="#" id="A_34"></a>
                                    <ul id="UL_35">
                                        <li id="LI_36">
                                            <a href="router.aspx" id="A_37">Dash Board</a>
                                        </li>
                                        <li id="LI_38">
                                            <a href="router.aspx" id="A_39">My Profile</a>
                                        </li>
                                        <li id="LI_40">
                                            <a href="router.aspx" id="A_41">Setting</a>
                                        </li>
                                        <li id="LI_42">
                                            <a href="logout.aspx" id="A_43">Log Out</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- End Main Menu -->

                    </div>
                </nav>
            </div>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <div>
                <h4>Save images into the database</h4>

                Select file:
                <asp:FileUpload ID="FileUpload1" runat="server" />

                <asp:Button ID="btnSubmit" runat="server" Text="Upload & Save" OnClick="UploadAndSaveIntoDatabase" />

                <p>
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="false"
                        ForeColor="Green" />
                </p>

                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
            </div>
    </form>
</body>
</html>
