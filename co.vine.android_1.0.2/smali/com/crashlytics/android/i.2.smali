.class final Lcom/crashlytics/android/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lcom/crashlytics/android/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/crashlytics/android/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/crashlytics/android/i;->a:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/crashlytics/android/i;->b:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/crashlytics/android/i;->c:Ljava/lang/String;

    .line 26
    iput-boolean p5, p0, Lcom/crashlytics/android/i;->d:Z

    .line 27
    iput-object p6, p0, Lcom/crashlytics/android/i;->e:Lcom/crashlytics/android/c;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/crashlytics/android/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crashlytics/android/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/crashlytics/android/i;->d:Z

    return v0
.end method

.method public final d()Lcom/crashlytics/android/c;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/crashlytics/android/i;->e:Lcom/crashlytics/android/c;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 55
    const-string v0, "new"

    iget-object v1, p0, Lcom/crashlytics/android/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 59
    const-string v0, "configured"

    iget-object v1, p0, Lcom/crashlytics/android/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
