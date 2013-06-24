.class Lco/vine/android/util/UrlResourceCache$MemoryLruCache;
.super Landroid/support/v4/util/LruCache;
.source "UrlResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/UrlResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Lco/vine/android/util/UrlResource;",
        ">",
        "Landroid/support/v4/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "maxMemory"

    .prologue
    .line 390
    .local p0, this:Lco/vine/android/util/UrlResourceCache$MemoryLruCache;,"Lco/vine/android/util/UrlResourceCache$MemoryLruCache<TK;TV;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 391
    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Lco/vine/android/util/UrlResource;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, this:Lco/vine/android/util/UrlResourceCache$MemoryLruCache;,"Lco/vine/android/util/UrlResourceCache$MemoryLruCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Lco/vine/android/util/UrlResource;,"TV;"
    invoke-virtual {p2}, Lco/vine/android/util/UrlResource;->size()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 387
    .local p0, this:Lco/vine/android/util/UrlResourceCache$MemoryLruCache;,"Lco/vine/android/util/UrlResourceCache$MemoryLruCache<TK;TV;>;"
    check-cast p2, Lco/vine/android/util/UrlResource;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lco/vine/android/util/UrlResourceCache$MemoryLruCache;->sizeOf(Ljava/lang/Object;Lco/vine/android/util/UrlResource;)I

    move-result v0

    return v0
.end method
