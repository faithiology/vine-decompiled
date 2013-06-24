.class public Lco/vine/android/api/VinePostResponse;
.super Ljava/lang/Object;
.source "VinePostResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final createdAt:J

.field public final postId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .parameter "postId"
    .parameter "createdAt"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lco/vine/android/api/VinePostResponse;->postId:J

    .line 15
    iput-wide p3, p0, Lco/vine/android/api/VinePostResponse;->createdAt:J

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VinePostResponse;->postId:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VinePostResponse;->createdAt:J

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 30
    iget-wide v0, p0, Lco/vine/android/api/VinePostResponse;->postId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget-wide v0, p0, Lco/vine/android/api/VinePostResponse;->createdAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    return-void
.end method
