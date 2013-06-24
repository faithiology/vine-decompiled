.class public abstract Lco/vine/android/util/UrlResource;
.super Ljava/lang/Object;
.source "UrlResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final NO_REQUEST_NEEDED:I


# instance fields
.field public nextRequestTime:J

.field public final url:Ljava/lang/String;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 15
    .local p0, this:Lco/vine/android/util/UrlResource;,"Lco/vine/android/util/UrlResource<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lco/vine/android/util/UrlResource;->url:Ljava/lang/String;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/vine/android/util/UrlResource;->nextRequestTime:J

    .line 18
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .prologue
    .line 29
    .local p0, this:Lco/vine/android/util/UrlResource;,"Lco/vine/android/util/UrlResource<TV;>;"
    iget-object v0, p0, Lco/vine/android/util/UrlResource;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lco/vine/android/util/UrlResource;->nextRequestTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract originalSize()I
.end method

.method public abstract size()I
.end method
