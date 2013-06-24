.class public Lco/vine/android/util/CacheBinder;
.super Landroid/os/Binder;
.source "CacheBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Binder;"
    }
.end annotation


# instance fields
.field public final cache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/util/LruCache;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/LruCache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, this:Lco/vine/android/util/CacheBinder;,"Lco/vine/android/util/CacheBinder<TK;TV;>;"
    .local p1, cache:Landroid/support/v4/util/LruCache;,"Landroid/support/v4/util/LruCache<TK;TV;>;"
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 13
    iput-object p1, p0, Lco/vine/android/util/CacheBinder;->cache:Landroid/support/v4/util/LruCache;

    .line 14
    return-void
.end method
