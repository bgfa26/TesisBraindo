<%@ Page Title="Braindo - Test" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="DetailedTest.aspx.cs" Inherits="Braindo.View.PatientModule.DetailedTest" %>

<asp:Content ID="ContentDetailedTest" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/PatientInformation.css" />
</asp:Content>

<asp:Content ID="ContentDetailedTest2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper-Psychologist">
            <div class="centerProfileTitle">
                <h2>Test: Ronald Navas</h2>
            </div>

            <div class="row">
                <div class="col-lg-1">
                </div>
                <div class="col-lg-10">
                   <div class="panel-DetailedTest panel-default">
                        <div class="panel-body-DetailedTest">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="form-group-DetailedTest">
                                        <label>1. Antes de realizar una exposición. ¿Sientes que te van a criticar?</label>
                                        <asp:DropDownList id="question1" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label> 2. En qué escala evitas hablar en pequeños grupos</label>
                                        <asp:DropDownList id="question2" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>3. ¿En presencia de una autoridad, tartamudeas o transpiras a la hora de hablar?</label>
                                        <asp:DropDownList id="question3" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>4. ¿Te anticipas a fallar al hablar frente a un jurado?</label>
                                        <asp:DropDownList id="question4" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>5. ¿Te sientes cómodo yendo a reuniones sociales?</label>
                                        <asp:DropDownList id="question5" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>6. Luego de que alguna persona te critica algún trabajo, ¿te sientes deprimido?</label>
                                        <asp:DropDownList id="question6" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>7. ¿Te has sentido inseguro al hablar con una persona desconocida?</label>
                                        <asp:DropDownList id="question7" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>8. Al hablar frente a un público, ¿Piensas que te van a criticar?</label>
                                        <asp:DropDownList id="question8" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>9. ¿Sientes inquietud al pensar en tu futuro?</label>
                                        <asp:DropDownList id="question9" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>10. ¿Dejas de pedir un consejo a un amigo por miedo a las críticas?</label>
                                        <asp:DropDownList id="question10" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>11. ¿Saludar a un desconocido te genera ansiedad?</label>
                                        <asp:DropDownList id="question11" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>12. ¿Te da miedo dar tu opinión a causa del rechazo?</label>
                                        <asp:DropDownList id="question12" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>13. Decir no a ciertas preguntas, ¿te causa incomodidad?</label>
                                        <asp:DropDownList id="question13" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>14. ¿Te preocupa admitir un error?</label>
                                        <asp:DropDownList id="question14" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>15. ¿Evitas hablar con personas en un grupo por temor a desconocer un tema?</label>
                                        <asp:DropDownList id="question15" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>16. Decirle un cumplido a alguien, ¿te genera ansiedad?</label>
                                        <asp:DropDownList id="question16" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>17. Exigir respeto cuando te lo han faltado, ¿te genera ansiedad?</label>
                                        <asp:DropDownList id="question17" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>18. Expresar una opinión distinta a la que tiene la persona con la que estás hablando, ¿te genera ansiedad?</label>
                                        <asp:DropDownList id="question18" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>19. ¿Evitas decir que no por miedo a la desaprobación? </label>
                                        <asp:DropDownList id="question19" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest">
                                        <label>20. Discutir abiertamente con una autoridad la crítica que le hicieron a tu trabajo, ¿te hace sentir incómodo? </label>
                                        <asp:DropDownList id="question20" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                </div>
                                <div class="col-lg-5">
                                    <div class="form-group-DetailedTest2">
                                        <label>21. Aceptar una cita o invitar a alguien a salir, ¿te genera ansiedad?</label>
                                        <asp:DropDownList id="question21" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>22. Evitas ir a reuniones sociales por miedo a relacionarte con otros</label>
                                        <asp:DropDownList id="question22" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>23. ¿Prefieres cualquier tipo de evaluación escrita sobre una evaluación oral?</label>
                                        <asp:TextBox runat="server" ID="question23" CssClass="form-control-DetailedTest2" TextMode="MultiLine" Rows="15" Enabled="false"></asp:TextBox>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>24. Defender tu punto de vista ante una figura de autoridad ¿te genera ansiedad?</label>
                                        <asp:DropDownList id="question24" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>25. Si buscan iniciar una conversación contigo, ¿te genera ansiedad continuarla?</label>
                                        <asp:DropDownList id="question25" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>26. Cuando estas hablando con tus compañeros. ¿temes que te juzguen por que desconozcas sobre el tema que están hablando?</label>
                                        <asp:DropDownList id="question26" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>27. ¿Evitas caer en discusiones con un profesor para defender tu punto de vista?</label>
                                        <asp:DropDownList id="question27" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>28. Antes de empezar una presentación (exposición, examen oral) ¿te predispones al fracaso?</label>
                                        <asp:DropDownList id="question28" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>29. ¿Sientes inquietud el no controlar tus sentimientos y preocupaciones?</label>
                                        <asp:DropDownList id="question29" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>30. ¿Tus preocupaciones interfieren en el camino de lo que quieres conseguir?</label>
                                        <asp:DropDownList id="question30" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>31. ¿Tus experiencias y malos recuerdos hacen que tu vida sea difícil de llevar?</label>
                                        <asp:DropDownList id="question31" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>32. ¿Por tu mente pasan imágenes que no puedes borrar?</label>
                                        <asp:DropDownList id="question32" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>33. ¿Tienes pensamientos que se te quedan rondando por la cabeza?</label>
                                        <asp:DropDownList id="question33" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>34. ¿A veces desearías poder dejar de pensar?</label>
                                        <asp:DropDownList id="question34" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>35. ¿Sientes que las demás personas a tu alrededor llevan su vida mejor que tu?</label>
                                        <asp:DropDownList id="question35" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>36. ¿Alguna vez se te ha cruzado una idea por la cabeza y has pensado que es una locura?</label>
                                        <asp:DropDownList id="question36" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>37. ¿Eres capaz de reírte ante un pensamiento irracional?</label>
                                        <asp:DropDownList id="question37" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>38. Sin importar que sientas temor, ¿irías a presentar una evaluación?</label>
                                        <asp:DropDownList id="question38" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>39. Sin importar el miedo al fracaso, ¿invitarías a una persona a salir?</label>
                                        <asp:DropDownList id="question39" runat="server" CssClass="form-control-DetailedTest" Enabled="false">
                                            <asp:ListItem Value="1">Nunca</asp:ListItem>
                                            <asp:ListItem Value="2">Pocas Veces</asp:ListItem>
                                            <asp:ListItem Value="3">A Veces</asp:ListItem>
                                            <asp:ListItem Value="4">Frecuentemente</asp:ListItem>
                                            <asp:ListItem Value="5">Siempre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-DetailedTest2">
                                        <label>40. ¿Qué piensas si un psicólogo tiene que analizarte?</label>
                                        <asp:TextBox runat="server" ID="question40" CssClass="form-control-DetailedTest2" TextMode="MultiLine" Rows="15" Enabled="false"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1">
                </div>
            </div>
        </div>
</asp:Content>
