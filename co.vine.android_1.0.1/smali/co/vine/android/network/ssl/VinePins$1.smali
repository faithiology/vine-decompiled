.class final Lco/vine/android/network/ssl/VinePins$1;
.super Ljava/util/HashMap;
.source "VinePins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/network/ssl/VinePins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 16
    const-string v0, "DIGICERT"

    const-string v1, "af44aaf65452275ce9410fc9bf00ba147a016a02"

    invoke-virtual {p0, v0, v1}, Lco/vine/android/network/ssl/VinePins$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method
