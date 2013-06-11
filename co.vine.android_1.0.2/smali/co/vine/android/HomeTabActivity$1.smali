.class Lco/vine/android/HomeTabActivity$1;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/HomeTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/HomeTabActivity;

.field final synthetic val$activeId:J


# direct methods
.method constructor <init>(Lco/vine/android/HomeTabActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lco/vine/android/HomeTabActivity$1;->this$0:Lco/vine/android/HomeTabActivity;

    iput-wide p2, p0, Lco/vine/android/HomeTabActivity$1;->val$activeId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$1;->this$0:Lco/vine/android/HomeTabActivity;

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/HomeTabActivity$1;->val$activeId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->fetchUsersMe(J)Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$1;->this$0:Lco/vine/android/HomeTabActivity;

    iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/HomeTabActivity$1;->val$activeId:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/client/AppController;->fetchFollowing(JI)Ljava/lang/String;

    .line 162
    return-void
.end method
