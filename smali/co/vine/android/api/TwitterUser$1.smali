.class final Lco/vine/android/api/TwitterUser$1;
.super Ljava/lang/Object;
.source "TwitterUser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/TwitterUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lco/vine/android/api/TwitterUser;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/TwitterUser;
    .locals 1
    .parameter "in"

    .prologue
    .line 98
    new-instance v0, Lco/vine/android/api/TwitterUser;

    invoke-direct {v0, p1}, Lco/vine/android/api/TwitterUser;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lco/vine/android/api/TwitterUser$1;->createFromParcel(Landroid/os/Parcel;)Lco/vine/android/api/TwitterUser;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lco/vine/android/api/TwitterUser;
    .locals 1
    .parameter "size"

    .prologue
    .line 102
    new-array v0, p1, [Lco/vine/android/api/TwitterUser;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lco/vine/android/api/TwitterUser$1;->newArray(I)[Lco/vine/android/api/TwitterUser;

    move-result-object v0

    return-object v0
.end method
