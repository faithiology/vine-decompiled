.class public Lcom/amazonaws/javax/xml/transform/TransformerException;
.super Ljava/lang/Exception;
.source "TransformerException.java"


# instance fields
.field containedException:Ljava/lang/Throwable;

.field locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 150
    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 151
    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/transform/SourceLocator;)V
    .locals 1
    .parameter "message"
    .parameter "locator"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 202
    iput-object p2, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "locator"
    .parameter "e"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 218
    iput-object p3, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 219
    iput-object p2, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    .line 220
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "e"

    .prologue
    .line 179
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 183
    iput-object p2, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    .line 165
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getLocationAsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 270
    iget-object v4, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    if-eqz v4, :cond_3

    .line 271
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v2, sbuffer:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, systemID:Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    .line 274
    .local v1, line:I
    iget-object v4, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    .line 276
    .local v0, column:I
    if-eqz v3, :cond_0

    .line 277
    const-string v4, "; SystemID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :cond_0
    if-eqz v1, :cond_1

    .line 282
    const-string v4, "; Line#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 286
    :cond_1
    if-eqz v0, :cond_2

    .line 287
    const-string v4, "; Column#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 291
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 293
    .end local v0           #column:I
    .end local v1           #line:I
    .end local v2           #sbuffer:Ljava/lang/StringBuffer;
    .end local v3           #systemID:Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLocator()Lcom/amazonaws/javax/xml/transform/SourceLocator;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    return-object v0
.end method

.method public getMessageAndLocation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 231
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    .local v3, sbuffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, message:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    if-eqz v5, :cond_3

    .line 239
    iget-object v5, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    invoke-interface {v5}, Lcom/amazonaws/javax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, systemID:Ljava/lang/String;
    iget-object v5, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    invoke-interface {v5}, Lcom/amazonaws/javax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    .line 241
    .local v1, line:I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    invoke-interface {v5}, Lcom/amazonaws/javax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    .line 243
    .local v0, column:I
    if-eqz v4, :cond_1

    .line 244
    const-string v5, "; SystemID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    :cond_1
    if-eqz v1, :cond_2

    .line 249
    const-string v5, "; Line#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 253
    :cond_2
    if-eqz v0, :cond_3

    .line 254
    const-string v5, "; Column#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 259
    .end local v0           #column:I
    .end local v1           #line:I
    .end local v4           #systemID:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .parameter "cause"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t overwrite cause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_0
    if-ne p1, p0, :cond_1

    .line 132
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self-causation not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-object p0
.end method

.method public printStackTrace()V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 304
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 313
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 314
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 13
    .parameter "s"

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    new-instance p1, Ljava/io/PrintWriter;

    .end local p1
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v11, 0x1

    invoke-direct {p1, v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 329
    .restart local p1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/transform/TransformerException;->getLocationAsString()Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, locInfo:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 332
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 338
    .end local v6           #locInfo:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v2

    .line 340
    .local v2, exception:Ljava/lang/Throwable;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v10, 0xa

    if-ge v3, v10, :cond_3

    if-eqz v2, :cond_3

    .line 341
    const-string v10, "---------"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    :try_start_1
    instance-of v10, v2, Lcom/amazonaws/javax/xml/transform/TransformerException;

    if-eqz v10, :cond_2

    .line 345
    move-object v0, v2

    check-cast v0, Lcom/amazonaws/javax/xml/transform/TransformerException;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/amazonaws/javax/xml/transform/TransformerException;->getLocationAsString()Ljava/lang/String;

    move-result-object v6

    .line 349
    .restart local v6       #locInfo:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 350
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    .end local v6           #locInfo:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getException"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 364
    .local v7, meth:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_4

    .line 365
    move-object v9, v2

    .line 367
    .local v9, prev:Ljava/lang/Throwable;
    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v7, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #exception:Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    .line 369
    .restart local v2       #exception:Ljava/lang/Throwable;
    if-ne v9, v2, :cond_5

    .line 384
    .end local v7           #meth:Ljava/lang/reflect/Method;
    .end local v9           #prev:Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 385
    return-void

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, e:Ljava/lang/Throwable;
    const-string v10, "Could not print stack trace..."

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 373
    .end local v1           #e:Ljava/lang/Throwable;
    .restart local v7       #meth:Ljava/lang/reflect/Method;
    :cond_4
    const/4 v2, 0x0

    .line 340
    .end local v7           #meth:Ljava/lang/reflect/Method;
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 375
    .end local v2           #exception:Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    .line 376
    .local v5, ite:Ljava/lang/reflect/InvocationTargetException;
    const/4 v2, 0x0

    .line 381
    .restart local v2       #exception:Ljava/lang/Throwable;
    goto :goto_3

    .line 377
    .end local v2           #exception:Ljava/lang/Throwable;
    .end local v5           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v4

    .line 378
    .local v4, iae:Ljava/lang/IllegalAccessException;
    const/4 v2, 0x0

    .line 381
    .restart local v2       #exception:Ljava/lang/Throwable;
    goto :goto_3

    .line 379
    .end local v2           #exception:Ljava/lang/Throwable;
    .end local v4           #iae:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v8

    .line 380
    .local v8, nsme:Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    .restart local v2       #exception:Ljava/lang/Throwable;
    goto :goto_3

    .line 336
    .end local v2           #exception:Ljava/lang/Throwable;
    .end local v3           #i:I
    .end local v8           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v10

    goto :goto_0
.end method

.method public setLocator(Lcom/amazonaws/javax/xml/transform/SourceLocator;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/TransformerException;->locator:Lcom/amazonaws/javax/xml/transform/SourceLocator;

    .line 74
    return-void
.end method
