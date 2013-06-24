.class public Lcom/googlecode/javacpp/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacpp/Parser$TokenList;,
        Lcom/googlecode/javacpp/Parser$Token;
    }
.end annotation


# instance fields
.field buffer:Ljava/lang/StringBuilder;

.field futureTokens:Lcom/googlecode/javacpp/Parser$TokenList;

.field input:Ljava/io/Reader;

.field lastToken:Lcom/googlecode/javacpp/Parser$Token;

.field lastc:I

.field lineNumber:I

.field lineSeparator:Ljava/lang/String;

.field out:Ljava/io/Writer;

.field output:Ljava/io/Writer;

.field pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

.field token:Lcom/googlecode/javacpp/Parser$Token;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 2
    .parameter "input"
    .parameter "output"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/googlecode/javacpp/Parser;->lastc:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacpp/Parser;->lineNumber:I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    .line 68
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser;->lineSeparator:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iput-object v1, p0, Lcom/googlecode/javacpp/Parser;->lastToken:Lcom/googlecode/javacpp/Parser$Token;

    .line 71
    new-instance v0, Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-direct {v0, p0}, Lcom/googlecode/javacpp/Parser$TokenList;-><init>(Lcom/googlecode/javacpp/Parser;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    .line 72
    new-instance v0, Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-direct {v0, p0}, Lcom/googlecode/javacpp/Parser$TokenList;-><init>(Lcom/googlecode/javacpp/Parser;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser;->futureTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    .line 28
    iput-object p1, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    .line 29
    iput-object p2, p0, Lcom/googlecode/javacpp/Parser;->output:Ljava/io/Writer;

    .line 30
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/home/saudet/workspace/foo.h"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 419
    .local v1, r:Ljava/io/Reader;
    new-instance v2, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 420
    .local v2, w:Ljava/io/Writer;
    new-instance v0, Lcom/googlecode/javacpp/Parser;

    invoke-direct {v0, v1, v2}, Lcom/googlecode/javacpp/Parser;-><init>(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 421
    .local v0, parser:Lcom/googlecode/javacpp/Parser;
    const-string v3, "/home/saudet/workspace/foo.h"

    const-string v4, "moo"

    invoke-virtual {v0, v3, v4}, Lcom/googlecode/javacpp/Parser;->parse(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 423
    return-void
.end method


# virtual methods
.method public block()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Parser$TokenList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v2, v0}, Lcom/googlecode/javacpp/Parser$TokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/javacpp/Parser$Token;

    iget-object v1, v2, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 384
    .local v1, s:Ljava/lang/String;
    const-string v2, "struct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "union"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->group()V

    .line 392
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 387
    .restart local v1       #s:Ljava/lang/String;
    :cond_2
    const-string v2, "enum"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->enumeration()V

    goto :goto_1

    .line 382
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method commentAfter(Lcom/googlecode/javacpp/Parser$Token;)V
    .locals 5
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 186
    const-string v2, ""

    iput-object v2, p1, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    .line 187
    const-string v2, ""

    iput-object v2, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    iget v2, v2, Lcom/googlecode/javacpp/Parser$Token;->type:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v2, v2, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 189
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v0, v2, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    .line 190
    .local v0, spacing:Ljava/lang/String;
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v1, v2, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 191
    .local v1, value:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, " * "

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "/**"

    goto :goto_1

    .line 194
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    goto :goto_0

    .line 197
    .end local v0           #spacing:Ljava/lang/String;
    .end local v1           #value:Ljava/lang/String;
    :cond_2
    iget-object v2, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 198
    iget-object v2, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    const-string v3, "*/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " */"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 201
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 203
    :cond_4
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iput-object v2, p0, Lcom/googlecode/javacpp/Parser;->lastToken:Lcom/googlecode/javacpp/Parser$Token;

    .line 204
    return-void
.end method

.method commentBefore()Lcom/googlecode/javacpp/Parser$Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, type:Lcom/googlecode/javacpp/Parser$Token;
    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Parser$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/javacpp/Parser$Token;

    .line 175
    .local v1, t:Lcom/googlecode/javacpp/Parser$Token;
    iget v3, v1, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 176
    move-object v2, v1

    .line 182
    .end local v1           #t:Lcom/googlecode/javacpp/Parser$Token;
    :cond_1
    return-object v2

    .line 178
    .restart local v1       #t:Lcom/googlecode/javacpp/Parser$Token;
    :cond_2
    iget v3, v1, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 179
    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method enumeration()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    .line 343
    const/16 v6, 0x7b

    invoke-virtual {p0, v6}, Lcom/googlecode/javacpp/Parser;->match(I)V

    .line 345
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->commentBefore()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v5

    .line 346
    .local v5, type:Lcom/googlecode/javacpp/Parser$Token;
    iget-object v7, p0, Lcom/googlecode/javacpp/Parser;->futureTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/javacpp/Parser$Token;

    invoke-virtual {v7, v6}, Lcom/googlecode/javacpp/Parser$TokenList;->getOrAdd(Lcom/googlecode/javacpp/Parser$Token;)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v3

    .line 347
    .local v3, name:Lcom/googlecode/javacpp/Parser$Token;
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->clear()V

    .line 348
    iget-object v6, v5, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    iget-object v7, v5, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, spacing:Ljava/lang/String;
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/** enum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " */"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/googlecode/javacpp/Parser;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 350
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "public static final int"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, count:I
    const/4 v2, 0x0

    .line 354
    .local v2, done:Z
    :goto_0
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v6

    iget v6, v6, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 355
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget v6, v6, Lcom/googlecode/javacpp/Parser$Token;->type:I

    sparse-switch v6, :sswitch_data_0

    .line 371
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    iget-object v7, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    invoke-virtual {v6, v7}, Lcom/googlecode/javacpp/Parser$TokenList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :sswitch_0
    const/4 v2, 0x1

    .line 358
    :sswitch_1
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->size()I

    move-result v6

    if-eq v6, v11, :cond_0

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->size()I

    move-result v6

    if-ne v6, v9, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->size()I

    move-result v6

    if-ne v6, v9, :cond_2

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6, v11}, Lcom/googlecode/javacpp/Parser$TokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/javacpp/Parser$Token;

    iget v6, v6, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_2

    .line 360
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/googlecode/javacpp/Parser;->lineNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Could not parse enumerator"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 362
    :cond_2
    iget-object v7, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6, v10}, Lcom/googlecode/javacpp/Parser$TokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/javacpp/Parser$Token;

    iget-object v6, v6, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6, v10}, Lcom/googlecode/javacpp/Parser$TokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/javacpp/Parser$Token;

    iget-object v6, v6, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 363
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->size()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 364
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/googlecode/javacpp/Parser$TokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/javacpp/Parser$Token;

    iget-object v6, v6, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 366
    :cond_3
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->clear()V

    .line 367
    iget-object v7, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_4

    const-string v6, ";"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move v0, v1

    .line 368
    .end local v1           #count:I
    .restart local v0       #count:I
    goto/16 :goto_0

    .line 367
    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_4
    const-string v6, ","

    goto :goto_1

    .line 374
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_5
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v6

    iget v6, v6, Lcom/googlecode/javacpp/Parser$Token;->type:I

    if-ne v6, v9, :cond_6

    .line 375
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v6, v6, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    iput-object v6, v3, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 376
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    .line 378
    :cond_6
    const/16 v6, 0x3b

    invoke-virtual {p0, v6}, Lcom/googlecode/javacpp/Parser;->match(I)V

    .line 379
    return-void

    .line 355
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method function()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3b

    .line 207
    const/16 v5, 0x28

    invoke-virtual {p0, v5}, Lcom/googlecode/javacpp/Parser;->match(I)V

    .line 209
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->commentBefore()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v4

    .line 210
    .local v4, type:Lcom/googlecode/javacpp/Parser$Token;
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v5}, Lcom/googlecode/javacpp/Parser$TokenList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/javacpp/Parser$Token;

    iget-object v2, v5, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 211
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v5}, Lcom/googlecode/javacpp/Parser$TokenList;->clear()V

    .line 212
    iget-object v3, v4, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    .line 213
    .local v3, spacing:Ljava/lang/String;
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->futureTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/googlecode/javacpp/Parser$TokenList;->getOrAdd(Lcom/googlecode/javacpp/Parser$Token;)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v0

    .line 214
    .local v0, comment:Lcom/googlecode/javacpp/Parser$Token;
    iget-object v5, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 216
    iget-object v5, v4, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    iget-object v6, v4, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    :cond_0
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "public static "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->modifiers()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, done:Z
    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v5

    iget v5, v5, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 222
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget v5, v5, Lcom/googlecode/javacpp/Parser$Token;->type:I

    sparse-switch v5, :sswitch_data_0

    .line 234
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    invoke-virtual {v5, v6}, Lcom/googlecode/javacpp/Parser$TokenList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :sswitch_0
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v5}, Lcom/googlecode/javacpp/Parser$TokenList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 226
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v5}, Lcom/googlecode/javacpp/Parser$TokenList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/javacpp/Parser$Token;

    iget-object v3, v5, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    .line 227
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v5}, Lcom/googlecode/javacpp/Parser$TokenList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #type:Lcom/googlecode/javacpp/Parser$Token;
    check-cast v4, Lcom/googlecode/javacpp/Parser$Token;

    .line 228
    .restart local v4       #type:Lcom/googlecode/javacpp/Parser$Token;
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v5}, Lcom/googlecode/javacpp/Parser$TokenList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/javacpp/Parser$Token;

    iget-object v2, v5, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 229
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->modifiers()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 231
    :cond_1
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget v6, v6, Lcom/googlecode/javacpp/Parser$Token;->type:I

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_0

    .line 233
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p0, v8}, Lcom/googlecode/javacpp/Parser;->match(I)V

    .line 238
    iget-object v5, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v7, v7, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 239
    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Parser;->commentAfter(Lcom/googlecode/javacpp/Parser$Token;)V

    .line 240
    return-void

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_1
    .end sparse-switch
