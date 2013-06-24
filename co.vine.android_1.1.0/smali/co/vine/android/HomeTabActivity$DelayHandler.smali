.class public final Lco/vine/android/HomeTabActivity$DelayHandler;
.super Landroid/os/Handler;
.source "HomeTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/HomeTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelayHandler"
.end annotation


# static fields
.field public static final DETERMINE_SERVER_STATUS:I = 0x3

.field public static final FETCH_FOLLOWERS:I = 0x2

.field public static final FETCH_ME:I = 0x1


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 193
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/HomeTabActivity$DelayHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 195
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 199
    iget-object v2, p0, Lco/vine/android/HomeTabActivity$DelayHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 200
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    .line 204
    .local v0, appController:Lco/vine/android/client/AppController;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 206
    :pswitch_0
    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/vine/android/client/AppController;->fetchUsersMe(J)Ljava/lang/String;

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lco/vine/android/client/AppController;->fetchFollowing(JI)Ljava/lang/String;

    goto :goto_0

    .line 215
    :pswitch_2
    invoke-virtual {v0}, Lco/vine/android/client/AppController;->determineServerStatus()V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
