<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="SeminarioMatematica.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main" class="wrapper">
        <div class="container">
            <header class="major">
                <h2>Registration</h2>
                <p>To participate of Iguacu 2018 Mathematics and Its Application's Seminary, you must register here.</p>

                <div class="12u 12u$(small)">
                        <label><a href="registration-fee.aspx" title="Registration Fee">Registration Fee Information</a></label>
                    </div>
            </header>
            <section>
                <h3>Registration information:</h3>
                <div class="row uniform 50%">
                    <div class="6u 12u$(xsmall)">
                        <input type="text" id="txtName" value="" placeholder="Name" />
                    </div>
                    <div class="6u 12u$(xsmall)">
                        <input type="email" id="txtEmail" value="" placeholder="Email" />
                    </div>
                    <div class="6u 12u$(xsmall)">
                        <input type="text" id="txtInstitution" value="" placeholder="Institution" />
                    </div>
                    <div class="6u 12u$(xsmall)">
                        <input type="text" id="txtCountry" value="" placeholder="Country" />
                    </div>
                    <div class="6u 12u$(xsmall)">
                        <input type="text" id="txtArrivalDate" value="" placeholder="Arrival Date" />
                    </div>
                    <div class="6u 12u$(xsmall)">
                        <input type="text" id="txtLeavingDate" value="" placeholder="Leaving Date" />
                    </div>
                </div>
            </section>
            <br />
            <section>
                <h3>Participating Conference:</h3>
                <div class="row uniform 50%">
                    <div class="3u 12u$(small)">
                        <input type="checkbox" id="ckbBrazillianWorkShop" name="ConferenceOption">
                        <label for="ckbBrazillianWorkShop">XII Brazilian Workshop on Continuous Optimization</label>
                    </div>
                    <div class="3u 12u$(small)">
                        <input type="checkbox" id="ckbBriks" name="ConferenceOption">
                        <label for="ckbBriks">Conference BRICS on Mathematics</label>
                    </div>
                    <div class="3u 12u$(small)">
                        <input type="checkbox" id="ckb4BrazilChinaSymposium" name="ConferenceOption">
                        <label for="ckb4BrazilChinaSymposium">4th Brazil-China Symposium on Applied and Computational Mathematics</label>
                    </div>
                    <div class="3u 12u$(small)">
                        <input type="checkbox" id="ckbInternationalConference" name="ConferenceOption">
                        <label for="ckbInternationalConference">International Conference on Industrial Mathematics</label>
                    </div>
                </div>
            </section>
            <br />
            <section>
                <h3>Participant Type:</h3>
                <div class="row uniform 50%">
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbParticipantProfessor" name="participantType" checked>
                        <label for="rdbParticipantProfessor">Professor (Speaker)</label>
                    </div>
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbParticipantStudent" name="participantType">
                        <label for="rdbParticipantStudent">Students</label>
                    </div>
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbParticipantOther" name="participantType">
                        <label for="rdbParticipantOther">Other Type of Participant</label>
                    </div>
                </div>
            </section>
            <br />
            <section>
                <h3>Registration Type: </h3>

                <div class="row uniform 50%">
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbEnglishParticipant" checked name="RegistrationType">
                        <label for="rdbEnglishParticipant">Brazillian Researcher / Professor</label>
                    </div>
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbBrasileiroParticipante" name="RegistrationType">
                        <label for="rdbBrasileiroParticipante">Brazillian Student</label>
                    </div>
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbBrasileiroEstudante" name="RegistrationType">
                        <label for="rdbBrasileiroEstudante">Foreign Researcher / Professor</label>
                    </div>
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbBrasileiroEstudante2" name="RegistrationType">
                        <label for="rdbBrasileiroEstudante2">Foreign Student</label>
                    </div>
                    
                </div>
            </section>
            <br />
            <section>
                <h3>Presentation <font color="red">(The submissions are closed)</font>:</h3>
                <div class="row uniform 50%">
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbPresentationNone" checked name="Presentation">
                        <label for="rdbPresentationNone">None</label>
                    </div>
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbPresentationOral" name="Presentation">
                        <label for="rdbPresentationOral">Oral</label>
                    </div>
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbPresentationPoster" name="Presentation">
                        <label for="rdbPresentationPoster">Poster</label>
                    </div>
                </div>
            </section>
            <br />
            <section class="presentationEvent" style="display: none;">
                <h3>Event:</h3>
                <div class="row uniform 50%">
                    <div class="12u$">
                        <div class="select-wrapper">
                            <select id="ddlEventName" name="Presentation">
                                <option>- Select -</option>
                                <option>XII Brazilian Workshop on Continuous Optimization</option>
                                <option>4th Brazil-China Symposium on Applied and Computational Mathematics</option>
                                <option>Conference BRICS on Mathematics</option>
                                <option>International Conference on Industrial Mathematics</option>
                            </select>
                        </div>
                    </div>
                </div>
                <br />
            </section>
            <script type="text/javascript">
                jQuery(document).ready(function () {
                    jQuery("#rdbPresentationOral").change(function () {
                        if (jQuery("#rdbPresentationNone").attr("checked", "checked"))
                            jQuery("#presentationTitle").hide(500);
                        else
                            jQuery("#presentationTitle").show(500);
                    });
                })
            </script>
            <section class="presentationTitle" style="display: none;">
                <div class="12u$">
                    <textarea name="title" id="txtTitle" placeholder="Enter your title" rows="1"></textarea>
                </div>
                <br />
            </section>
            <section class="presentationAuthors" style="display: none;">
                <div class="row uniform 50%">
                    <div class="6u 6u$(xsmall)">Coauthors</div>
                    <div class="6u 6u$(xsmall)">Institution</div>
                </div>
                <div class="row uniform 50%">
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtCoAuthor1" />
                    </div>
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtInstitution1" />
                    </div>
                </div>
                <div class="row uniform 50%">
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtCoAuthor2" />
                    </div>
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtInstitution2" />
                    </div>
                </div>
                <div class="row uniform 50%">
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtCoAuthor3" />
                    </div>
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtInstitution3" />
                    </div>
                </div>
                <div class="row uniform 50%">
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtCoAuthor4" />
                    </div>
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtInstitution4" />
                    </div>
                </div>
                <div class="row uniform 50%">
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtCoAuthor5" />
                    </div>
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtInstitution5" />
                    </div>
                </div>
                <div class="row uniform 50%">
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtCoAuthor6" />
                    </div>
                    <div class="6u 6u$(xsmall)">
                        <input type="text" id="txtInstitution6" />
                    </div>
                </div>
                <br />
            </section>
            <section class="presentationAbstract" style="display: none;">
                <div class="12u$">
                    <textarea name="abstract" id="txtAbstract" maxlength="2000" placeholder="Enter your abstract" rows="6"></textarea>
                </div>
                <br />
            </section>
            <section>
                <h3>Room Type: <font color="red">(The Hotel Golden Park International is full.
To make reservation in other hotels contact Mr. Marcio, marcio@freetravel.com.br, phone +55-45-991354346).</font></h3>
                <div class="row uniform 50%">
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbApartmentNone" name="apartmentType" checked>
                        <label for="rdbApartmentNone">None</label>
                    </div>
                    <!--
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbApartmentSingle" name="apartmentType">
                        <label for="rdbApartmentSingle">Single</label>
                    </div>
                    <div class="3u 12u$(small)">
                        <input type="radio" id="rdbApartmentDouble" name="apartmentType">
                        <label for="rdbApartmentDouble">Double</label>
                    </div>
                    <div class="3u$ 12u$(small)">
                        <input type="radio" id="rdbApartmentTriple" name="apartmentType">
                        <label for="rdbApartmentTriple">Triple</label>
                    </div>-->
                </div>
            </section>
            <br />
            <section>
                <h3>Touristic Options (More than one choice is possible)</h3>
                <div class="row uniform 50%">
                    <div class="3u 12u$(small)">
                        <input type="checkbox" id="ckbWaterFalls" name="TurismOption">
                        <label for="ckbWaterFalls">Waterfalls</label>
                    </div>

                    <div class="3u 12u$(small)">
                        <input type="checkbox" id="ckbBirdsPark" name="TurismOption">
                        <label for="ckbBirdsPark">BirdsPark</label>
                    </div>

                    <div class="3u 12u$(small)">
                        <input type="checkbox" id="ckbItaipu" name="TurismOption">
                        <label for="ckbItaipu">Itaipu</label>
                    </div>

                    <div class="3u 12u$(small)">
                        <input type="checkbox" id="ckbTripleFrontier" name="TurismOption">
                        <label for="ckbTripleFrontier">Triple Frontier</label>
                    </div>
                </div>
            </section>
            <br />
            <section>
                <h3>Message:</h3>
                <div class="12u$">
                    <textarea name="message" id="txtMessage" placeholder="Enter your message" rows="6"></textarea>
                </div>
            </section>
            <br />
            <section>
                <div class="12u$">
                    <ul class="actions">
                        <li>
                            <input type="reset" class="button alt" value="Go Back" /></li>
                        <li>
                            <input type="button" id="btnRegister" value="Register" class="special" />
                        </li>
                        <li>
                            <div style="display: none;" id="paypal-button"></div>
                        </li>
                    </ul>
                </div>
            </section>
            <script src="https://www.paypalobjects.com/api/checkout.js"></script>
            <script>
                jQuery(document).ready(function () {
                    paypal.Button.render({
                        env: 'production', // Or 'sandbox',
                        client: {
                            sandbox: 'AXhWBXlZHmBjxNkHHcj2TumLTewMPlLvJs62VYGuezm5ps8_DQLAY1b14fNWeZKLsYoZnbCZaIhlmc_T',
                            production: 'sandra.augustasantos@hotmail.com'
                        },
                        commit: true, // Show a 'Pay Now' button
                        style: {
                            color: 'gold',
                            size: 'small',
                            label: 'checkout'
                        },
                        payment: function (data, actions) {
                            var mAmount = {};
                            if (jQuery("#rdbEnglishParticipant").prop("checked") === true) {
                                mAmount = { total: '300.00', currency: 'BRL' };
                            }
                            if (jQuery("#rdbBrasileiroParticipante").prop("checked") === true) {
                                mAmount = { total: '120.00', currency: 'BRL' };
                            }
                            if (jQuery("#rdbBrasileiroEstudante").prop("checked") === true) {
                                mAmount = { total: '75.00', currency: 'USD' };
                            }
                            if (jQuery("#rdbBrasileiroEstudante2").prop("checked") === true) {
                                mAmount = { total: '250.00', currency: 'USD' };
                            }
                            return actions.payment.create({
                                payment: {
                                    transactions: [
                                        {
                                            amount: mAmount
                                        }
                                    ]
                                }
                            });
                        },

                        onAuthorize: function (data, actions) {
                            return actions.payment.execute().then(function (payment) {
                                //jQuery.ajax({
                                //    url: "registration.ashx",
                                //    type: 'POST',
                                //    data: {
                                //        "action": "newUser",
                                //        'txtName': jQuery("#txtName").val(),
                                //        'txtEmail': jQuery("#txtEmail").val(),
                                //        'txtInstitution': jQuery("#txtInstitution").val(),
                                //        'txtCountry': jQuery("#txtCountry").val(),
                                //        'txtArrivalDate': jQuery("#txtArrivalDate").val(),
                                //        'txtLeavingDate': jQuery("#txtLeavingDate").val(),

                                //        'ckbBriks': jQuery("#ckbBriks").prop("checked"),
                                //        'ckbBrazillianWorkShop': jQuery("#ckbBrazillianWorkShop").prop("checked"),
                                //        'ckb4BrazilChinaSymposium': jQuery("#ckb4BrazilChinaSymposium").prop("checked"),
                                //        'ckbInternationalConference': jQuery("#ckbInternationalConference").prop("checked"),

                                //        'participantType': jQuery('input[name=participantType]:checked').parent().text().trim(),
                                //        'apartmentType': jQuery('input[name=apartmentType]:checked').parent().text().trim(),

                                //        'ckbWaterFalls': jQuery("#ckbWaterFalls").prop("checked"),
                                //        'ckbBirdsPark': jQuery("#ckbBirdsPark").prop("checked"),
                                //        'ckbItaipu': jQuery("#ckbItaipu").prop("checked"),
                                //        'ckbTripleFrontier': jQuery("#ckbTripleFrontier").prop("checked"),

                                //        //'BrasileiroFree': jQuery('input[name=BrasileiroFree]:checked').parent().text().trim(),
                                //        'RegistrationType': jQuery('input[name=RegistrationType]:checked').parent().text().trim(),
                                //        //'GringoFee': jQuery('input[name=GringoFee]:checked').parent().text().trim(),
                                //        'Presentation': jQuery('input[name=Presentation]:checked').parent().text().trim(),

                                //        'presentationEvent': jQuery("#ddlEventName").val(), //novo
                                //        'txtMessage': jQuery("#txtMessage").val(),
                                //        'txtTitle': jQuery("#txtTitle").val(),
                                //        'txtAbstract': jQuery("#txtAbstract").val(),

                                //        'txtCoAuthor1': jQuery("#txtCoAuthor1").val(),//novo
                                //        'txtInstitution1': jQuery("#txtInstitution1").val(),//novo
                                //        'txtCoAuthor2': jQuery("#txtCoAuthor2").val(),//novo
                                //        'txtInstitution2': jQuery("#txtInstitution2").val(),//novo
                                //        'txtCoAuthor3': jQuery("#txtCoAuthor3").val(),//novo
                                //        'txtInstitution3': jQuery("#txtInstitution3").val(),//novo
                                //        'txtCoAuthor4': jQuery("#txtCoAuthor4").val(),//novo
                                //        'txtInstitution4': jQuery("#txtInstitution4").val(),//novo
                                //        'txtCoAuthor5': jQuery("#txtCoAuthor5").val(),//novo
                                //        'txtInstitution5': jQuery("#txtInstitution5").val(),//novo
                                //        'txtCoAuthor6': jQuery("#txtCoAuthor6").val(),//novo
                                //        'txtInstitution6': jQuery("#txtInstitution6").val() //novo

                                //    },
                                //    success: function (data) {
                                //        alert("Your registration has been saved!");
                                //        window.location.replace("default.aspx");
                                //    }
                                //});
                            });
                        },

                        onCancel: function (data, actions) {
                            alert("Your registration has been canceled!");
                            window.location.replace("Registration.aspx");
                        },

                        onError: function (err) {
                            alert("Your registration has been canceled!");
                            window.location.replace("Registration.aspx");
                        }
                    }, '#paypal-button');
                })
            </script>
            <script type="text/javascript">
                jQuery(document).ready(function () {
                    jQuery('input[name=Presentation]').click(function () {
                        if (jQuery('input[name=Presentation]:checked').parent().text().trim() === "None") {
                            jQuery(".presentationTitle").hide(500);
                            jQuery(".presentationAbstract").hide(500);
                            jQuery(".presentationEvent").hide(500);
                            jQuery(".presentationAuthors").hide(500);
                        }
                        if (jQuery('input[name=Presentation]:checked').parent().text().trim() !== "None") {
                            jQuery(".presentationTitle").show(500);
                            jQuery(".presentationAbstract").show(500);
                            jQuery(".presentationEvent").show(500);
                            jQuery(".presentationAuthors").show(500);
                        }
                    });
                    jQuery("#btnRegister").click(function () {
                        var mComponentName = jQuery("#txtName").val();
                        var mComponentEmail = jQuery("#txtEmail").val();
                        var mComponentInstitution = jQuery("#txtInstitution").val();
                        var mComponentCountry = jQuery("#txtCountry").val();
                        var mComponentArrivalDate = jQuery("#txtArrivalDate").val();
                        var mComponentLeavigDate = jQuery("#txtLeavingDate").val();

                        if (mComponentName === "") {
                            alert("Please input a name!");
                            return;
                        }
                        if (mComponentEmail === "") {
                            alert("Please input an email!");
                            return;
                        }
                        if (mComponentInstitution === "") {
                            alert("Please input an institution!");
                            return;
                        }
                        if (mComponentCountry === "") {
                            alert("Please input a country!");
                            return;
                        }

                        if (jQuery('input[name=Presentation]:checked').parent().text().trim() !== "None") {
                            if (jQuery("#ddlEventName").val() === "- Select -") {
                                alert("Please select the event that you want to speak.");
                                return;
                            }
                            if (jQuery("#txtTitle").val() === "") {
                                alert("Please write a title for your presentation.");
                                return;
                            }
                            if (jQuery("#txtAbstract").val() === "") {
                                alert("Please write an abstract.");
                                return;
                            }
                        }
                        jQuery.ajax({
                            url: "registration.ashx",
                            type: 'POST',
                            data: {
                                "action": "newUser",
                                'txtName': jQuery("#txtName").val(),
                                'txtEmail': jQuery("#txtEmail").val(),
                                'txtInstitution': jQuery("#txtInstitution").val(),
                                'txtCountry': jQuery("#txtCountry").val(),
                                'txtArrivalDate': jQuery("#txtArrivalDate").val(),
                                'txtLeavingDate': jQuery("#txtLeavingDate").val(),

                                'ckbBriks': jQuery("#ckbBriks").prop("checked"),
                                'ckbBrazillianWorkShop': jQuery("#ckbBrazillianWorkShop").prop("checked"),
                                'ckb4BrazilChinaSymposium': jQuery("#ckb4BrazilChinaSymposium").prop("checked"),
                                'ckbInternationalConference': jQuery("#ckbInternationalConference").prop("checked"),

                                'participantType': jQuery('input[name=participantType]:checked').parent().text().trim(),
                                'apartmentType': jQuery('input[name=apartmentType]:checked').parent().text().trim(),

                                'ckbWaterFalls': jQuery("#ckbWaterFalls").prop("checked"),
                                'ckbBirdsPark': jQuery("#ckbBirdsPark").prop("checked"),
                                'ckbItaipu': jQuery("#ckbItaipu").prop("checked"),
                                'ckbTripleFrontier': jQuery("#ckbTripleFrontier").prop("checked"),

                                //'BrasileiroFree': jQuery('input[name=BrasileiroFree]:checked').parent().text().trim(),
                                'RegistrationType': jQuery('input[name=RegistrationType]:checked').parent().text().trim(),
                                //'GringoFee': jQuery('input[name=GringoFee]:checked').parent().text().trim(),
                                'Presentation': jQuery('input[name=Presentation]:checked').parent().text().trim(),

                                'presentationEvent': jQuery("#ddlEventName").val(), //novo
                                'txtMessage': jQuery("#txtMessage").val(),
                                'txtTitle': jQuery("#txtTitle").val(),
                                'txtAbstract': jQuery("#txtAbstract").val(),

                                'txtCoAuthor1': jQuery("#txtCoAuthor1").val(),//novo
                                'txtInstitution1': jQuery("#txtInstitution1").val(),//novo
                                'txtCoAuthor2': jQuery("#txtCoAuthor2").val(),//novo
                                'txtInstitution2': jQuery("#txtInstitution2").val(),//novo
                                'txtCoAuthor3': jQuery("#txtCoAuthor3").val(),//novo
                                'txtInstitution3': jQuery("#txtInstitution3").val(),//novo
                                'txtCoAuthor4': jQuery("#txtCoAuthor4").val(),//novo
                                'txtInstitution4': jQuery("#txtInstitution4").val(),//novo
                                'txtCoAuthor5': jQuery("#txtCoAuthor5").val(),//novo
                                'txtInstitution5': jQuery("#txtInstitution5").val(),//novo
                                'txtCoAuthor6': jQuery("#txtCoAuthor6").val(),//novo
                                'txtInstitution6': jQuery("#txtInstitution6").val() //novo

                            },
                            success: function (data) {
                                alert("Your registration has been saved!");
                                window.location.replace("default.aspx");
                            }
                        });
                        //jQuery("#paypal-button").show();
                        //alert("To finalize your registration, checkout with paypal.");
                    });
                });
            </script>
        </div>
    </section>

</asp:Content>
