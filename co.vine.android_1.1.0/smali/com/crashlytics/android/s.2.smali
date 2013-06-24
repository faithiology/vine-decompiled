.class final Lcom/crashlytics/android/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    iput-wide p1, p0, Lcom/crashlytics/android/s;->a:J

    iput-object p3, p0, Lcom/crashlytics/android/s;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 205
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->s()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/E;

    move-result-object v0

    iget-wide v1, p0, Lcom/crashlytics/android/s;->a:J

    iget-object v3, p0, Lcom/crashlytics/android/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/E;->a(JLjava/lang/String;)V

    .line 206
    return-void
.end method
