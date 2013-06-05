.class final Lcom/crashlytics/android/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/crashlytics/android/j;->a:Ljava/lang/String;

    .line 19
    iput-boolean p2, p0, Lcom/crashlytics/android/j;->b:Z

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/crashlytics/android/j;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/av;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/crashlytics/android/j;->b:Z

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "Crashlytics"

    const-string v1, "---"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v0, "Crashlytics"

    const-string v1, "Crashlytics did not find a required runtime dependency. To configure your build environment, visit: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v0, "Crashlytics"

    const-string v1, " "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "Crashlytics"

    const-string v1, "http://www.crashlytics.com/api/v1/%s/android/confirm/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, "Crashlytics"

    const-string v1, "---"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lcom/crashlytics/android/CrashlyticsMissingDependencyException;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/CrashlyticsMissingDependencyException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method