.end method

.method group()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x7d

    .line 302
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v0, 0x1

    .line 303
    .local v0, block:Z
    :goto_0
    const/4 v3, 0x0

    .line 304
    .local v3, name:Lcom/googlecode/javacpp/Parser$Token;
    if-eqz v0, :cond_0

    .line 305
    const/16 v6, 0x7b

    invoke-virtual {p0, v6}, Lcom/googlecode/javacpp/Parser;->match(I)V

    .line 307
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->commentBefore()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v5

    .line 308
    .local v5, type:Lcom/googlecode/javacpp/Parser$Token;
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->getLast()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #name:Lcom/googlecode/javacpp/Parser$Token;
    check-cast v3, Lcom/googlecode/javacpp/Parser$Token;

    .line 309
    .restart local v3       #name:Lcom/googlecode/javacpp/Parser$Token;
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->clear()V

    .line 310
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->futureTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6, v3}, Lcom/googlecode/javacpp/Parser$TokenList;->getOrAdd(Lcom/googlecode/javacpp/Parser$Token;)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v3

    .line 311
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "public static class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " extends Pointer {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 313
    .end local v5           #type:Lcom/googlecode/javacpp/Parser$Token;
    :cond_0
    const/4 v1, 0x0

    .line 314
    .local v1, done:Z
    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v6

    iget v6, v6, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 315
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget v6, v6, Lcom/googlecode/javacpp/Parser$Token;->type:I

    sparse-switch v6, :sswitch_data_0

    .line 321
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    iget-object v7, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    invoke-virtual {v6, v7}, Lcom/googlecode/javacpp/Parser$TokenList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 302
    .end local v0           #block:Z
    .end local v1           #done:Z
    .end local v3           #name:Lcom/googlecode/javacpp/Parser$Token;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 316
    .restart local v0       #block:Z
    .restart local v1       #done:Z
    .restart local v3       #name:Lcom/googlecode/javacpp/Parser$Token;
    :sswitch_0
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->function()V

    goto :goto_1

    .line 317
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/googlecode/javacpp/Parser;->variable(Lcom/googlecode/javacpp/Parser$Token;)V

    goto :goto_1

    .line 318
    :sswitch_2
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->macro()V

    goto :goto_1

    .line 319
    :sswitch_3
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->block()V

    goto :goto_1

    .line 320
    :sswitch_4
    const/4 v1, 0x1

    goto :goto_1

    .line 324
    :cond_2
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/javacpp/Parser$Token;

    .line 325
    .local v4, t:Lcom/googlecode/javacpp/Parser$Token;
    iget v6, v4, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 326
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_2

    .line 329
    .end local v4           #t:Lcom/googlecode/javacpp/Parser$Token;
    :cond_4
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->clear()V

    .line 330
    if-eqz v0, :cond_6

    .line 331
    invoke-virtual {p0, v9}, Lcom/googlecode/javacpp/Parser;->match(I)V

    .line 332
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v8, v8, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 333
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v6

    iget v6, v6, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 334
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v6, v6, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    iput-object v6, v3, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    .line 337
    :cond_5
    const/16 v6, 0x3b

    invoke-virtual {p0, v6}, Lcom/googlecode/javacpp/Parser;->match(I)V

    .line 339
    :cond_6
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    iget-object v7, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v7, v7, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 340
    return-void

    .line 315
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_2
        0x28 -> :sswitch_0
        0x3b -> :sswitch_1
        0x7b -> :sswitch_3
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method macro()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v7, -0x1

    .line 268
    const/16 v6, 0x23

    invoke-virtual {p0, v6}, Lcom/googlecode/javacpp/Parser;->match(I)V

    .line 269
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v3, v6, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    .line 271
    .local v3, spacing:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v6

    iget v6, v6, Lcom/googlecode/javacpp/Parser$Token;->type:I

    if-eq v6, v7, :cond_3

    .line 272
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v6, v6, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v6, v6, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 273
    .local v0, c:I
    :goto_1
    const/16 v6, 0xd

    if-eq v0, v6, :cond_0

    const/16 v6, 0xa

    if-ne v0, v6, :cond_1

    .line 274
    :cond_0
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/javacpp/Parser$Token;

    iget v6, v6, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/16 v8, 0x5c

    if-ne v6, v8, :cond_3

    .line 275
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->pop()Ljava/lang/Object;

    .line 280
    :cond_1
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    iget-object v8, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    invoke-virtual {v6, v8}, Lcom/googlecode/javacpp/Parser$TokenList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #c:I
    :cond_2
    move v0, v7

    .line 272
    goto :goto_1

    .line 282
    :cond_3
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/javacpp/Parser$Token;

    move-object v1, v6

    .line 283
    .local v1, keyword:Lcom/googlecode/javacpp/Parser$Token;
    :goto_2
    if-eqz v1, :cond_4

    iget v6, v1, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    .line 284
    :cond_4
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/googlecode/javacpp/Parser;->lineNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Could not parse macro"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 282
    .end local v1           #keyword:Lcom/googlecode/javacpp/Parser$Token;
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 286
    .restart local v1       #keyword:Lcom/googlecode/javacpp/Parser$Token;
    :cond_6
    iget-object v6, v1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    const-string v7, "define"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->size()I

    move-result v6

    if-le v6, v9, :cond_7

    .line 287
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/googlecode/javacpp/Parser$TokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/javacpp/Parser$Token;

    .line 288
    .local v2, name:Lcom/googlecode/javacpp/Parser$Token;
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6, v9}, Lcom/googlecode/javacpp/Parser$TokenList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/javacpp/Parser$Token;

    .line 290
    .local v5, value:Lcom/googlecode/javacpp/Parser$Token;
    iget v6, v5, Lcom/googlecode/javacpp/Parser$Token;->type:I

    packed-switch v6, :pswitch_data_0

    .line 299
    .end local v2           #name:Lcom/googlecode/javacpp/Parser$Token;
    .end local v5           #value:Lcom/googlecode/javacpp/Parser$Token;
    :goto_3
    return-void

    .line 291
    .restart local v2       #name:Lcom/googlecode/javacpp/Parser$Token;
    .restart local v5       #value:Lcom/googlecode/javacpp/Parser$Token;
    :pswitch_0
    const-string v4, "int "

    .line 295
    .local v4, type:Ljava/lang/String;
    :goto_4
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "public static final "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 296
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 298
    .end local v2           #name:Lcom/googlecode/javacpp/Parser$Token;
    .end local v4           #type:Ljava/lang/String;
    .end local v5           #value:Lcom/googlecode/javacpp/Parser$Token;
    :cond_7
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    iget-object v7, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v7, v7, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_3

    .line 292
    .restart local v2       #name:Lcom/googlecode/javacpp/Parser$Token;
    .restart local v5       #value:Lcom/googlecode/javacpp/Parser$Token;
    :pswitch_1
    const-string v4, "String "

    .restart local v4       #type:Ljava/lang/String;
    goto :goto_4

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method match(I)V
    .locals 3
    .parameter "tokenType"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget v0, v0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    if-eq v0, p1, :cond_1

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/googlecode/javacpp/Parser;->lineNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Unexpected token \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget v0, v0, Lcom/googlecode/javacpp/Parser$Token;->type:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    return-void
.end method

