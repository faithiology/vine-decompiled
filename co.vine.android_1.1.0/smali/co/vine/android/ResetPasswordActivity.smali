.class public Lco/vine/android/ResetPasswordActivity;
.super Lco/vine/android/BaseActivity;
.source "ResetPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ResetPasswordActivity$1;,
        Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;
    }
.end annotation


# static fields
.field private static final DIALOG_CONFIRMED:I = 0x1

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "email"


# instance fields
.field private mEmail:Landroid/widget/EditText;

.field private mSend:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    .line 106
    return-void
.end method

.method private validate()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x3

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
    .locals 0
    .parameter "editable"

    .prologue
    .line 99
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 34
    const v3, 0x7f030024

    invoke-super {p0, p1, v3, v6}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 35
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lco/vine/android/ResetPasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 37
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lco/vine/android/ResetPasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 38
    invoke-virtual {p0}, Lco/vine/android/ResetPasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 40
    const v3, 0x7f070036

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 41
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 43
    new-instance v3, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;-><init>(Lco/vine/android/ResetPasswordActivity;Lco/vine/android/ResetPasswordActivity$1;)V

    iput-object v3, p0, Lco/vine/android/ResetPasswordActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 45
    const v3, 0x7f09007c

    invoke-virtual {p0, v3}, Lco/vine/android/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    .line 46
    iget-object v3, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    iget-object v3, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v6, v5}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    invoke-virtual {p0}, Lco/vine/android/ResetPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 51
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "email"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    const-string v4, "email"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v3, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    iget-object v4, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 59
    invoke-virtual {p0}, Lco/vine/android/ResetPasswordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
    const v0, 0x7f0900a5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mSend:Landroid/view/MenuItem;

    .line 61
    iget-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mSend:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/ResetPasswordActivity;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 81
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 69
    :pswitch_0
    invoke-direct {p0}, Lco/vine/android/ResetPasswordActivity;->validate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 73
    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Lco/vine/android/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 75
    iput-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 76
    iget-object v1, p0, Lco/vine/android/ResetPasswordActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/ResetPasswordActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->resetPassword(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f0900a5
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 92
    iget-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mSend:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lco/vine/android/ResetPasswordActivity;->mSend:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/ResetPasswordActivity;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 95
    :cond_0
    return-void
.end method
