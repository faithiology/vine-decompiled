.class public Lco/vine/android/api/ServerStatus;
.super Ljava/lang/Object;
.source "ServerStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final MEDIA_UPLOAD:Ljava/lang/String; = "media"

.field public static final S3_UPLOAD:Ljava/lang/String; = "s3"


# instance fields
.field public message:Ljava/lang/String;

.field public staticTimelineUrl:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uploadType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uploadType"
    .parameter "status"
    .parameter "title"
    .parameter "staticTimelineUrl"
    .parameter "message"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 52
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

    .line 54
    check-cast v0, Lco/vine/android/api/ServerStatus;

    .line 56
    .local v0, that:Lco/vine/android/api/ServerStatus;
    iget-object v3, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 57
    :cond_6
    iget-object v3, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 59
    goto :goto_0

    .line 57
    :cond_8
    iget-object v3, v0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 60
    :cond_9
    iget-object v3, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 61
    :cond_c
    iget-object v3, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    goto :goto_0

    :cond_e
    iget-object v3, v0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 62
    :cond_f
    iget-object v3, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 63
    goto :goto_0

    .line 62
    :cond_10
    iget-object v3, v0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v2, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 71
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 72
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 73
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 74
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 75
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 70
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 71
    goto :goto_1

    :cond_3
    move v2, v1

    .line 72
    goto :goto_2

    :cond_4
    move v2, v1

    .line 73
    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 42
    iget-object v0, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void
.end method
