.class final Lcom/crashlytics/android/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/D;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/crashlytics/android/D",
        "<",
        "Lcom/crashlytics/android/Y;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/crashlytics/android/ao;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 563
    new-instance v0, Lcom/crashlytics/android/aa;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/crashlytics/android/ao;->b()Lcom/crashlytics/android/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/aa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