.method modifiers()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x26

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/16 v5, 0x2a

    .line 155
    const-string v2, ""

    .line 156
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Parser$TokenList;->size()I

    move-result v3

    if-le v3, v6, :cond_1

    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v3, v6}, Lcom/googlecode/javacpp/Parser$TokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/javacpp/Parser$Token;

    iget v0, v3, Lcom/googlecode/javacpp/Parser$Token;->type:I

    .line 157
    .local v0, mod1:I
    :goto_0
    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Parser$TokenList;->size()I

    move-result v3

    if-le v3, v7, :cond_2

    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v3, v7}, Lcom/googlecode/javacpp/Parser$TokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/javacpp/Parser$Token;

    iget v1, v3, Lcom/googlecode/javacpp/Parser$Token;->type:I

    .line 159
    .local v1, mod2:I
    :goto_1
    if-ne v0, v8, :cond_3

    .line 160
    const-string v2, "@ByRef "

    .line 168
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Parser$TokenList;->clear()V

    .line 169
    return-object v2

    .end local v0           #mod1:I
    .end local v1           #mod2:I
    :cond_1
    move v0, v4

    .line 156
    goto :goto_0

    .restart local v0       #mod1:I
    :cond_2
    move v1, v4

    .line 157
    goto :goto_1

    .line 161
    .restart local v1       #mod2:I
    :cond_3
    if-ne v0, v5, :cond_4

    if-ne v1, v8, :cond_4

    .line 162
    const-string v2, "@ByPtrRef "

    goto :goto_2

    .line 163
    :cond_4
    if-ne v0, v5, :cond_5

    if-ne v1, v5, :cond_5

    .line 164
    const-string v2, "@ByPtrPtr "

    goto :goto_2

    .line 165
    :cond_5
    if-eq v0, v5, :cond_0

    .line 166
    const-string v2, "@ByVal "

    goto :goto_2
