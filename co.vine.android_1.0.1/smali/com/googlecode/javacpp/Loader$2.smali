.class final Lcom/googlecode/javacpp/Loader$2;
.super Ljava/lang/Thread;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 621
    sget-object v2, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    if-nez v2, :cond_0

    .line 636
    :goto_0
    return-void

    .line 626
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 627
    .local v0, command:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "java.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bin/java"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 628
    const-string v2, "-classpath"

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v2, "java.class.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 630
    const-class v2, Lcom/googlecode/javacpp/Loader;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 631
    sget-object v2, Lcom/googlecode/javacpp/Loader;->tempDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 632
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    .end local v0           #command:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 634
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
