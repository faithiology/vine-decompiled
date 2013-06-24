.class final Lcom/crashlytics/android/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/crashlytics/android/i;

.field private final b:Lcom/crashlytics/android/ar;

.field private final c:Lcom/crashlytics/android/aj;

.field private final d:J


# direct methods
.method public constructor <init>(JLcom/crashlytics/android/i;Lcom/crashlytics/android/ar;Lcom/crashlytics/android/aj;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/crashlytics/android/ao;->d:J

    .line 17
    iput-object p3, p0, Lcom/crashlytics/android/ao;->a:Lcom/crashlytics/android/i;

    .line 18
    iput-object p4, p0, Lcom/crashlytics/android/ao;->b:Lcom/crashlytics/android/ar;

    .line 19
    iput-object p5, p0, Lcom/crashlytics/android/ao;->c:Lcom/crashlytics/android/aj;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/crashlytics/android/ao;->d:J

    return-wide v0
.end method

.method public final b()Lcom/crashlytics/android/i;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/crashlytics/android/ao;->a:Lcom/crashlytics/android/i;

    return-object v0
.end method

.method public final c()Lcom/crashlytics/android/ar;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/crashlytics/android/ao;->b:Lcom/crashlytics/android/ar;

    return-object v0
.end method

.method public final d()Lcom/crashlytics/android/aj;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/crashlytics/android/ao;->c:Lcom/crashlytics/android/aj;

    return-object v0
.end method
