.class final Lcom/crashlytics/android/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 365
    iput-object p1, p0, Lcom/crashlytics/android/S;->d:Lcom/crashlytics/android/E;

    iput-object p2, p0, Lcom/crashlytics/android/S;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/S;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/S;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Lcom/crashlytics/android/S;->d:Lcom/crashlytics/android/E;

    invoke-static {v0}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/E;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/crashlytics/android/S;->d:Lcom/crashlytics/android/E;

    iget-object v1, p0, Lcom/crashlytics/android/S;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/S;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/S;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/E;->b(Lcom/crashlytics/android/E;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 371
    :cond_0
    return-void
.end method
