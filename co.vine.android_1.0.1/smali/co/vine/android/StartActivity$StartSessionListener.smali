.class Lco/vine/android/StartActivity$StartSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/StartActivity;


# direct methods
.method constructor <init>(Lco/vine/android/StartActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;

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
    .line 208
    if-eqz p4, :cond_0

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 210
    iget-object v0, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;

    iget-object v0, v0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;

    iget-object v1, v1, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-object v3, p5, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, p5, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    move v2, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Lco/vine/android/api/VineLogin;

    .line 212
    iget-object v0, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;

    invoke-static {v0}, Lco/vine/android/StartActivity;->toStart(Landroid/app/Activity;)V

    .line 221
    :goto_0
    return-void

    .line 213
    :cond_0
    if-nez p4, :cond_1

    .line 215
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;

    const-class v1, Lco/vine/android/SignUpPagerActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "user"

    invoke-virtual {v7, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;

    invoke-virtual {v0, v7}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;

    invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