.end method

.method nextToken()Lcom/googlecode/javacpp/Parser$Token;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2a

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x2f

    const/4 v4, -0x1

    .line 75
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->lastToken:Lcom/googlecode/javacpp/Parser$Token;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->lastToken:Lcom/googlecode/javacpp/Parser$Token;

    iput-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    .line 77
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/googlecode/javacpp/Parser;->lastToken:Lcom/googlecode/javacpp/Parser$Token;

    .line 78
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    .line 143
    :goto_0
    return-object v2

    .line 80
    :cond_0
    new-instance v2, Lcom/googlecode/javacpp/Parser$Token;

    invoke-direct {v2, p0}, Lcom/googlecode/javacpp/Parser$Token;-><init>(Lcom/googlecode/javacpp/Parser;)V

    iput-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    .line 81
    iget v2, p0, Lcom/googlecode/javacpp/Parser;->lastc:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v0

    .line 82
    .local v0, c:I
    :goto_1
    iput v4, p0, Lcom/googlecode/javacpp/Parser;->lastc:I

    .line 84
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 85
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    if-eq v0, v7, :cond_1

    if-ne v0, v6, :cond_2

    .line 88
    :cond_1
    iget v2, p0, Lcom/googlecode/javacpp/Parser;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/googlecode/javacpp/Parser;->lineNumber:I

    .line 90
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v4, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    if-eq v0, v7, :cond_3

    if-ne v0, v6, :cond_2

    .line 93
    :cond_3
    iget v2, p0, Lcom/googlecode/javacpp/Parser;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/googlecode/javacpp/Parser;->lineNumber:I

    goto :goto_2

    .line 81
    .end local v0           #c:I
    :cond_4
    iget v0, p0, Lcom/googlecode/javacpp/Parser;->lastc:I

    goto :goto_1

    .line 97
    .restart local v0       #c:I
    :cond_5
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 100
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x5f

    if-ne v0, v2, :cond_9

    .line 101
    :cond_6
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    const/4 v3, 0x3

    iput v3, v2, Lcom/googlecode/javacpp/Parser$Token;->type:I

    .line 102
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :goto_3
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x5f

    if-ne v0, v2, :cond_8

    .line 104
    :cond_7
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 106
    :cond_8
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 107
    iput v0, p0, Lcom/googlecode/javacpp/Parser;->lastc:I

    .line 143
    :goto_4
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    goto/16 :goto_0

    .line 108
    :cond_9
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_a

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_d

    .line 109
    :cond_a
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    const/4 v3, 0x1

    iput v3, v2, Lcom/googlecode/javacpp/Parser$Token;->type:I

    .line 110
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :goto_5
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v4, :cond_c

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_c

    .line 112
    :cond_b
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 114
    :cond_c
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 115
    iput v0, p0, Lcom/googlecode/javacpp/Parser;->lastc:I

    goto :goto_4

    .line 116
    :cond_d
    if-ne v0, v5, :cond_13

    .line 117
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v0

    .line 118
    if-ne v0, v5, :cond_f

    .line 119
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    const/4 v3, 0x4

    iput v3, v2, Lcom/googlecode/javacpp/Parser$Token;->type:I

    .line 120
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    :goto_6
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v4, :cond_e

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_e

    .line 122
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 124
    :cond_e
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 125
    iput v0, p0, Lcom/googlecode/javacpp/Parser;->lastc:I

    goto :goto_4

    .line 126
    :cond_f
    if-ne v0, v8, :cond_12

    .line 127
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    const/4 v3, 0x4

    iput v3, v2, Lcom/googlecode/javacpp/Parser$Token;->type:I

    .line 128
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, prevc:I
    :goto_7
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v4, :cond_11

    if-ne v1, v8, :cond_10

    if-eq v0, v5, :cond_11

    .line 131
    :cond_10
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    move v1, v0

    goto :goto_7

    .line 134
    :cond_11
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v3, p0, Lcom/googlecode/javacpp/Parser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    goto/16 :goto_4

    .line 137
    .end local v1           #prevc:I
    :cond_12
    iput v0, p0, Lcom/googlecode/javacpp/Parser;->lastc:I

    .line 138
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iput v5, v2, Lcom/googlecode/javacpp/Parser$Token;->type:I

    goto/16 :goto_4

    .line 141
    :cond_13
    iget-object v2, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iput v0, v2, Lcom/googlecode/javacpp/Parser$Token;->type:I

    goto/16 :goto_4
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "inputFilename"
    .parameter "outputFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 395
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    .line 396
    new-instance v0, Lcom/googlecode/javacpp/Parser$1;

    invoke-direct {v0, p0}, Lcom/googlecode/javacpp/Parser$1;-><init>(Lcom/googlecode/javacpp/Parser;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    .line 401
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v0}, Lcom/googlecode/javacpp/Parser$TokenList;->clear()V

    .line 402
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->futureTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v0}, Lcom/googlecode/javacpp/Parser$TokenList;->clear()V

    .line 403
    iput v2, p0, Lcom/googlecode/javacpp/Parser;->lineNumber:I

    .line 404
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->group()V

    .line 405
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 407
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    .line 408
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    .line 409
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v0}, Lcom/googlecode/javacpp/Parser$TokenList;->clear()V

    .line 410
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->futureTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v0}, Lcom/googlecode/javacpp/Parser$TokenList;->reset()V

    .line 411
    iput v2, p0, Lcom/googlecode/javacpp/Parser;->lineNumber:I

    .line 412
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->group()V

    .line 413
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->input:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 414
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 415
    return-void
