.class public Lco/vine/android/WebViewActivity;
.super Lco/vine/android/BaseActivity;
.source "WebViewActivity.java"


# static fields
.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_ATTRIBUTION:I = 0x5

.field public static final TYPE_PRIVACY_POLICY_TWITTER:I = 0x3

.field public static final TYPE_PRIVACY_POLICY_VINE:I = 0x1

.field public static final TYPE_TOS_TWITTER:I = 0x4

.field public static final TYPE_TOS_VINE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 24
    const v2, 0x7f030029

    const/4 v3, 0x0

    invoke-super {p0, p1, v2, v3}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 26
    const v2, 0x7f09001c

    invoke-virtual {p0, v2}, Lco/vine/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 27
    .local v1, webView:Landroid/webkit/WebView;
    invoke-virtual {p0}, Lco/vine/android/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 29
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lco/vine/android/WebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 56
    return-void

    .line 31
    :pswitch_0
    const v2, 0x7f080007

    invoke-virtual {p0, v2}, Lco/vine/android/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :pswitch_1
    const v2, 0x7f080006

    invoke-virtual {p0, v2}, Lco/vine/android/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :pswitch_2
    const v2, 0x7f08000a

    invoke-virtual {p0, v2}, Lco/vine/android/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_3
    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lco/vine/android/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_4
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lco/vine/android/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-virtual {p0}, Lco/vine/android/WebViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 61
    const v0, 0x7f090088

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 62
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-super {p0, p1}, Lco/vine/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lco/vine/android/WebViewActivity;->finish()V

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x7f090088
        :pswitch_0
    .end packed-switch
.end method
