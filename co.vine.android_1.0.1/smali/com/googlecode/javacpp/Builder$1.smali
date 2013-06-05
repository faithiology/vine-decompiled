.class final Lcom/googlecode/javacpp/Builder$1;
.super Ljava/lang/Object;
.source "Builder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacpp/Builder;->includeJavaPaths(Ljava/util/Properties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$jnipath:[Ljava/lang/String;

.field final synthetic val$jvmlib:Ljava/lang/String;

.field final synthetic val$jvmlink:Ljava/lang/String;

.field final synthetic val$jvmpath:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/googlecode/javacpp/Builder$1;->val$jnipath:[Ljava/lang/String;

    iput-object p2, p0, Lcom/googlecode/javacpp/Builder$1;->val$jvmlink:Ljava/lang/String;

    iput-object p3, p0, Lcom/googlecode/javacpp/Builder$1;->val$jvmpath:[Ljava/lang/String;

    iput-object p4, p0, Lcom/googlecode/javacpp/Builder$1;->val$jvmlib:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .parameter "dir"
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Ljava/io/File;

    const-string v1, "jni.h"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/googlecode/javacpp/Builder$1;->val$jnipath:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 75
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "jni_md.h"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/googlecode/javacpp/Builder$1;->val$jnipath:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 78
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/googlecode/javacpp/Builder$1;->val$jvmlink:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/googlecode/javacpp/Builder$1;->val$jvmpath:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 81
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/googlecode/javacpp/Builder$1;->val$jvmlib:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/googlecode/javacpp/Builder$1;->val$jvmpath:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 84
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
