<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="VirtualAdvisor.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        
    </hgroup>

    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <p class="message-info">
                        Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <legend>Registration Form</legend>
                        <ol>

                           <asp:Label runat="server"><strong> Level of Education:</strong> </asp:Label>  <asp:DropDownList id="drop1" runat="server">
                            <asp:ListItem>High School</asp:ListItem>
                            <asp:ListItem>Some College</asp:ListItem>
                            <asp:ListItem>Returning Graduate</asp:ListItem>
                            </asp:DropDownList>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="UserName">Name</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                            </li>

                            <li>
                                <asp:Label  runat="server" AssociatedControlID="UserName">Date of Birth</asp:Label>
                                <asp:TextBox runat="server" ID="DOB" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Email">Email address</asp:Label>
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                            </li>
                            
                            <asp:RadioButtonList id="RadioButtonList1" runat="server" RepeatDirection="Vertical">
                           <asp:ListItem value="male">Male</asp:ListItem> 
                           <asp:ListItem value="female">Female</asp:ListItem>
                            </asp:RadioButtonList>
                               

                            <%-- <asp:RadioButtonList ID="rbl" runat="server" RepeatDirection="Horizontal" 
                             RepeatLayout="Table" CssClass="RBL" TextAlign="Left">
                            <asp:ListItem Text="radio button 1" />
                            <asp:ListItem Text="radio button 1" />
                            <asp:ListItem Text="radio button 1" />
                        </asp:RadioButtonList>--%>
                            
                        </ol>
                        <asp:Button runat="server" CommandName="MoveNext" Text="Register" />
                    </fieldset>
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>