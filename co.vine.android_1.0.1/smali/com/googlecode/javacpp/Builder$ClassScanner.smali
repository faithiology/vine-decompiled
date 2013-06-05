.class public Lcom/googlecode/javacpp/Builder$ClassScanner;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassScanner"
.end annotation


# instance fields
.field private classes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private loader:Lcom/googlecode/javacpp/Builder$UserClassLoader;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/googlecode/javacpp/Builder$UserClassLoader;)V
    .locals 0
    .parameter
    .parameter "loader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class;",
            ">;",
            "Lcom/googlecode/javacpp/Builder$UserClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, classes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Class;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    .line 490
    iput-object p2, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->loader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    .line 491
    return-void
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)V
    .locals 5
    .parameter "className"

    .prologue
    const/4 v3, 0x0

    .line 497
    if-nez p1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    const-string v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 503
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->loader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    invoke-static {p1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 504
    .local v0, c:Ljava/lang/Class;
    iget-object v2, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 507
    .end local v0           #c:Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 508
    .local v1, e:Ljava/lang/ClassNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: Could not find class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 510
    .local v1, e:Ljava/lang/NoClassDefFoundError;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: Could not load class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addClassOrPackage(Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 563
    if-nez p1, :cond_0

    .line 574
    :goto_0
    return-void

    .line 566
    :cond_0
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 567
    const-string v0, ".**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addPackage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 569
    :cond_1
    const-string v0, ".*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addPackage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 572
    :cond_2
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addClass(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addMatchingDir(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 8
    .parameter "parentName"
    .parameter "dir"
    .parameter "packagePath"
    .parameter "recursive"

    .prologue
    .line 523
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 524
    .local v2, files:[Ljava/io/File;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 525
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 526
    .local v1, f:Ljava/io/File;
    if-nez p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, pathName:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 528
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1, p3, p4}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addMatchingDir(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 525
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 526
    .end local v5           #pathName:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 530
    .restart local v5       #pathName:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v5, p3, p4}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addMatchingFile(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 533
    .end local v1           #f:Ljava/io/File;
    .end local v5           #pathName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public addMatchingFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "filename"
    .parameter "packagePath"
    .parameter "recursive"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x2f

    .line 515
    if-eqz p1, :cond_2

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v3, p2, v3, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addClass(Ljava/lang/String;)V

    .line 520
    :cond_2
    return-void
.end method

.method public addPackage(Ljava/lang/String;Z)V
    .locals 13
    .parameter "packageName"
    .parameter "recursive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->loader:Lcom/googlecode/javacpp/Builder$UserClassLoader;

    invoke-virtual {v10}, Lcom/googlecode/javacpp/Builder$UserClassLoader;->getPaths()[Ljava/lang/String;

    move-result-object v8

    .line 537
    .local v8, paths:[Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v7, 0x0

    .line 538
    .local v7, packagePath:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v9

    .line 539
    .local v9, prevSize:I
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v0, v3

    .line 540
    .local v6, p:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 542
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v2, v7, p2}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addMatchingDir(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 539
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 537
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #p:Ljava/lang/String;
    .end local v7           #packagePath:Ljava/lang/String;
    .end local v9           #prevSize:I
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x2e

    const/16 v12, 0x2f

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 544
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #p:Ljava/lang/String;
    .restart local v7       #packagePath:Ljava/lang/String;
    .restart local v9       #prevSize:I
    :cond_1
    new-instance v4, Ljava/util/jar/JarInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 545
    .local v4, jis:Ljava/util/jar/JarInputStream;
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 546
    .local v1, e:Ljava/util/zip/ZipEntry;
    :goto_3
    if-eqz v1, :cond_2

    .line 547
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v7, p2}, Lcom/googlecode/javacpp/Builder$ClassScanner;->addMatchingFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 548
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->closeEntry()V

    .line 549
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    goto :goto_3

    .line 551
    :cond_2
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->close()V

    goto :goto_2

    .line 554
    .end local v1           #e:Ljava/util/zip/ZipEntry;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #jis:Ljava/util/jar/JarInputStream;
    .end local v6           #p:Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-nez v10, :cond_5

    if-nez p1, :cond_5

    .line 555
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Warning: No classes found in the unnamed package"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/googlecode/javacpp/Builder;->printHelp()V

    .line 560
    :cond_4
    :goto_4
    return-void

    .line 557
    :cond_5
    iget-object v10, p0, Lcom/googlecode/javacpp/Builder$ClassScanner;->classes:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-ne v9, v10, :cond_4

    if-eqz p1, :cond_4

    .line 558
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Warning: No classes found in package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method
