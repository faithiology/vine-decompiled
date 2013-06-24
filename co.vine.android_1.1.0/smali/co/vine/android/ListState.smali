.class public Lco/vine/android/ListState;
.super Ljava/lang/Object;
.source "ListState.java"


# instance fields
.field public firstVisibleItem:I

.field public hasNewScrollState:Z

.field private mDirty:Z

.field private mScrollState:I

.field public totalItemCount:I

.field public visibleItemCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDirty()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lco/vine/android/ListState;->mDirty:Z

    return v0
.end method

.method public isFling()Z
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lco/vine/android/ListState;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirty(Z)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 23
    iput-boolean p1, p0, Lco/vine/android/ListState;->mDirty:Z

    .line 24
    return-void
.end method

.method public setScrollState(I)V
    .locals 0
    .parameter "scrollState"

    .prologue
    .line 15
    iput p1, p0, Lco/vine/android/ListState;->mScrollState:I

    .line 16
    return-void
.end method

.method public shouldUpdate()Z
    .locals 2

    .prologue
    .line 31
    iget v0, p0, Lco/vine/android/ListState;->mScrollState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lco/vine/android/ListState;->mDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
