.class abstract Lcom/crashlytics/android/a;
.super Lcom/crashlytics/android/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/ag;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/ag;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/crashlytics/android/h;)Z
    .locals 7
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/crashlytics/android/a;->b()Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    .line 39
    const-string v1, "X-CRASHLYTICS-API-KEY"

    invoke-virtual {p1}, Lcom/crashlytics/android/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getCrashlyticsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/crashlytics/android/h;->j()Lcom/crashlytics/android/ah;

    move-result-object v1

    const-string v2, "app[identifier]"

    invoke-virtual {p1}, Lcom/crashlytics/android/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    const-string v2, "app[name]"

    invoke-virtual {p1}, Lcom/crashlytics/android/h;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    const-string v2, "app[display_version]"

    invoke-virtual {p1}, Lcom/crashlytics/android/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    const-string v2, "app[build_version]"

    invoke-virtual {p1}, Lcom/crashlytics/android/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    const-string v2, "app[source]"

    invoke-virtual {p1}, Lcom/crashlytics/android/h;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/HttpRequest;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    const-string v2, "app[minimum_sdk_version]"

    invoke-virtual {p1}, Lcom/crashlytics/android/h;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    const-string v2, "app[built_sdk_version]"

    invoke-virtual {p1}, Lcom/crashlytics/android/h;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/crashlytics/android/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/av;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "app[instance_identifier]"

    invoke-virtual {p1}, Lcom/crashlytics/android/h;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/HttpRequest;

    :cond_0
    if-eqz v1, :cond_1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Lcom/crashlytics/android/ah;->b()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "app[icon][hash]"

    invoke-virtual {v1}, Lcom/crashlytics/android/ah;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/crashlytics/android/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v3

    const-string v4, "app[icon][data]"

    const-string v5, "icon.png"

    const-string v6, "application/octet-stream"

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/crashlytics/android/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v2

    const-string v3, "app[icon][width]"

    invoke-virtual {v1}, Lcom/crashlytics/android/ah;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/crashlytics/android/HttpRequest;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v2

    const-string v3, "app[icon][height]"

    invoke-virtual {v1}, Lcom/crashlytics/android/ah;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/crashlytics/android/HttpRequest;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/HttpRequest;

    .line 42
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending app info to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcom/crashlytics/android/HttpRequest;->b()I

    move-result v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Result was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Lcom/crashlytics/android/c;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
