.class public Lco/vine/android/util/CrashUtil;
.super Ljava/lang/Object;
.source "CrashUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logException(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 13
    const-string v0, "Exception was logged."

    invoke-static {v0, p0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 15
    return-void
.end method

.method public static varargs logException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "e"
    .parameter "message"
    .parameter "objects"

    .prologue
    .line 18
    invoke-static {p1, p2}, Lcom/edisonwang/android/slog/MessageFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;

    move-result-object v1

    invoke-virtual {v1}, Lcom/edisonwang/android/slog/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, log:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method