.end method

.method variable(Lcom/googlecode/javacpp/Parser$Token;)V
    .locals 9
    .parameter "group"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    const/16 v6, 0x3b

    invoke-virtual {p0, v6}, Lcom/googlecode/javacpp/Parser;->match(I)V

    .line 245
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->commentBefore()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v5

    .line 246
    .local v5, type:Lcom/googlecode/javacpp/Parser$Token;
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/javacpp/Parser$Token;

    iget-object v2, v6, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    .line 247
    .local v2, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->pastTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    invoke-virtual {v6}, Lcom/googlecode/javacpp/Parser$TokenList;->clear()V

    .line 248
    iget-object v4, v5, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    .line 249
    .local v4, spacing:Ljava/lang/String;
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->futureTokens:Lcom/googlecode/javacpp/Parser$TokenList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/googlecode/javacpp/Parser$TokenList;->getOrAdd(Lcom/googlecode/javacpp/Parser$Token;)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    .line 250
    .local v1, comment:Lcom/googlecode/javacpp/Parser$Token;
    iget-object v6, v1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 251
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 252
    iget-object v6, v5, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    iget-object v7, v5, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 254
    :cond_0
    const-string v0, "public "

    .line 255
    .local v0, access:Ljava/lang/String;
    const-string v3, "void "

    .line 256
    .local v3, setterType:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    :goto_0
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->modifiers()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(); "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 262
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ");"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 263
    iget-object v6, p0, Lcom/googlecode/javacpp/Parser;->out:Ljava/io/Writer;

    iget-object v7, p0, Lcom/googlecode/javacpp/Parser;->token:Lcom/googlecode/javacpp/Parser$Token;

    iget-object v7, v7, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 264
    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/Parser;->commentAfter(Lcom/googlecode/javacpp/Parser$Token;)V

    .line 265
    return-void

    .line 259
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "static "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
