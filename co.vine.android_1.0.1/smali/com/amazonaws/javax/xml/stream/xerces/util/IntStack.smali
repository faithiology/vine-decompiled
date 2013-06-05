.class public final Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;
.super Ljava/lang/Object;
.source "IntStack.java"


# instance fields
.field private fData:[I

.field private fDepth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fData:[I

    if-nez v1, :cond_1

    .line 176
    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fData:[I

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fData:[I

    array-length v1, v1

    if-gt v1, p1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fData:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 180
    .local v0, newdata:[I
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fData:[I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fData:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fData:[I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fDepth:I

    .line 145
    return-void
.end method

.method public peek()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public pop()I
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fDepth:I

    aget v0, v0, v1

    return v0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 151
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 152
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fDepth:I

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(I)V

    .line 153
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ") {"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fDepth:I

    if-ge v0, v1, :cond_0

    .line 155
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 156
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 165
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 166
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 167
    return-void

    .line 159
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 160
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fData:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(I)V

    .line 161
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 162
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 154
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public push(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 128
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->ensureCapacity(I)V

    .line 129
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fDepth:I

    aput p1, v0, v1

    .line 130
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/IntStack;->fDepth:I

    return v0
.end method
