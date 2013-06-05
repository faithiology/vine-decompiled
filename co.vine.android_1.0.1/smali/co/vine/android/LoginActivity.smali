.class public Lco/vine/android/LoginActivity;
.super Lco/vine/android/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/LoginActivity$LoginSessionListener;
    }
.end annotation


# instance fields
.field private mLoginButton:Landroid/view/MenuItem;

.field private mPassword:Landroid/widget/EditText;

.field private mUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/LoginActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lco/vine/android/LoginActivity;->validate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lco/vine/android/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/LoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lco/vine/android/LoginActivity;->login()V

    return-void
.end method

.method private login()V
    .locals 8

    .prologue
    .line 127
    iget-object v5, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, username:Ljava/lang/String;
    iget-object v5, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, password:Ljava/lang/String;
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v5, 0x2

    invoke-direct {v0, p0, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 130
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 131
    const v5, 0x7f080017

    invoke-virtual {p0, v5}, Lco/vine/android/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 133
    iput-object v0, p0, Lco/vine/android/LoginActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 135
    iget-object v5, p0, Lco/vine/android/LoginActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v4}, Lco/vine/android/client/AppController;->getSession(Ljava/lang/String;)Lco/vine/android/client/Session;

    move-result-object v3

    .line 136
    .local v3, s:Lco/vine/android/client/Session;
    new-instance v1, Lco/vine/android/api/VineLogin;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v1, v5, v4, v6, v7}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 138
    .local v1, login:Lco/vine/android/api/VineLogin;
    iget-object v5, p0, Lco/vine/android/LoginActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v3, v1, v2}, Lco/vine/android/client/AppController;->login(Lco/vine/android/client/Session;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    return-void
.end method

.method private validate()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 94
    iget-object v0, p0, Lco/vine/android/LoginActivity;->mLoginButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lco/vine/android/LoginActivity;->mLoginButton:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/LoginActivity;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 97
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 86
    return-void
.end method

.method completeLogin(ILjava/lang/String;)V
    .locals 1
    .parameter "statusCode"
    .parameter "reason"

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 149
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    :goto_0
    return-void

    .line 144
    :pswitch_0
    invoke-static {p0}, Lco/vine/android/StartActivity;->toStart(Landroid/app/Activity;)V

    .line 145
    invoke-virtual {p0}, Lco/vine/android/LoginActivity;->finish()V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 159
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/ResetPasswordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    const-string v2, "email"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_0
    invoke-virtual {p0, v1}, Lco/vine/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f090032
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 42
    const v4, 0x7f030016

    invoke-super {p0, p1, v4, v6}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 44
    invoke-virtual {p0}, Lco/vine/android/LoginActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 46
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 47
    const v4, 0x7f08001f

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 49
    new-instance v4, Lco/vine/android/LoginActivity$LoginSessionListener;

    invoke-direct {v4, p0}, Lco/vine/android/LoginActivity$LoginSessionListener;-><init>(Lco/vine/android/LoginActivity;)V

    iput-object v4, p0, Lco/vine/android/LoginActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 51
    const v4, 0x7f09002d

    invoke-virtual {p0, v4}, Lco/vine/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    .line 52
    iget-object v4, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v5

    invoke-virtual {v5, v6, v8}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    iget-object v4, p0, Lco/vine/android/LoginActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    const v4, 0x7f090030

    invoke-virtual {p0, v4}, Lco/vine/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    .line 57
    iget-object v4, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v5

    invoke-virtual {v5, v6, v8}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    iget-object v4, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    iget-object v4, p0, Lco/vine/android/LoginActivity;->mPassword:Landroid/widget/EditText;

    new-instance v5, Lco/vine/android/LoginActivity$1;

    invoke-direct {v5, p0}, Lco/vine/android/LoginActivity$1;-><init>(Lco/vine/android/LoginActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 73
    new-array v2, v7, [Landroid/text/style/StyleSpan;

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v4, v2, v6

    .line 75
    .local v2, mStyleSpanBoldSingle:[Landroid/text/style/StyleSpan;
    const v4, 0x7f090032

    invoke-virtual {p0, v4}, Lco/vine/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, mResetPassword:Landroid/widget/TextView;
    const v4, 0x7f080024

    invoke-virtual {p0, v4}, Lco/vine/android/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, resetText:Ljava/lang/String;
    const/16 v4, 0x22

    invoke-static {v2, v3, v4}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 80
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 101
    invoke-virtual {p0}, Lco/vine/android/LoginActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    const v0, 0x7f09008d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/LoginActivity;->mLoginButton:Landroid/view/MenuItem;

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 110
    :pswitch_0
    invoke-direct {p0}, Lco/vine/android/LoginActivity;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lco/vine/android/LoginActivity;->login()V

    .line 113
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x7f09008d
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 90
    return-void
.end method
