.class public Lco/vine/android/FollowButtonViewHolder;
.super Ljava/lang/Object;
.source "FollowButtonViewHolder.java"


# instance fields
.field public following:Z

.field public userId:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0
    .parameter "userId"
    .parameter "following"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lco/vine/android/FollowButtonViewHolder;->userId:J

    .line 12
    iput-boolean p3, p0, Lco/vine/android/FollowButtonViewHolder;->following:Z

    .line 13
    return-void
.end method
