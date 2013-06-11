.class public Lco/vine/android/BaseListFragment$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "BaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/BaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/BaseListFragment;


# direct methods
.method public constructor <init>(Lco/vine/android/BaseListFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 148
    iput-object p1, p0, Lco/vine/android/BaseListFragment$ChangeObserver;->this$0:Lco/vine/android/BaseListFragment;

    .line 149
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 150
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 159
    iget-object v0, p0, Lco/vine/android/BaseListFragment$ChangeObserver;->this$0:Lco/vine/android/BaseListFragment;

    iget-boolean v0, v0, Lco/vine/android/BaseListFragment;->mRefreshing:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lco/vine/android/BaseListFragment$ChangeObserver;->this$0:Lco/vine/android/BaseListFragment;

    invoke-virtual {v0}, Lco/vine/android/BaseListFragment;->handleContentChanged()V

    .line 162
    :cond_0
    return-void
.end method
