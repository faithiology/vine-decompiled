.class final Lcom/crashlytics/android/G;
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
.field private synthetic a:J

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/crashlytics/android/E;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/E;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/crashlytics/android/G;->c:Lcom/crashlytics/android/E;

    iput-wide p2, p0, Lcom/crashlytics/android/G;->a:J

    iput-object p4, p0, Lcom/crashlytics/android/G;->b:Ljava/lang/String;

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
    .line 379
    iget-object v0, p0, Lcom/crashlytics/android/G;->c:Lcom/crashlytics/android/E;

    invoke-static {v0}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/E;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/G;->c:Lcom/crashlytics/android/E;

    iget-wide v1, p0, Lcom/crashlytics/android/G;->a:J

    iget-object v3, p0, Lcom/crashlytics/android/G;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/E;->b(JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
