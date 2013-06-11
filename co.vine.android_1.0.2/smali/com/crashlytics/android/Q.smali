.class final Lcom/crashlytics/android/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Date;

.field private synthetic b:Ljava/lang/Thread;

.field private synthetic c:Ljava/lang/Throwable;

.field private synthetic d:Lcom/crashlytics/android/E;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/E;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/crashlytics/android/Q;->d:Lcom/crashlytics/android/E;

    iput-object p2, p0, Lcom/crashlytics/android/Q;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/Q;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/Q;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/crashlytics/android/Q;->d:Lcom/crashlytics/android/E;

    iget-object v1, p0, Lcom/crashlytics/android/Q;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/Q;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/Q;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/E;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
