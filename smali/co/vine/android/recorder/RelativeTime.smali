.class public Lco/vine/android/recorder/RelativeTime;
.super Ljava/lang/Object;
.source "RelativeTime.java"


# instance fields
.field private end:J

.field public final start:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "start"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lco/vine/android/recorder/RelativeTime;->start:J

    .line 22
    return-void
.end method


# virtual methods
.method public getDuration(I)J
    .locals 7
    .parameter "frameRate"

    .prologue
    .line 25
    const/16 v3, 0x3e8

    div-int v2, v3, p1

    .line 26
    .local v2, msPerFrame:I
    iget-wide v3, p0, Lco/vine/android/recorder/RelativeTime;->end:J

    iget-wide v5, p0, Lco/vine/android/recorder/RelativeTime;->start:J

    sub-long v0, v3, v5

    .line 27
    .local v0, duration:J
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 28
    add-int/lit8 v3, v2, 0x1

    int-to-long v0, v3

    .line 30
    .end local v0           #duration:J
    :cond_0
    return-wide v0
.end method

.method public getEnd()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lco/vine/android/recorder/RelativeTime;->end:J

    return-wide v0
.end method

.method public setEnd(J)V
    .locals 0
    .parameter "end"

    .prologue
    .line 11
    iput-wide p1, p0, Lco/vine/android/recorder/RelativeTime;->end:J

    .line 12
    return-void
.end method
