.class public final Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;
.super Ljava/io/InputStream;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RewindableInputStream"
.end annotation


# instance fields
.field private fData:[B

.field private fEndOffset:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLength:I

.field private fMark:I

.field private fOffset:I

.field private fStartOffset:I

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEntityManager;Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .parameter "is"

    .prologue
    const/4 v1, 0x0

    .line 1886
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->this$0:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1887
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    .line 1888
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    .line 1889
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    .line 1890
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    .line 1891
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 1892
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    .line 1893
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fMark:I

    .line 1894
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2000
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int v0, v1, v2

    .line 2001
    .local v0, bytesLeft:I
    if-nez v0, :cond_2

    .line 2002
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v1, v2, :cond_0

    .line 2003
    const/4 v1, -0x1

    .line 2008
    :goto_0
    return v1

    .line 2005
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->this$0:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-boolean v1, v1, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 2008
    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    .line 2029
    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter "howMuch"

    .prologue
    .line 2012
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fMark:I

    .line 2013
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 2021
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 1905
    const/4 v0, 0x0

    .line 1906
    .local v0, b:I
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    if-ge v3, v4, :cond_1

    .line 1907
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 1924
    :cond_0
    :goto_0
    return v2

    .line 1909
    :cond_1
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-eq v3, v4, :cond_0

    .line 1912
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 1913
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    shl-int/lit8 v3, v3, 0x1

    new-array v1, v3, [B

    .line 1914
    .local v1, newData:[B
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1915
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    .line 1917
    .end local v1           #newData:[B
    :cond_2
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1918
    if-ne v0, v2, :cond_3

    .line 1919
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    goto :goto_0

    .line 1922
    :cond_3
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 1923
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 1924
    and-int/lit16 v2, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1928
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int v0, v1, v2

    .line 1929
    .local v0, bytesLeft:I
    if-nez v0, :cond_1

    .line 1930
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v1, v2, :cond_0

    .line 1931
    const/4 v1, -0x1

    .line 1963
    :goto_0
    return v1

    .line 1933
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 1951
    :cond_1
    if-ge p3, v0, :cond_2

    .line 1952
    if-gtz p3, :cond_3

    .line 1953
    const/4 v1, 0x0

    goto :goto_0

    .line 1957
    :cond_2
    move p3, v0

    .line 1959
    :cond_3
    if-eqz p1, :cond_4

    .line 1960
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1962
    :cond_4
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move v1, p3

    .line 1963
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 2016
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fMark:I

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 2018
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 1901
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 1902
    return-void
.end method

.method public setStartOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 1897
    iput p1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    .line 1898
    return-void
.end method

.method public skip(J)J
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 1969
    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    .line 1996
    :cond_0
    :goto_0
    return-wide v1

    .line 1972
    :cond_1
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int v0, v3, v4

    .line 1973
    .local v0, bytesLeft:I
    if-nez v0, :cond_2

    .line 1974
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-eq v3, v4, :cond_0

    .line 1977
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    goto :goto_0

    .line 1979
    :cond_2
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_3

    .line 1980
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-wide v1, p1

    .line 1981
    goto :goto_0

    .line 1983
    :cond_3
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 1984
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v1, v2, :cond_4

    .line 1985
    int-to-long v1, v0

    goto :goto_0

    .line 1987
    :cond_4
    int-to-long v1, v0

    sub-long/2addr p1, v1

    .line 1996
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    goto :goto_0
.end method
