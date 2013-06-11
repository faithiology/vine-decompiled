.class public Lco/vine/android/AuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "AuthenticatorActivity.java"


# static fields
.field private static final DIALOG_PROGRESS_ID:I = 0x1

.field public static final PARAM_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field public static final PARAM_CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field public static final PARAM_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field mConfirmCredentials:Ljava/lang/Boolean;

.field private mLoginEmail:Ljava/lang/String;

.field private mPasswordEditView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    return-void
.end method

.method private saveAuth(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 190
    new-instance v0, Landroid/accounts/Account;

    iget-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mLoginEmail:Ljava/lang/String;

    const-string v3, "co.vine.android.auth"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v0, account:Landroid/accounts/Account;
    iget-object v1, p0, Lco/vine/android/AuthenticatorActivity;->mAccountManager:Landroid/accounts/AccountManager;

    .line 192
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v2, "co.vine.android.basic_auth.token.secret"

    invoke-virtual {v1, v0, v2, p1}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method


# virtual methods
.method finishConfirmCredentials(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "result"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lco/vine/android/AuthenticatorActivity;->saveAuth(Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lco/vine/android/AuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 156
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lco/vine/android/AuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lco/vine/android/AuthenticatorActivity;->finish()V

    .line 158
    return-void
.end method

.method finishLogin(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lco/vine/android/AuthenticatorActivity;->saveAuth(Ljava/lang/String;)V

    .line 169
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "authAccount"

    iget-object v3, p0, Lco/vine/android/AuthenticatorActivity;->mLoginEmail:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v2, "accountType"

    const-string v3, "co.vine.android.auth"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "authtoken"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lco/vine/android/AuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 174
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lco/vine/android/AuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    .line 177
    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    .line 178
    .local v0, appController:Lco/vine/android/client/AppController;
    invoke-virtual {v0}, Lco/vine/android/client/AppController;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Lco/vine/android/client/AppController;->updateCredentials(Ljava/lang/String;)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/AuthenticatorActivity;->finish()V

    .line 182
    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 91
    iget-object v3, p0, Lco/vine/android/AuthenticatorActivity;->mPasswordEditView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, password:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lco/vine/android/AuthenticatorActivity;->showDialog(I)V

    .line 98
    new-instance v2, Lco/vine/android/AuthenticatorActivity$1;

    invoke-direct {v2, p0}, Lco/vine/android/AuthenticatorActivity$1;-><init>(Lco/vine/android/AuthenticatorActivity;)V

    .line 119
    .local v2, stub:Lco/vine/android/service/VineServiceResponder;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lco/vine/android/service/VineService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "LOGIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v3, "login"

    iget-object v4, p0, Lco/vine/android/AuthenticatorActivity;->mLoginEmail:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v3, "pass"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v3, "ibinder"

    new-instance v4, Lco/vine/android/service/VineServiceCallback;

    invoke-direct {v4, v2}, Lco/vine/android/service/VineServiceCallback;-><init>(Lco/vine/android/service/VineServiceResponder;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lco/vine/android/AuthenticatorActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x3

    .line 64
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0, v4}, Lco/vine/android/AuthenticatorActivity;->requestWindowFeature(I)Z

    .line 67
    const v2, 0x7f030016

    invoke-virtual {p0, v2}, Lco/vine/android/AuthenticatorActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lco/vine/android/AuthenticatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 71
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mAccountManager:Landroid/accounts/AccountManager;

    .line 73
    invoke-virtual {p0}, Lco/vine/android/AuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "username"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mLoginEmail:Ljava/lang/String;

    .line 76
    const-string v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mConfirmCredentials:Ljava/lang/Boolean;

    .line 78
    const v2, 0x7f09002d

    invoke-virtual {p0, v2}, Lco/vine/android/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, usernameView:Landroid/widget/TextView;
    iget-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mLoginEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v2, 0x7f090030

    invoke-virtual {p0, v2}, Lco/vine/android/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lco/vine/android/AuthenticatorActivity;->mPasswordEditView:Landroid/widget/EditText;

    .line 82
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 129
    packed-switch p1, :pswitch_data_0

    .line 139
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 131
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 132
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lco/vine/android/AuthenticatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 134
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
