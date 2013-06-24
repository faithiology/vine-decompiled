.class Lco/vine/android/util/MediaUtility$FileInfo;
.super Ljava/lang/Object;
.source "MediaUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/MediaUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public filename:Ljava/lang/String;

.field public uploadKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter "filename"
    .parameter "file"
    .parameter "uploadKey"

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lco/vine/android/util/MediaUtility$FileInfo;->filename:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lco/vine/android/util/MediaUtility$FileInfo;->file:Ljava/io/File;

    .line 184
    iput-object p3, p0, Lco/vine/android/util/MediaUtility$FileInfo;->uploadKey:Ljava/lang/String;

    .line 185
    return-void
.end method
