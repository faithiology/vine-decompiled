.class public Lco/vine/android/PendingRequest;
.super Ljava/lang/Object;
.source "PendingRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/PendingRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final fetchType:I

.field public final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lco/vine/android/PendingRequest$1;

    invoke-direct {v0}, Lco/vine/android/PendingRequest$1;-><init>()V

    sput-object v0, Lco/vine/android/PendingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/PendingRequest;->fetchType:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/PendingRequest;->fetchType:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "fetchType"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    .line 33
    iput p2, p0, Lco/vine/android/PendingRequest;->fetchType:I

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 55
    check-cast v0, Lco/vine/android/PendingRequest;

    .line 56
    .local v0, request:Lco/vine/android/PendingRequest;
    iget-object v3, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 46
    iget-object v0, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void
.end method
