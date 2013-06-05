.class Lco/vine/android/SignUpPagerActivity$SignUpListener;
.super Lco/vine/android/client/AppSessionListener;
.source "SignUpPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/SignUpPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SignUpPagerActivity;


# direct methods
.method private constructor <init>(Lco/vine/android/SignUpPagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/SignUpPagerActivity;Lco/vine/android/SignUpPagerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lco/vine/android/SignUpPagerActivity$SignUpListener;-><init>(Lco/vine/android/SignUpPagerActivity;)V

    return-void
.end method


# virtual methods
.method public onCheckTwitterComplete(Ljava/lang/String;ILjava/lang/String;ZLco/vine/android/api/VineUser;Lco/vine/android/api/VineLogin;)V
    .locals 8
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "accountExists"
    .parameter "user"
    .parameter "login"

    .prologue
    .line 253
    if-eqz p4, :cond_0

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 255
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    iget-object v0, v0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    iget-object v1, v1, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-object v3, p5, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, p5, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    move v2, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Lco/vine/android/api/VineLogin;

    .line 257
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->dismissDialog()V

    .line 258
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-static {v0}, Lco/vine/android/StartActivity;->toStart(Landroid/app/Activity;)V

    .line 268
    :goto_0
    return-void

    .line 259
    :cond_0
    if-nez p4, :cond_1

    .line 261
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    const-class v1, Lco/vine/android/SignUpPagerActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "user"

    invoke-virtual {v7, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-virtual {v0, v7}, Lco/vine/android/SignUpPagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 266
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoginComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V
    .locals 3
    .parameter "session"
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "login"

    .prologue
    .line 236
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->dismissDialog()V

    .line 237
    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    .line 238
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Lco/vine/android/SignUpPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-static {v0}, Lco/vine/android/StartActivity;->toStart(Landroid/app/Activity;)V

    .line 248
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-static {v0, p4}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    const v1, 0x7f080049

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onSignUpComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "vineLogin"
    .parameter "accountName"
    .parameter "password"
    .parameter "avatarUrl"

    .prologue
    .line 200
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    if-eqz p4, :cond_0

    iget-wide v0, p4, Lco/vine/android/api/VineLogin;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 201
    iget v0, p4, Lco/vine/android/api/VineLogin;->loginType:I

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    iget-object v0, v0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    iget-object v1, v1, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    move v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Lco/vine/android/api/VineLogin;

    .line 205
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->dismissDialog()V

    .line 206
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-static {v0}, Lco/vine/android/StartActivity;->toStart(Landroid/app/Activity;)V

    goto :goto_0

    .line 210
    :pswitch_1
    new-instance v7, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    const/4 v1, 0x2

    invoke-direct {v7, v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 212
    .local v7, dialog:Landroid/app/ProgressDialog;
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    iput-object v7, v0, Lco/vine/android/SignUpPagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 213
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 214
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 217
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    iget-object v0, v0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    #getter for: Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
    invoke-static {v1}, Lco/vine/android/SignUpPagerActivity;->access$100(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;

    move-result-object v1

    iget-object v1, v1, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    iget-object v2, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    #getter for: Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
    invoke-static {v2}, Lco/vine/android/SignUpPagerActivity;->access$100(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;

    move-result-object v2

    iget-object v2, v2, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    iget-object v3, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    #getter for: Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
    invoke-static {v3}, Lco/vine/android/SignUpPagerActivity;->access$100(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;

    move-result-object v3

    iget-object v3, v3, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    iget-object v4, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    #getter for: Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
    invoke-static {v4}, Lco/vine/android/SignUpPagerActivity;->access$100(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;

    move-result-object v4

    iget-wide v4, v4, Lco/vine/android/api/VineLogin;->userId:J

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/client/AppController;->loginCheckTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto :goto_0

    .line 224
    .end local v7           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->dismissDialog()V

    .line 225
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;

    const v1, 0x7f080049

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
