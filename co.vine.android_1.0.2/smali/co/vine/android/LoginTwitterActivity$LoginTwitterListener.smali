.class Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;
.super Lco/vine/android/client/AppSessionListener;
.source "LoginTwitterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/LoginTwitterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginTwitterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/LoginTwitterActivity;


# direct methods
.method constructor <init>(Lco/vine/android/LoginTwitterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

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
    .line 203
    if-eqz p4, :cond_0

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 205
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    iget-object v0, v0, Lco/vine/android/LoginTwitterActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    iget-object v1, v1, Lco/vine/android/LoginTwitterActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-object v3, p5, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, p5, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    move v2, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Lco/vine/android/api/VineLogin;

    .line 207
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-static {v0}, Lco/vine/android/StartActivity;->toStart(Landroid/app/Activity;)V

    .line 217
    :goto_0
    return-void

    .line 208
    :cond_0
    if-nez p4, :cond_1

    .line 210
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    const-class v1, Lco/vine/android/SignUpPagerActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "user"

    invoke-virtual {v7, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-virtual {v0, v7}, Lco/vine/android/LoginTwitterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTwitterxAuthComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V
    .locals 7
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "login"

    .prologue
    const/16 v1, 0xc8

    .line 173
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    #getter for: Lco/vine/android/LoginTwitterActivity;->mFinish:Z
    invoke-static {v0}, Lco/vine/android/LoginTwitterActivity;->access$100(Lco/vine/android/LoginTwitterActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    if-ne p2, v1, :cond_0

    .line 175
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v6, i:Landroid/content/Intent;
    const-string v0, "token"

    iget-object v1, p4, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v0, "secret"

    iget-object v1, p4, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v0, "user_id"

    iget-wide v1, p4, Lco/vine/android/api/VineLogin;->twitterUserId:J

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 179
    const-string v0, "screen_name"

    iget-object v1, p4, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v6}, Lco/vine/android/LoginTwitterActivity;->setResult(ILandroid/content/Intent;)V

    .line 181
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-virtual {v0}, Lco/vine/android/LoginTwitterActivity;->finish()V

    .line 197
    .end local v6           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-virtual {v0}, Lco/vine/android/LoginTwitterActivity;->dismissDialog()V

    .line 184
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    const v1, 0x7f0800a1

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 189
    :cond_1
    if-ne p2, v1, :cond_2

    if-eqz p4, :cond_2

    .line 190
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    iget-object v0, v0, Lco/vine/android/LoginTwitterActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p4, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    iget-object v2, p4, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    iget-object v3, p4, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    iget-wide v4, p4, Lco/vine/android/api/VineLogin;->twitterUserId:J

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/client/AppController;->loginCheckTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    invoke-virtual {v0}, Lco/vine/android/LoginTwitterActivity;->dismissDialog()V

    .line 194
    iget-object v0, p0, Lco/vine/android/LoginTwitterActivity$LoginTwitterListener;->this$0:Lco/vine/android/LoginTwitterActivity;

    const v1, 0x7f08004d

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_0
.end method
