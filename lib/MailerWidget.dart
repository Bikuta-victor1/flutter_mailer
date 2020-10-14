import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class MailerWidget extends StatefulWidget {
  @override
  final String username = 'flutterdev';
  _MailerWidgetState createState() => _MailerWidgetState();
}

class _MailerWidgetState extends State<MailerWidget> {
  void Mailer() async {
    String username = 'fluttermail01@gmail.com';
    String password = 'Fluttermail123';

    final smtpServer = gmail(username, password);

    //Create our Message
    final message = Message()
      ..from = Address(username, 'Flutter Mail')
      ..recipients.add('destCc0@example.com')
      ..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
      ..bccRecipients.add(Address('bccAddress@example.com'))
      ..subject = 'Flutter Mailer'
      ..text = 'Auto Mailing with Flutter with Custom Template';
    var nameFromSomeInput = widget.username;
    var yourHtmlTemplate = '''
         <!DOCTYPE " 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <head>
   <meta name="viewport" content="width=device-width" />
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <title>Flutter Mailer</title>
   <style>
     /* -------------------------------------
         GLOBAL RESETS
     ------------------------------------- */

     /*All the styling goes here*/



     body {
       background-color: #f6f6f6;
       font-family: sans-serif;
       -webkit-font-smoothing: antialiased;
       font-size: 14px;
       line-height: 1.4;
       margin: 0;
       padding: 0;
       -ms-text-size-adjust: 100%;
       -webkit-text-size-adjust: 100%;
     }

     table {
       border-collapse: separate;
       mso-table-lspace: 0pt;
       mso-table-rspace: 0pt;
       width: 100%; }
       table td {
         font-family: sans-serif;
         font-size: 14px;
         vertical-align: top;
     }

     /* -------------------------------------
         BODY & CONTAINER
     ------------------------------------- */

     .body {
       background-color: #343738;
       width: 100%;
     }

     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */
     .container {
       display: block;
       margin: 0 auto !important;
       /* makes it centered */
       max-width: 580px;
       padding: 10px;
       width: 580px;
     }

     /* This should also be a block element, so that it will fill 100% of the .container */
     .content {
       box-sizing: border-box;
       display: block;
       margin: 0 auto;
       max-width: 580px;
       padding: 10px;
     }

     /* -------------------------------------
         HEADER, FOOTER, MAIN
     ------------------------------------- */
     .main {
       background: #ffffff;
       border-radius: 3px;
       width: 100%;
     }

     .wrapper {
       box-sizing: border-box;
       padding: 20px;
     }

     .content-block {
       padding-bottom: 10px;
       padding-top: 10px;
     }

     .footer {
       clear: both;
       margin-top: 10px;
       text-align: center;
       width: 100%;
     }
       .footer td,
       .footer p,
       .footer span,
       .footer a {
         color: #2b42d6;
         font-size: 12px;
         text-align: center;
     }

     /* -------------------------------------
         TYPOGRAPHY
     ------------------------------------- */
     h1,
     h2,
     h3,
     h4 {
       color: #000000;
       font-family: sans-serif;
       font-weight: 400;
       line-height: 1.4;
       margin: 0;
       margin-bottom: 30px;
     }

     h1 {
       font-size: 35px;
       font-weight: 300;
       text-align: center;
       text-transform: capitalize;
     }

     p,
     ul,
     ol {
       font-family: sans-serif;
       font-size: 14px;
       font-weight: normal;
       margin: 0;
       margin-bottom: 15px;
     }
       p li,
       ul li,
       ol li {
         list-style-position: inside;
         margin-left: 5px;
     }

     a {
       color: #3498db;
       text-decoration: underline;
     }

     /* -------------------------------------
         BUTTONS
     ------------------------------------- */
     .btn {
       box-sizing: border-box;
       width: 100%; }
       .btn > tbody > tr > td {
         padding-bottom: 15px; }
       .btn table {
         width: auto;
     }
       .btn table td {
         background-color: #ffffff;
         border-radius: 5px;
         text-align: center;
     }
       .btn a {
         background-color: #ffffff;
         border: solid 1px #3498db;
         border-radius: 5px;
         box-sizing: border-box;
         color: #3498db;
         cursor: pointer;
         display: inline-block;
         font-size: 14px;
         font-weight: bold;
         margin: 0;
         padding: 12px 25px;
         text-decoration: none;
         text-transform: capitalize;
     }

     .btn-primary table td {
       background-color: #3498db;
     }

     .btn-primary a {
       background-color: #3498db;
       border-color: #3498db;
       color: #ffffff;
     }

     /* -------------------------------------
         OTHER STYLES THAT MIGHT BE USEFUL
     ------------------------------------- */
     .last {
       margin-bottom: 0;
     }

     .first {
       margin-top: 0;
     }

     .align-center {
       text-align: center;
     }

     .align-right {
       text-align: right;
     }

     .align-left {
       text-align: left;
     }

     .clear {
       clear: both;
     }

     .mt0 {
       margin-top: 0;
     }

     .mb0 {
       margin-bottom: 0;
     }

     .preheader {
       color: transparent;
       display: none;
       height: 0;
       max-height: 0;
       max-width: 0;
       opacity: 0;
       overflow: hidden;
       mso-hide: all;
       visibility: hidden;
       width: 0;
     }

     .powered-by a {
       text-decoration: none;
     }

     hr {
       border: 0;
       border-bottom: 1px solid #f6f6f6;
       margin: 20px 0;
     }

     /* -------------------------------------
         RESPONSIVE AND MOBILE FRIENDLY STYLES
     ------------------------------------- */
     @media only screen and (max-width: 620px) {
       table[class=body] h1 {
         font-size: 28px !important;
         margin-bottom: 10px !important;
       }
       table[class=body] p,
       table[class=body] ul,
       table[class=body] ol,
       table[class=body] td,
       table[class=body] span,
       table[class=body] a {
         font-size: 16px !important;
       }
       table[class=body] .wrapper,
       table[class=body] .article {
         padding: 10px !important;
       }
       table[class=body] .content {
         padding: 0 !important;
       }
       table[class=body] .container {
         padding: 0 !important;
         width: 100% !important;
       }
       table[class=body] .main {
         border-left-width: 0 !important;
         border-radius: 0 !important;
         border-right-width: 0 !important;
       }
       table[class=body] .btn table {
         width: 100% !important;
       }
       table[class=body] .btn a {
         width: 100% !important;
       }
       table[class=body] .img-responsive {
         height: auto !important;
         max-width: 100% !important;
         width: auto !important;
       }
     }

     /* -------------------------------------
         PRESERVE THESE STYLES IN THE HEAD
     ------------------------------------- */
     @media all {
       .ExternalClass {
         width: 100%;
       }
       .ExternalClass,
       .ExternalClass p,
       .ExternalClass span,
       .ExternalClass font,
       .ExternalClass td,
       .ExternalClass div {
         line-height: 100%;
       }
       .apple-link a {
         color: inherit !important;
         font-family: inherit !important;
         font-size: inherit !important;
         font-weight: inherit !important;
         line-height: inherit !important;
         text-decoration: none !important;
       }
       #MessageViewBody a {
         color: inherit;
         text-decoration: none;
         font-size: inherit;
         font-family: inherit;
         font-weight: inherit;
         line-height: inherit;
       }
       .btn-primary table td:hover {
         background-color: #34495e !important;
       }
       .btn-primary a:hover {
         background-color: #34495e !important;
         border-color: #34495e !important;
       }
     }

   </style>
 </head>
 <body class="">
   <span class="preheader">This is a preview text </span>
   <table role="presentation" border="0" cellpadding="0" cellspacing="0" class="body">
     <tr>
       <td>&nbsp;</td>
       <td class="container">
         <div class="content">

           <!-- START CENTERED WHITE CONTAINER -->
           <table role="presentation" class="main">

             <!-- START MAIN CONTENT AREA -->
             <tr>
               <td class="wrapper">
                 <table role="presentation" border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td>
                       <p>Hi {{NAME}},</p>
                       <p>This is a new mail from Flutter Mailer.</p>
                       <table role="presentation" border="0" cellpadding="0" cellspacing="0" class="btn btn-primary">
                         <tbody>
                           <tr>
                             <td align="left">
                               <table role="presentation" border="0" cellpadding="0" cellspacing="0">
                                 <tbody>
                                   
                                 </tbody>
                               </table>
                             </td>
                           </tr>
                         </tbody>
                       </table>
                       <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                       <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat </p>
                     </td>
                   </tr>
                 </table>
               </td>
             </tr>

           <!-- END MAIN CONTENT AREA -->
           </table>
           <!-- END CENTERED WHITE CONTAINER -->

           <!-- START FOOTER -->
           <div class="footer">
             <table role="presentation" border="0" cellpadding="0" cellspacing="0">
               <tr>
                 <td class="content-block">
                   <span class="apple-link">At vero eos et accusamus et iusto  </span>
                   <br> odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti ? <a href="http://i.imgur.com/CScmqnj.gif">atque corrupti </a>.
                 </td>
               </tr>
               <tr>
                 <td class="content-block powered-by">
                   Powered by Flutter Mailer</a>.
                 </td>
               </tr>
             </table>
           </div>
           <!-- END FOOTER -->

         </div>
       </td>
       <td>&nbsp;</td>
     </tr>
   </table>
 </body>
</html>''';
    message.html = yourHtmlTemplate.replaceAll('{{NAME}}', nameFromSomeInput);

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
    setState(() {
      hasSentMail = !hasSentMail;
    });
  }

  bool hasSentMail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Center(
          child: Container(
            height: 50,
            width: 110,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
              child: FlatButton(
                color: Colors.blue,
                child: Center(
                  child: Text( hasSentMail ? 'Sending...': 'Send Mail',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    hasSentMail = true;
                  });
                  Mailer();

                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
