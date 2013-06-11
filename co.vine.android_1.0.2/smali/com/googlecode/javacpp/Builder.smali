.class public Lcom/googlecode/javacpp/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacpp/Builder$ClassScanner;,
        Lcom/googlecode/javacpp/Builder$UserClassLoader;,
        Lcom/googlecode/javacpp/Builder$Piper;
    }
.end annotation


# instance fields
.field classLoader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

.field classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;

.field classes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field compile:Z

.field compilerOptions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field environmentVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field header:Z

.field jarPrefix:Ljava/lang/String;

.field outputDirectory:Ljava/io/File;

.field outputName:Ljava/lang/String;

.field properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->classLoader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    .line 593
    iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->outputDirectory:Ljava/io/File;

    .line 596
    iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->outputName:Ljava/lang/String;

    .line 598
    iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->jarPrefix:Ljava/lang/String;

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacpp/Builder;->compile:Z

    .line 602
    iput-boolean v2, p0, Lcom/googlecode/javacpp/Builder;->header:Z

    .line 604
    iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;

    .line 606
    iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->classes:Ljava/util/LinkedList;

    .line 608
    iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;

    .line 610
    iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->environmentVariables:Ljava/util/Map;

    .line 612
    iput-object v1, p0, Lcom/googlecode/javacpp/Builder;->compilerOptions:Ljava/util/LinkedList;

    .line 581
    sput-boolean v2, Lcom/googlecode/javacpp/Loader;->loadLibraries:Z

    .line 582
    new-instance v0, Lcom/googlecode/javacpp/Builder$UserClassLoader;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/googlecode/javacpp/Builder$UserClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Builder;->classLoader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    .line 583
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getProperties()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;

    .line 584
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacpp/Builder;->classes:Ljava/util/LinkedList;

    .line 585
    new-instance v0, Lcom/googlecode/javacpp/Builder$ClassScanner;

    iget-object v1, p0, Lcom/googlecode/javacpp/Builder;->classes:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/googlecode/javacpp/Builder;->classLoader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    invoke-direct {v0, v1, v2}, Lcom/googlecode/javacpp/Builder$ClassScanner;-><init>(Ljava/util/Collection;Lcom/googlecode/javacpp/Builder$UserClassLoader;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;

    .line 586
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacpp/Builder;->compilerOptions:Ljava/util/LinkedList;

    .line 587
    return-void
.end method

.method public static createJar(Ljava/io/File;[Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 14
    .parameter "jarFile"
    .parameter "classpath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    .local p2, files:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Creating JAR file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    new-instance v6, Ljava/util/jar/JarOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v11}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 406
    .local v6, jos:Ljava/util/jar/JarOutputStream;
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 407
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, name:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 412
    array-length v11, p1

    new-array v9, v11, [Ljava/lang/String;

    .line 413
    .local v9, names:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v11, p1

    if-ge v4, v11, :cond_1

    .line 414
    new-instance v11, Ljava/io/File;

    aget-object v12, p1, v4

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    .line 415
    .local v10, path:Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 416
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v4

    .line 413
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 420
    .end local v10           #path:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    :goto_2
    array-length v11, v9

    if-ge v4, v11, :cond_3

    .line 421
    aget-object v11, v9, v4

    if-eqz v11, :cond_2

    aget-object v11, v9, v4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 422
    aget-object v8, v9, v4

    .line 420
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 426
    .end local v4           #i:I
    .end local v9           #names:[Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/util/zip/ZipEntry;

    sget-char v11, Ljava/io/File;->separatorChar:C

    const/16 v12, 0x2f

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, e:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 428
    invoke-virtual {v6, v1}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 429
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 430
    .local v3, fis:Ljava/io/FileInputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 432
    .local v0, buffer:[B
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, length:I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_4

    .line 433
    const/4 v11, 0x0

    invoke-virtual {v6, v0, v11, v7}, Ljava/util/jar/JarOutputStream;->write([BII)V

    goto :goto_3

    .line 435
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 436
    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    goto/16 :goto_0

    .line 440
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/util/zip/ZipEntry;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #length:I
    .end local v8           #name:Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->close()V

    .line 441
    return-void
.end method

.method public static includeJavaPaths(Ljava/util/Properties;)V
    .locals 24
    .parameter "properties"

    .prologue
    .line 62
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getPlatformName()Ljava/lang/String;

    move-result-object v19

    .line 63
    .local v19, platformName:Ljava/lang/String;
    const-string v20, "path.separator"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 64
    .local v18, pathSeparator:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "compiler.link.prefix"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "jvm"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "compiler.link.suffix"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 66
    .local v14, jvmlink:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "library.prefix"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "jvm"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "library.suffix"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 68
    .local v13, jvmlib:Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v12, v0, [Ljava/lang/String;

    .line 69
    .local v12, jnipath:[Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/String;

    .line 70
    .local v15, jvmpath:[Ljava/lang/String;
    new-instance v9, Lcom/googlecode/javacpp/Builder$1;

    invoke-direct {v9, v12, v14, v15, v13}, Lcom/googlecode/javacpp/Builder$1;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v9, filter:Ljava/io/FilenameFilter;
    new-instance v20, Ljava/io/File;

    const-string v21, "java.home"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 89
    .local v11, javaHome:Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 91
    :goto_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-virtual {v11, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 92
    .local v6, dirs:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    :cond_0
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    .line 93
    invoke-virtual {v6}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 94
    .local v5, d:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, dpath:Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .local v4, arr$:[Ljava/io/File;
    array-length v0, v4

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_0

    aget-object v8, v4, v10

    .line 97
    .local v8, f:Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 99
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 100
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 104
    .end local v4           #arr$:[Ljava/io/File;
    .end local v5           #d:Ljava/io/File;
    .end local v7           #dpath:Ljava/lang/String;
    .end local v8           #f:Ljava/io/File;
    .end local v10           #i$:I
    .end local v16           #len$:I
    :cond_2
    const/16 v20, 0x0

    aget-object v20, v12, v20

    if-eqz v20, :cond_6

    const/16 v20, 0x0

    aget-object v20, v12, v20

    const/16 v21, 0x1

    aget-object v21, v12, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 105
    const/16 v20, 0x1

    const/16 v21, 0x0

    aput-object v21, v12, v20

    .line 112
    :cond_3
    :goto_3
    const/16 v20, 0x0

    aget-object v20, v15, v20

    if-eqz v20, :cond_4

    const/16 v20, 0x0

    aget-object v20, v15, v20

    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 113
    const/16 v20, 0x1

    const/16 v21, 0x0

    aput-object v21, v15, v20

    .line 115
    :cond_4
    const-string v20, "compiler.includepath"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v12}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    const-string v20, "platform.name"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 117
    const-string v20, "compiler.link"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "jvm"

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    const-string v20, "compiler.linkpath"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v15}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    const-string v20, "macosx"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 120
    const-string v20, "compiler.framework"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "JavaVM"

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacpp/Loader;->appendProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    :cond_5
    return-void

    .line 106
    :cond_6
    const/16 v20, 0x0

    aget-object v20, v12, v20

    if-nez v20, :cond_3

    .line 107
    const-string v17, "/System/Library/Frameworks/JavaVM.framework/Headers/"

    .line 108
    .local v17, macpath:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 109
    const/16 v20, 0x0

    aput-object v17, v12, v20

    goto/16 :goto_3

    .line 90
    .end local v6           #dirs:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    .end local v17           #macpath:Ljava/lang/String;
    :catch_0
    move-exception v20

    goto/16 :goto_0

    .line 98
    .restart local v4       #arr$:[Ljava/io/File;
    .restart local v5       #d:Ljava/io/File;
    .restart local v6       #dirs:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    .restart local v7       #dpath:Ljava/lang/String;
    .restart local v8       #f:Ljava/io/File;
    .restart local v10       #i$:I
    .restart local v16       #len$:I
    :catch_1
    move-exception v20

    goto/16 :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, addedClasses:Z
    new-instance v1, Lcom/googlecode/javacpp/Builder;

    invoke-direct {v1}, Lcom/googlecode/javacpp/Builder;-><init>()V

    .line 825
    .local v1, builder:Lcom/googlecode/javacpp/Builder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_f

    .line 826
    const-string v3, "-help"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "--help"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    :cond_0
    invoke-static {}, Lcom/googlecode/javacpp/Builder;->printHelp()V

    .line 828
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 825
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    :cond_1
    const-string v3, "-classpath"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "-cp"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "-lib"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 830
    :cond_2
    add-int/lit8 v2, v2, 0x1

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->classPaths(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    goto :goto_1

    .line 831
    :cond_3
    const-string v3, "-d"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 832
    add-int/lit8 v2, v2, 0x1

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->outputDirectory(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    goto :goto_1

    .line 833
    :cond_4
    const-string v3, "-o"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 834
    add-int/lit8 v2, v2, 0x1

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->outputName(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    goto :goto_1

    .line 835
    :cond_5
    const-string v3, "-cpp"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "-nocompile"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 836
    :cond_6
    invoke-virtual {v1, v6}, Lcom/googlecode/javacpp/Builder;->compile(Z)Lcom/googlecode/javacpp/Builder;

    goto :goto_1

    .line 837
    :cond_7
    const-string v3, "-header"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 838
    invoke-virtual {v1, v7}, Lcom/googlecode/javacpp/Builder;->header(Z)Lcom/googlecode/javacpp/Builder;

    goto :goto_1

    .line 839
    :cond_8
    const-string v3, "-jarprefix"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 840
    add-int/lit8 v2, v2, 0x1

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->jarPrefix(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    goto/16 :goto_1

    .line 841
    :cond_9
    const-string v3, "-properties"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 842
    add-int/lit8 v2, v2, 0x1

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->properties(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    goto/16 :goto_1

    .line 843
    :cond_a
    const-string v3, "-propertyfile"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 844
    add-int/lit8 v2, v2, 0x1

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->propertyFile(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    goto/16 :goto_1

    .line 845
    :cond_b
    aget-object v3, p0, v2

    const-string v4, "-D"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 846
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->property(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    goto/16 :goto_1

    .line 847
    :cond_c
    const-string v3, "-Xcompiler"

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 848
    new-array v3, v7, [Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p0, v2

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->compilerOptions([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    goto/16 :goto_1

    .line 849
    :cond_d
    aget-object v3, p0, v2

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 850
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Invalid option \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 851
    invoke-static {}, Lcom/googlecode/javacpp/Builder;->printHelp()V

    .line 852
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 854
    :cond_e
    new-array v3, v7, [Ljava/lang/String;

    aget-object v4, p0, v2

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->classesOrPackages([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    .line 855
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 858
    :cond_f
    if-nez v0, :cond_10

    .line 859
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Builder;->classesOrPackages([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    .line 861
    :cond_10
    invoke-virtual {v1}, Lcom/googlecode/javacpp/Builder;->build()Ljava/util/Collection;

    .line 862
    return-void
.end method

.method public static printHelp()V
    .locals 4

    .prologue
    .line 787
    const-class v1, Lcom/googlecode/javacpp/Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, version:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 789
    const-string v0, "unknown"

    .line 791
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JavaCPP version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Copyright (C) 2011-2013 Samuel Audet <samuel.audet@gmail.com>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Project site: http://code.google.com/p/javacpp/\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Licensed under the GNU General Public License version 2 (GPLv2) with Classpath exception.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Please refer to LICENSE.txt or http://www.gnu.org/licenses/ for details."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 798
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 799
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Usage: java -jar javacpp.jar [options] [class or package (suffixed with .* or .**)]"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 800
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 801
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "where options include:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 802
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 803
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    -classpath <path>      Load user classes from path"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 804
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    -d <directory>         Output all generated files to directory"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 805
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    -o <name>              Output everything in a file named after given name"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 806
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    -nocompile             Do not compile or delete the generated source files"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 807
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    -header                Generate header file with declarations of callbacks functions"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 808
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    -jarprefix <prefix>    Also create a JAR file named \"<prefix>-<platform.name>.jar\""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 809
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    -properties <resource> Load all properties from resource"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 810
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    -propertyfile <file>   Load all properties from file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 811
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    -D<property>=<value>   Set property to value"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 812
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    -Xcompiler <option>    Pass option directly to compiler"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 813
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 814
    return-void
.end method


# virtual methods
.method public build()Ljava/util/Collection;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 734
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder;->classes:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 780
    :goto_0
    return-object v11

    .line 739
    :cond_0
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder;->outputName:Ljava/lang/String;

    if-nez v10, :cond_5

    .line 740
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 741
    .local v8, outputFiles:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 742
    .local v7, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Class;>;>;"
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder;->classes:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 743
    .local v0, c:Ljava/lang/Class;
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;

    invoke-virtual {v10}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Properties;

    .line 744
    .local v9, p:Ljava/util/Properties;
    invoke-static {v9, v0}, Lcom/googlecode/javacpp/Loader;->appendProperties(Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v10

    if-ne v10, v0, :cond_1

    .line 747
    const-string v10, "loader.library"

    const-string v12, ""

    invoke-virtual {v9, v10, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 748
    .local v6, libraryName:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    .line 751
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 752
    .local v1, classList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Class;>;"
    if-nez v1, :cond_2

    .line 753
    new-instance v1, Ljava/util/LinkedList;

    .end local v1           #classList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Class;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .restart local v1       #classList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Class;>;"
    invoke-interface {v7, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 757
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #classList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Class;>;"
    .end local v6           #libraryName:Ljava/lang/String;
    .end local v9           #p:Ljava/util/Properties;
    :cond_3
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 758
    .restart local v6       #libraryName:Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 759
    .restart local v1       #classList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Class;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {p0, v10, v6}, Lcom/googlecode/javacpp/Builder;->generateAndCompile([Ljava/lang/Class;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 760
    .local v3, f:Ljava/io/File;
    if-eqz v3, :cond_4

    .line 761
    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 765
    .end local v1           #classList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Class;>;"
    .end local v3           #f:Ljava/io/File;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #libraryName:Ljava/lang/String;
    .end local v7           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Class;>;>;"
    .end local v8           #outputFiles:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    :cond_5
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 766
    .restart local v8       #outputFiles:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder;->classes:Ljava/util/LinkedList;

    iget-object v12, p0, Lcom/googlecode/javacpp/Builder;->classes:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Class;

    iget-object v12, p0, Lcom/googlecode/javacpp/Builder;->outputName:Ljava/lang/String;

    invoke-virtual {p0, v10, v12}, Lcom/googlecode/javacpp/Builder;->generateAndCompile([Ljava/lang/Class;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 767
    .restart local v3       #f:Ljava/io/File;
    if-eqz v3, :cond_6

    .line 768
    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 772
    .end local v3           #f:Ljava/io/File;
    :cond_6
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder;->jarPrefix:Ljava/lang/String;

    if-eqz v10, :cond_8

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 773
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/googlecode/javacpp/Builder;->jarPrefix:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;

    const-string v13, "platform.name"

    invoke-virtual {v12, v13}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ".jar"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v5, jarFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 775
    .local v2, d:Ljava/io/File;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_7

    .line 776
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 778
    :cond_7
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder;->outputDirectory:Ljava/io/File;

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/googlecode/javacpp/Builder;->classLoader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    invoke-virtual {v10}, Lcom/googlecode/javacpp/Builder$UserClassLoader;->getPaths()[Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-static {v5, v10, v8}, Lcom/googlecode/javacpp/Builder;->createJar(Ljava/io/File;[Ljava/lang/String;Ljava/util/LinkedList;)V

    .end local v2           #d:Ljava/io/File;
    .end local v5           #jarFile:Ljava/io/File;
    :cond_8
    move-object v11, v8

    .line 780
    goto/16 :goto_0

    .restart local v2       #d:Ljava/io/File;
    .restart local v5       #jarFile:Ljava/io/File;
    :cond_9
    move-object v10, v11

    .line 778
    goto :goto_3
.end method

.method public classPaths(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
    .locals 1
    .parameter "classPaths"

    .prologue
    .line 616
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder;->classPaths([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    .line 617
    return-object p0

    .line 616
    :cond_0
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs classPaths([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
    .locals 1
    .parameter "classPaths"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/googlecode/javacpp/Builder;->classLoader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacpp/Builder$UserClassLoader;->addPaths([Ljava/lang/String;)V

    .line 622
    return-object p0
.end method

.method public varargs classesOrPackages([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
    .locals 7
    .parameter "classesOrPackages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    if-nez p1, :cond_1

    .line 707
    iget-object v4, p0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addPackage(Ljava/lang/String;Z)V

    .line 711
    :cond_0
    return-object p0

    .line 708
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 709
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/googlecode/javacpp/Builder;->classScanner:Lcom/googlecode/javacpp/Builder$ClassScanner;

    invoke-virtual {v4, v3}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addClassOrPackage(Ljava/lang/String;)V

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public compile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)I
    .locals 29
    .parameter "sourceFilename"
    .parameter "outputFilename"
    .parameter "properties"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 166
    .local v4, command:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Lcom/googlecode/javacpp/Builder;->includeJavaPaths(Ljava/util/Properties;)V

    .line 168
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getPlatformName()Ljava/lang/String;

    move-result-object v20

    .line 169
    .local v20, platformName:Ljava/lang/String;
    const-string v26, "path.separator"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 170
    .local v18, pathSeparator:Ljava/lang/String;
    const-string v26, "platform.root"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 171
    .local v21, platformRoot:Ljava/lang/String;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_1

    .line 172
    :cond_0
    const-string v21, "."

    .line 174
    :cond_1
    sget-object v26, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 175
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 178
    :cond_2
    const-string v26, "compiler.path"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, compilerPath:Ljava/lang/String;
    if-eqz v21, :cond_3

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->isAbsolute()Z

    move-result v26

    if-nez v26, :cond_3

    new-instance v26, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 181
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 183
    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v26, "compiler.sysroot"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 186
    .local v23, sysroot:Ljava/lang/String;
    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_7

    .line 187
    const-string v26, "compiler.sysroot.prefix"

    const-string v27, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 188
    .local v16, p:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_7

    aget-object v22, v3, v8

    .line 189
    .local v22, s:Ljava/lang/String;
    if-eqz v21, :cond_4

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->isAbsolute()Z

    move-result v26

    if-nez v26, :cond_4

    .line 190
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 192
    :cond_4
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->isDirectory()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 193
    const-string v26, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 194
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 196
    :cond_6
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v16           #p:Ljava/lang/String;
    .end local v22           #s:Ljava/lang/String;
    :cond_7
    const-string v26, "compiler.includepath"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 203
    .local v9, includepath:Ljava/lang/String;
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_b

    .line 204
    const-string v26, "compiler.includepath.prefix"

    const-string v27, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 205
    .restart local v16       #p:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v10, :cond_b

    aget-object v22, v3, v8

    .line 206
    .restart local v22       #s:Ljava/lang/String;
    if-eqz v21, :cond_8

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->isAbsolute()Z

    move-result v26

    if-nez v26, :cond_8

    .line 207
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 209
    :cond_8
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->isDirectory()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 210
    const-string v26, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 211
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 213
    :cond_a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 219
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v16           #p:Ljava/lang/String;
    .end local v22           #s:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v26, "compiler.options"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 222
    .local v14, options:Ljava/lang/String;
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_c

    .line 223
    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 226
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->compilerOptions:Ljava/util/LinkedList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 228
    const-string v26, "compiler.output.prefix"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 229
    .local v15, outputPrefix:Ljava/lang/String;
    if-eqz v15, :cond_d

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_d

    .line 230
    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 233
    :cond_d
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_e

    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 234
    :cond_e
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_4
    const-string v26, "compiler.linkpath"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 240
    .local v13, linkpath:Ljava/lang/String;
    if-eqz v13, :cond_14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_14

    .line 241
    const-string v26, "compiler.linkpath.prefix"

    const-string v27, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 242
    .restart local v16       #p:Ljava/lang/String;
    const-string v26, "compiler.linkpath.prefix2"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 243
    .local v17, p2:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_5
    if-ge v8, v10, :cond_14

    aget-object v22, v3, v8

    .line 244
    .restart local v22       #s:Ljava/lang/String;
    if-eqz v21, :cond_f

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->isAbsolute()Z

    move-result v26

    if-nez v26, :cond_f

    .line 245
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 247
    :cond_f
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->isDirectory()Z

    move-result v26

    if-eqz v26, :cond_10

    .line 248
    const-string v26, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 249
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_6
    if-eqz v17, :cond_10

    .line 254
    const-string v26, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 255
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_10
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 236
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v13           #linkpath:Ljava/lang/String;
    .end local v16           #p:Ljava/lang/String;
    .end local v17           #p2:Ljava/lang/String;
    .end local v22           #s:Ljava/lang/String;
    :cond_11
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 251
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    .restart local v13       #linkpath:Ljava/lang/String;
    .restart local v16       #p:Ljava/lang/String;
    .restart local v17       #p2:Ljava/lang/String;
    .restart local v22       #s:Ljava/lang/String;
    :cond_12
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 257
    :cond_13
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 264
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v16           #p:Ljava/lang/String;
    .end local v17           #p2:Ljava/lang/String;
    .end local v22           #s:Ljava/lang/String;
    :cond_14
    const-string v26, "compiler.link"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, link:Ljava/lang/String;
    if-eqz v12, :cond_19

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_19

    .line 266
    const-string v26, "compiler.link.prefix"

    const-string v27, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 267
    .restart local v16       #p:Ljava/lang/String;
    const-string v26, "compiler.link.suffix"

    const-string v27, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 268
    .local v25, x:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_8
    if-ge v8, v10, :cond_19

    aget-object v22, v3, v8

    .line 269
    .restart local v22       #s:Ljava/lang/String;
    const-string v26, "@"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 270
    .local v11, libnameversion:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    const/16 v26, 0x1

    aget-object v26, v11, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_15

    .line 272
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v27, 0x0

    aget-object v27, v11, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    aget-object v27, v11, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 276
    :goto_9
    const-string v26, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_16

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 277
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 268
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 274
    :cond_15
    const/16 v26, 0x0

    aget-object v22, v11, v26

    goto :goto_9

    .line 278
    :cond_16
    const-string v26, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 279
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 280
    :cond_17
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 281
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 283
    :cond_18
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 288
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v11           #libnameversion:[Ljava/lang/String;
    .end local v16           #p:Ljava/lang/String;
    .end local v22           #s:Ljava/lang/String;
    .end local v25           #x:Ljava/lang/String;
    :cond_19
    const-string v26, "compiler.framework"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, framework:Ljava/lang/String;
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_1d

    .line 290
    const-string v26, "compiler.framework.prefix"

    const-string v27, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 291
    .restart local v16       #p:Ljava/lang/String;
    const-string v26, "compiler.framework.suffix"

    const-string v27, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 292
    .restart local v25       #x:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_b
    if-ge v8, v10, :cond_1d

    aget-object v22, v3, v8

    .line 293
    .restart local v22       #s:Ljava/lang/String;
    const-string v26, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1a

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 294
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 292
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 295
    :cond_1a
    const-string v26, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 296
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 297
    :cond_1b
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 298
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 300
    :cond_1c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 305
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v16           #p:Ljava/lang/String;
    .end local v22           #s:Ljava/lang/String;
    .end local v25           #x:Ljava/lang/String;
    :cond_1d
    const-string v26, "windows"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    .line 306
    .local v24, windows:Z
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_23

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 307
    .restart local v22       #s:Ljava/lang/String;
    const-string v26, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_20

    const/4 v7, 0x1

    .line 308
    .local v7, hasSpaces:Z
    :goto_e
    if-eqz v7, :cond_1e

    .line 309
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz v24, :cond_21

    const-string v26, "\""

    :goto_f
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 311
    :cond_1e
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 312
    if-eqz v7, :cond_1f

    .line 313
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz v24, :cond_22

    const-string v26, "\""

    :goto_10
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 315
    :cond_1f
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_d

    .line 307
    .end local v7           #hasSpaces:Z
    :cond_20
    const/4 v7, 0x0

    goto :goto_e

    .line 309
    .restart local v7       #hasSpaces:Z
    :cond_21
    const-string v26, "\'"

    goto :goto_f

    .line 313
    :cond_22
    const-string v26, "\'"

    goto :goto_10

    .line 317
    .end local v7           #hasSpaces:Z
    .end local v22           #s:Ljava/lang/String;
    :cond_23
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintStream;->println()V

    .line 319
    new-instance v19, Ljava/lang/ProcessBuilder;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 320
    .local v19, pb:Ljava/lang/ProcessBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->environmentVariables:Ljava/util/Map;

    move-object/from16 v26, v0

    if-eqz v26, :cond_24

    .line 321
    invoke-virtual/range {v19 .. v19}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->environmentVariables:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 323
    :cond_24
    invoke-virtual/range {v19 .. v19}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v16

    .line 324
    .local v16, p:Ljava/lang/Process;
    new-instance v26, Lcom/googlecode/javacpp/Builder$Piper;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v27

    sget-object v28, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct/range {v26 .. v28}, Lcom/googlecode/javacpp/Builder$Piper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/javacpp/Builder$Piper;->start()V

    .line 325
    new-instance v26, Lcom/googlecode/javacpp/Builder$Piper;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct/range {v26 .. v28}, Lcom/googlecode/javacpp/Builder$Piper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/javacpp/Builder$Piper;->start()V

    .line 326
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->waitFor()I

    move-result v26

    return v26
.end method

.method public compile(Z)Lcom/googlecode/javacpp/Builder;
    .locals 0
    .parameter "compile"

    .prologue
    .line 636
    iput-boolean p1, p0, Lcom/googlecode/javacpp/Builder;->compile:Z

    .line 637
    return-object p0
.end method

.method public varargs compilerOptions([Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
    .locals 2
    .parameter "options"

    .prologue
    .line 720
    if-eqz p1, :cond_0

    .line 721
    iget-object v0, p0, Lcom/googlecode/javacpp/Builder;->compilerOptions:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 723
    :cond_0
    return-object p0
.end method

.method public environmentVariables(Ljava/util/Map;)Lcom/googlecode/javacpp/Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/googlecode/javacpp/Builder;"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, environmentVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/googlecode/javacpp/Builder;->environmentVariables:Ljava/util/Map;

    .line 716
    return-object p0
.end method

.method public generateAndCompile([Ljava/lang/Class;Ljava/lang/String;)Ljava/io/File;
    .locals 28
    .parameter "classes"
    .parameter "outputName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v13, 0x0

    .line 341
    .local v13, outputFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Properties;

    .line 342
    .local v15, p:Ljava/util/Properties;
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/Class;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v3, v2, v9

    .line 343
    .local v3, c:Ljava/lang/Class;
    invoke-static {v15, v3}, Lcom/googlecode/javacpp/Loader;->appendProperties(Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Class;

    .line 342
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 345
    .end local v3           #c:Ljava/lang/Class;
    :cond_0
    const-string v23, "platform.name"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 346
    .local v17, platformName:Ljava/lang/String;
    const-string v23, "source.suffix"

    const-string v24, ".cpp"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 347
    .local v22, sourceSuffix:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "library.prefix"

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "library.suffix"

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 349
    .local v12, libraryName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->outputDirectory:Ljava/io/File;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 351
    const/16 v23, 0x0

    :try_start_0
    aget-object v23, p1, v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v25, 0x2f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, p1, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2e

    const/16 v27, 0x2f

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".class"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v18

    .line 352
    .local v18, resourceURL:Ljava/net/URL;
    new-instance v23, Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    .line 353
    .local v16, packageDir:Ljava/io/File;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 354
    .local v14, outputPath:Ljava/io/File;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 362
    .end local v16           #packageDir:Ljava/io/File;
    .end local v18           #resourceURL:Ljava/net/URL;
    .local v21, sourcePrefix:Ljava/lang/String;
    :goto_1
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_1

    .line 363
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 365
    :cond_1
    new-instance v7, Lcom/googlecode/javacpp/Generator;

    invoke-direct {v7, v15}, Lcom/googlecode/javacpp/Generator;-><init>(Ljava/util/Properties;)V

    .line 366
    .local v7, generator:Lcom/googlecode/javacpp/Generator;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 367
    .local v20, sourceFilename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/javacpp/Builder;->header:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".h"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, headerFilename:Ljava/lang/String;
    :goto_2
    const-string v23, "java.class.path"

    invoke-static/range {v23 .. v23}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, classPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Builder;->classLoader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/googlecode/javacpp/Builder$UserClassLoader;->getPaths()[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_4

    aget-object v19, v2, v9

    .line 370
    .local v19, s:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 369
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 355
    .end local v4           #classPath:Ljava/lang/String;
    .end local v7           #generator:Lcom/googlecode/javacpp/Generator;
    .end local v8           #headerFilename:Ljava/lang/String;
    .end local v14           #outputPath:Ljava/io/File;
    .end local v19           #s:Ljava/lang/String;
    .end local v20           #sourceFilename:Ljava/lang/String;
    .end local v21           #sourcePrefix:Ljava/lang/String;
    .local v2, arr$:[Ljava/lang/Class;
    :catch_0
    move-exception v5

    .line 356
    .local v5, e:Ljava/net/URISyntaxException;
    new-instance v23, Ljava/lang/RuntimeException;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 359
    .end local v5           #e:Ljava/net/URISyntaxException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Builder;->outputDirectory:Ljava/io/File;

    .line 360
    .restart local v14       #outputPath:Ljava/io/File;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .restart local v21       #sourcePrefix:Ljava/lang/String;
    goto/16 :goto_1

    .line 367
    .restart local v7       #generator:Lcom/googlecode/javacpp/Generator;
    .restart local v20       #sourceFilename:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 372
    .local v2, arr$:[Ljava/lang/String;
    .restart local v4       #classPath:Ljava/lang/String;
    .restart local v8       #headerFilename:Ljava/lang/String;
    :cond_4
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Generating source file: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v8, v4, v1}, Lcom/googlecode/javacpp/Generator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 374
    invoke-virtual {v7}, Lcom/googlecode/javacpp/Generator;->close()V

    .line 375
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/javacpp/Builder;->compile:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 376
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 377
    .local v11, libraryFilename:Ljava/lang/String;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Building library file: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11, v15}, Lcom/googlecode/javacpp/Builder;->compile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)I

    move-result v6

    .line 379
    .local v6, exitValue:I
    if-nez v6, :cond_5

    .line 380
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 381
    new-instance v13, Ljava/io/File;

    .end local v13           #outputFile:Ljava/io/File;
    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .end local v6           #exitValue:I
    .end local v11           #libraryFilename:Ljava/lang/String;
    .restart local v13       #outputFile:Ljava/io/File;
    :goto_4
    return-object v13

    .line 383
    .restart local v6       #exitValue:I
    .restart local v11       #libraryFilename:Ljava/lang/String;
    :cond_5
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_4

    .line 386
    .end local v6           #exitValue:I
    .end local v11           #libraryFilename:Ljava/lang/String;
    :cond_6
    new-instance v13, Ljava/io/File;

    .end local v13           #outputFile:Ljava/io/File;
    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v13       #outputFile:Ljava/io/File;
    goto :goto_4

    .line 389
    :cond_7
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Source file not generated: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public header(Z)Lcom/googlecode/javacpp/Builder;
    .locals 0
    .parameter "header"

    .prologue
    .line 641
    iput-boolean p1, p0, Lcom/googlecode/javacpp/Builder;->header:Z

    .line 642
    return-object p0
.end method

.method public jarPrefix(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
    .locals 0
    .parameter "jarPrefix"

    .prologue
    .line 651
    iput-object p1, p0, Lcom/googlecode/javacpp/Builder;->jarPrefix:Ljava/lang/String;

    .line 652
    return-object p0
.end method

.method public outputDirectory(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;
    .locals 0
    .parameter "outputDirectory"

    .prologue
    .line 631
    iput-object p1, p0, Lcom/googlecode/javacpp/Builder;->outputDirectory:Ljava/io/File;

    .line 632
    return-object p0
.end method

.method public outputDirectory(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
    .locals 1
    .parameter "outputDirectory"

    .prologue
    .line 626
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder;->outputDirectory(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;

    .line 627
    return-object p0

    .line 626
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public outputName(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
    .locals 0
    .parameter "outputName"

    .prologue
    .line 646
    iput-object p1, p0, Lcom/googlecode/javacpp/Builder;->outputName:Ljava/lang/String;

    .line 647
    return-object p0
.end method

.method public properties(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
    .locals 1
    .parameter "platformName"

    .prologue
    .line 656
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder;->properties(Ljava/util/Properties;)Lcom/googlecode/javacpp/Builder;

    .line 657
    return-object p0

    .line 656
    :cond_0
    invoke-static {p1}, Lcom/googlecode/javacpp/Loader;->getProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    goto :goto_0
.end method

.method public properties(Ljava/util/Properties;)Lcom/googlecode/javacpp/Builder;
    .locals 1
    .parameter "properties"

    .prologue
    .line 661
    if-eqz p1, :cond_0

    .line 662
    iget-object v0, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 664
    :cond_0
    return-object p0
.end method

.method public property(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
    .locals 3
    .parameter "keyValue"

    .prologue
    .line 688
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 689
    .local v0, equalIndex:I
    if-gez v0, :cond_0

    .line 690
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 692
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/googlecode/javacpp/Builder;->property(Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;

    .line 694
    return-object p0
.end method

.method public property(Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 698
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_0
    return-object p0
.end method

.method public propertyFile(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;
    .locals 4
    .parameter "propertyFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    if-nez p1, :cond_0

    .line 684
    :goto_0
    return-object p0

    .line 676
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 677
    .local v1, fis:Ljava/io/FileInputStream;
    new-instance v2, Ljava/util/Properties;

    iget-object v3, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;

    invoke-direct {v2, v3}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v2, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;

    .line 679
    :try_start_0
    iget-object v2, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, e:Ljava/lang/NoSuchMethodError;
    iget-object v2, p0, Lcom/googlecode/javacpp/Builder;->properties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    goto :goto_1
.end method

.method public propertyFile(Ljava/lang/String;)Lcom/googlecode/javacpp/Builder;
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder;->propertyFile(Ljava/io/File;)Lcom/googlecode/javacpp/Builder;

    .line 669
    return-object p0

    .line 668
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
