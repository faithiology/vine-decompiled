.class Lco/vine/android/PostFragment$PostSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "PostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/PostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/PostFragment;


# direct methods
.method constructor <init>(Lco/vine/android/PostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFacebookComplete(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    .line 330
    iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;

    #getter for: Lco/vine/android/PostFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/PostFragment;->access$000(Lco/vine/android/PostFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;

    #getter for: Lco/vine/android/PostFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/PostFragment;->access$000(Lco/vine/android/PostFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    :cond_0
    const/16 v0, 0xc8

    if-eq p2, v0, :cond_1

    .line 334
    iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;

    invoke-virtual {v0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070059

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    .line 335
    iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;

    #getter for: Lco/vine/android/PostFragment;->mPostFacebook:Landroid/widget/Switch;
    invoke-static {v0}, Lco/vine/android/PostFragment;->access$100(Lco/vine/android/PostFragment;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 337
    :cond_1
    return-void
.end method

.method public onConnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "username"
    .parameter "token"
    .parameter "secret"
    .parameter "userId"

    .prologue
    .line 343
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 344
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;

    invoke-virtual {v0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;

    iget-object v1, v1, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-wide v5, p7

    invoke-static/range {v0 .. v6}, Lco/vine/android/client/VineAccountHelper;->saveTwitterInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 348
    iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;

    #getter for: Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;
    invoke-static {v0}, Lco/vine/android/PostFragment;->access$200(Lco/vine/android/PostFragment;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;

    invoke-virtual {v0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;

    #getter for: Lco/vine/android/PostFragment;->mPostTwitter:Landroid/widget/Switch;
    invoke-static {v0}, Lco/vine/android/PostFragment;->access$200(Lco/vine/android/PostFragment;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
