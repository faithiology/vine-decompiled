.class final Lcom/crashlytics/android/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/E;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 901
    iput-object p2, p0, Lcom/crashlytics/android/H;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 903
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->q()Lcom/crashlytics/android/Y;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_0

    .line 908
    new-instance v1, Lcom/crashlytics/android/al;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/al;-><init>(Lcom/crashlytics/android/Y;)V

    new-instance v0, Lcom/crashlytics/android/ak;

    iget-object v2, p0, Lcom/crashlytics/android/H;->a:Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/E;->e()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/ak;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/al;->a(Lcom/crashlytics/android/ak;)Z

    .line 910
    :cond_0
    return-void
.end method
