.class public final Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;
.super Lcom/fasterxml/jackson/core/base/GeneratorBase;
.source "WriterBasedJsonGenerator.java"


# static fields
.field protected static final HEX_CHARS:[C = null

.field protected static final SHORT_WRITE:I = 0x20

.field protected static final sOutputEscapes:[I


# instance fields
.field protected _characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field protected _currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

.field protected _entityBuffer:[C

.field protected final _ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected _maximumNonEscapedChar:I

.field protected _outputBuffer:[C

.field protected _outputEnd:I

.field protected _outputEscapes:[I

.field protected _outputHead:I

.field protected _outputTail:I

.field protected final _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    .line 27
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->sOutputEscapes:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/Writer;)V
    .locals 2
    .parameter "ctxt"
    .parameter "features"
    .parameter "codec"
    .parameter "w"

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/base/GeneratorBase;-><init>(ILcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 51
    sget-object v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->sOutputEscapes:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 92
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 98
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 122
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 123
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    .line 124
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 125
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 127
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 130
    :cond_0
    return-void
.end method

.method private _allocateEntityBuffer()[C
    .locals 5

    .prologue
    const/16 v4, 0x75

    const/16 v3, 0x30

    const/16 v2, 0x5c

    .line 1777
    const/16 v1, 0xe

    new-array v0, v1, [C

    .line 1779
    .local v0, buf:[C
    const/4 v1, 0x0

    aput-char v2, v0, v1

    .line 1781
    const/4 v1, 0x2

    aput-char v2, v0, v1

    .line 1782
    const/4 v1, 0x3

    aput-char v4, v0, v1

    .line 1783
    const/4 v1, 0x4

    aput-char v3, v0, v1

    .line 1784
    const/4 v1, 0x5

    aput-char v3, v0, v1

    .line 1786
    const/16 v1, 0x8

    aput-char v2, v0, v1

    .line 1787
    const/16 v1, 0x9

    aput-char v4, v0, v1

    .line 1788
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 1789
    return-object v0
.end method

.method private final _appendCharacterEscape(CI)V
    .locals 10
    .parameter "ch"
    .parameter "escCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x30

    .line 1725
    if-ltz p2, :cond_1

    .line 1726
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v6, v7, :cond_0

    .line 1727
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1729
    :cond_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v9, v6, v7

    .line 1730
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    int-to-char v8, p2

    aput-char v8, v6, v7

    .line 1773
    :goto_0
    return-void

    .line 1733
    :cond_1
    const/4 v6, -0x2

    if-eq p2, v6, :cond_4

    .line 1734
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v6, v7, :cond_2

    .line 1735
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1737
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1738
    .local v4, ptr:I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 1739
    .local v0, buf:[C
    add-int/lit8 v5, v4, 0x1

    .end local v4           #ptr:I
    .local v5, ptr:I
    aput-char v9, v0, v4

    .line 1740
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    const/16 v6, 0x75

    aput-char v6, v0, v5

    .line 1742
    const/16 v6, 0xff

    if-le p1, v6, :cond_3

    .line 1743
    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1744
    .local v2, hi:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, v2, 0x4

    aget-char v6, v6, v7

    aput-char v6, v0, v4

    .line 1745
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, v2, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    .line 1746
    and-int/lit16 v6, p1, 0xff

    int-to-char p1, v6

    .line 1751
    .end local v2           #hi:I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, p1, 0x4

    aget-char v6, v6, v7

    aput-char v6, v0, v4

    .line 1752
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, p1, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    .line 1753
    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    goto :goto_0

    .line 1748
    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    aput-char v8, v0, v4

    .line 1749
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    aput-char v8, v0, v5

    goto :goto_1

    .line 1757
    .end local v0           #buf:[C
    .end local v4           #ptr:I
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-nez v6, :cond_5

    .line 1758
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v6

    invoke-interface {v6}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1763
    .local v1, escape:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1764
    .local v3, len:I
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v6, v7, :cond_6

    .line 1765
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1766
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v3, v6, :cond_6

    .line 1767
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1760
    .end local v1           #escape:Ljava/lang/String;
    .end local v3           #len:I
    :cond_5
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-interface {v6}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1761
    .restart local v1       #escape:Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    goto :goto_2

    .line 1771
    .restart local v3       #len:I
    :cond_6
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {v1, v6, v3, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1772
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    goto/16 :goto_0
.end method

.method private final _prependOrWriteCharacterEscape([CIICI)I
    .locals 9
    .parameter "buffer"
    .parameter "ptr"
    .parameter "end"
    .parameter "ch"
    .parameter "escCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1645
    if-ltz p5, :cond_2

    .line 1646
    const/4 v6, 0x1

    if-le p2, v6, :cond_0

    if-ge p2, p3, :cond_0

    .line 1647
    add-int/lit8 p2, p2, -0x2

    .line 1648
    const/16 v6, 0x5c

    aput-char v6, p1, p2

    .line 1649
    add-int/lit8 v6, p2, 0x1

    int-to-char v7, p5

    aput-char v7, p1, v6

    :goto_0
    move v5, p2

    .line 1715
    .end local p2
    .local v5, ptr:I
    :goto_1
    return v5

    .line 1651
    .end local v5           #ptr:I
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 1652
    .local v0, ent:[C
    if-nez v0, :cond_1

    .line 1653
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1655
    :cond_1
    const/4 v6, 0x1

    int-to-char v7, p5

    aput-char v7, v0, v6

    .line 1656
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1660
    .end local v0           #ent:[C
    :cond_2
    const/4 v6, -0x2

    if-eq p5, v6, :cond_7

    .line 1661
    const/4 v6, 0x5

    if-le p2, v6, :cond_4

    if-ge p2, p3, :cond_4

    .line 1662
    add-int/lit8 p2, p2, -0x6

    .line 1663
    add-int/lit8 v5, p2, 0x1

    .end local p2
    .restart local v5       #ptr:I
    const/16 v6, 0x5c

    aput-char v6, p1, p2

    .line 1664
    add-int/lit8 p2, v5, 0x1

    .end local v5           #ptr:I
    .restart local p2
    const/16 v6, 0x75

    aput-char v6, p1, v5

    .line 1666
    const/16 v6, 0xff

    if-le p4, v6, :cond_3

    .line 1667
    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1668
    .local v2, hi:I
    add-int/lit8 v5, p2, 0x1

    .end local p2
    .restart local v5       #ptr:I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, v2, 0x4

    aget-char v6, v6, v7

    aput-char v6, p1, p2

    .line 1669
    add-int/lit8 p2, v5, 0x1

    .end local v5           #ptr:I
    .restart local p2
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, v2, 0xf

    aget-char v6, v6, v7

    aput-char v6, p1, v5

    .line 1670
    and-int/lit16 v6, p4, 0xff

    int-to-char p4, v6

    .line 1675
    .end local v2           #hi:I
    :goto_2
    add-int/lit8 v5, p2, 0x1

    .end local p2
    .restart local v5       #ptr:I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, p4, 0x4

    aget-char v6, v6, v7

    aput-char v6, p1, p2

    .line 1676
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, p4, 0xf

    aget-char v6, v6, v7

    aput-char v6, p1, v5

    .line 1677
    add-int/lit8 p2, v5, -0x5

    .end local v5           #ptr:I
    .restart local p2
    :goto_3
    move v5, p2

    .line 1699
    .end local p2
    .restart local v5       #ptr:I
    goto :goto_1

    .line 1672
    .end local v5           #ptr:I
    .restart local p2
    :cond_3
    add-int/lit8 v5, p2, 0x1

    .end local p2
    .restart local v5       #ptr:I
    const/16 v6, 0x30

    aput-char v6, p1, p2

    .line 1673
    add-int/lit8 p2, v5, 0x1

    .end local v5           #ptr:I
    .restart local p2
    const/16 v6, 0x30

    aput-char v6, p1, v5

    goto :goto_2

    .line 1680
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 1681
    .restart local v0       #ent:[C
    if-nez v0, :cond_5

    .line 1682
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1684
    :cond_5
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1685
    const/16 v6, 0xff

    if-le p4, v6, :cond_6

    .line 1686
    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1687
    .restart local v2       #hi:I
    and-int/lit16 v4, p4, 0xff

    .line 1688
    .local v4, lo:I
    const/16 v6, 0xa

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v2, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1689
    const/16 v6, 0xb

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v2, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1690
    const/16 v6, 0xc

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v4, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1691
    const/16 v6, 0xd

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v4, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1692
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    const/16 v7, 0x8

    const/4 v8, 0x6

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1694
    .end local v2           #hi:I
    .end local v4           #lo:I
    :cond_6
    const/4 v6, 0x6

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p4, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1695
    const/4 v6, 0x7

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, p4, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1696
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1702
    .end local v0           #ent:[C
    :cond_7
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-nez v6, :cond_8

    .line 1703
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {v6, p4}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v6

    invoke-interface {v6}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1708
    .local v1, escape:Ljava/lang/String;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1709
    .local v3, len:I
    if-lt p2, v3, :cond_9

    if-ge p2, p3, :cond_9

    .line 1710
    sub-int/2addr p2, v3

    .line 1711
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    :goto_5
    move v5, p2

    .line 1715
    .end local p2
    .restart local v5       #ptr:I
    goto/16 :goto_1

    .line 1705
    .end local v1           #escape:Ljava/lang/String;
    .end local v3           #len:I
    .end local v5           #ptr:I
    .restart local p2
    :cond_8
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-interface {v6}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1706
    .restart local v1       #escape:Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    goto :goto_4

    .line 1713
    .restart local v3       #len:I
    :cond_9
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private final _prependOrWriteCharacterEscape(CI)V
    .locals 13
    .parameter "ch"
    .parameter "escCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x5c

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x6

    .line 1554
    if-ltz p2, :cond_2

    .line 1555
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v7, v11, :cond_0

    .line 1556
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v7, -0x2

    .line 1557
    .local v5, ptr:I
    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1558
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    add-int/lit8 v6, v5, 0x1

    .end local v5           #ptr:I
    .local v6, ptr:I
    aput-char v12, v7, v5

    .line 1559
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    int-to-char v8, p2

    aput-char v8, v7, v6

    .line 1632
    .end local v6           #ptr:I
    :goto_0
    return-void

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 1564
    .local v0, buf:[C
    if-nez v0, :cond_1

    .line 1565
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1567
    :cond_1
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1568
    const/4 v7, 0x1

    int-to-char v8, p2

    aput-char v8, v0, v7

    .line 1569
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v0, v9, v11}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1572
    .end local v0           #buf:[C
    :cond_2
    const/4 v7, -0x2

    if-eq p2, v7, :cond_7

    .line 1573
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v7, v10, :cond_4

    .line 1574
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 1575
    .restart local v0       #buf:[C
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v7, -0x6

    .line 1576
    .restart local v5       #ptr:I
    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1577
    aput-char v12, v0, v5

    .line 1578
    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x75

    aput-char v7, v0, v5

    .line 1580
    const/16 v7, 0xff

    if-le p1, v7, :cond_3

    .line 1581
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v2, v7, 0xff

    .line 1582
    .local v2, hi:I
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v2, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1583
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v2, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1584
    and-int/lit16 v7, p1, 0xff

    int-to-char p1, v7

    .line 1589
    .end local v2           #hi:I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p1, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1590
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, p1, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    goto :goto_0

    .line 1586
    :cond_3
    add-int/lit8 v5, v5, 0x1

    aput-char v8, v0, v5

    .line 1587
    add-int/lit8 v5, v5, 0x1

    aput-char v8, v0, v5

    goto :goto_1

    .line 1594
    .end local v0           #buf:[C
    .end local v5           #ptr:I
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 1595
    .restart local v0       #buf:[C
    if-nez v0, :cond_5

    .line 1596
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1598
    :cond_5
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1599
    const/16 v7, 0xff

    if-le p1, v7, :cond_6

    .line 1600
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v2, v7, 0xff

    .line 1601
    .restart local v2       #hi:I
    and-int/lit16 v4, p1, 0xff

    .line 1602
    .local v4, lo:I
    const/16 v7, 0xa

    sget-object v8, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v9, v2, 0x4

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1603
    const/16 v7, 0xb

    sget-object v8, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, v2, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1604
    const/16 v7, 0xc

    sget-object v8, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v9, v4, 0x4

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1605
    const/16 v7, 0xd

    sget-object v8, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, v4, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1606
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    const/16 v8, 0x8

    invoke-virtual {v7, v0, v8, v10}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1608
    .end local v2           #hi:I
    .end local v4           #lo:I
    :cond_6
    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p1, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v10

    .line 1609
    const/4 v7, 0x7

    sget-object v8, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, p1, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1610
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v0, v11, v10}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1616
    .end local v0           #buf:[C
    :cond_7
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-nez v7, :cond_8

    .line 1617
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v7

    invoke-interface {v7}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1622
    .local v1, escape:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1623
    .local v3, len:I
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v7, v3, :cond_9

    .line 1624
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v5, v7, v3

    .line 1625
    .restart local v5       #ptr:I
    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1626
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {v1, v9, v3, v7, v5}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_0

    .line 1619
    .end local v1           #escape:Ljava/lang/String;
    .end local v3           #len:I
    .end local v5           #ptr:I
    :cond_8
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-interface {v7}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1620
    .restart local v1       #escape:Ljava/lang/String;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    goto :goto_2

    .line 1630
    .restart local v3       #len:I
    :cond_9
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1631
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _writeLongString(Ljava/lang/String;)V
    .locals 7
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1037
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1038
    .local v3, textLen:I
    const/4 v1, 0x0

    .line 1040
    .local v1, offset:I
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 1041
    .local v0, max:I
    add-int v4, v1, v0

    if-le v4, v3, :cond_1

    sub-int v2, v3, v1

    .line 1043
    .local v2, segmentLen:I
    :goto_0
    add-int v4, v1, v2

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1044
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v4, :cond_2

    .line 1045
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeSegmentCustom(I)V

    .line 1051
    :goto_1
    add-int/2addr v1, v2

    .line 1052
    if-lt v1, v3, :cond_0

    .line 1053
    return-void

    .end local v2           #segmentLen:I
    :cond_1
    move v2, v0

    .line 1041
    goto :goto_0

    .line 1046
    .restart local v2       #segmentLen:I
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    if-eqz v4, :cond_3

    .line 1047
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeSegmentASCII(II)V

    goto :goto_1

    .line 1049
    :cond_3
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeSegment(I)V

    goto :goto_1
.end method

.method private final _writeNull()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x6c

    .line 1528
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 1529
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1531
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1532
    .local v1, ptr:I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 1533
    .local v0, buf:[C
    const/16 v2, 0x6e

    aput-char v2, v0, v1

    .line 1534
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 1535
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 1536
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 1537
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1538
    return-void
.end method

.method private final _writeQuotedInt(I)V
    .locals 4
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 657
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 661
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 662
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 663
    return-void
.end method

.method private final _writeQuotedLong(J)V
    .locals 4
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 682
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 686
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 687
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 688
    return-void
.end method

.method private final _writeQuotedRaw(Ljava/lang/Object;)V
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 768
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 772
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 773
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 774
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 777
    return-void
.end method

.method private final _writeSegment(I)V
    .locals 10
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1067
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1068
    .local v6, escCodes:[I
    array-length v7, v6

    .line 1070
    .local v7, escLen:I
    const/4 v2, 0x0

    .line 1071
    .local v2, ptr:I
    move v9, v2

    .line 1074
    .local v9, start:I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1079
    .local v4, c:C
    if-ge v4, v7, :cond_2

    aget v0, v6, v4

    if-eqz v0, :cond_2

    .line 1091
    :goto_1
    sub-int v8, v2, v9

    .line 1092
    .local v8, flushLen:I
    if-lez v8, :cond_3

    .line 1093
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v9, v8}, Ljava/io/Writer;->write([CII)V

    .line 1094
    if-lt v2, p1, :cond_3

    .line 1102
    .end local v4           #c:C
    .end local v8           #flushLen:I
    :cond_1
    return-void

    .line 1082
    .restart local v4       #c:C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_1

    .line 1098
    .restart local v8       #flushLen:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1100
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    aget v5, v6, v4

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v9

    .line 1101
    goto :goto_0
.end method

.method private final _writeSegmentASCII(II)V
    .locals 10
    .parameter "end"
    .parameter "maxNonEscaped"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1216
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1217
    .local v6, escCodes:[I
    array-length v0, v6

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1219
    .local v7, escLimit:I
    const/4 v2, 0x0

    .line 1220
    .local v2, ptr:I
    const/4 v5, 0x0

    .line 1221
    .local v5, escCode:I
    move v9, v2

    .line 1224
    .local v9, start:I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1229
    .local v4, c:C
    if-ge v4, v7, :cond_2

    .line 1230
    aget v5, v6, v4

    .line 1231
    if-eqz v5, :cond_3

    .line 1242
    :goto_1
    sub-int v8, v2, v9

    .line 1243
    .local v8, flushLen:I
    if-lez v8, :cond_4

    .line 1244
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v9, v8}, Ljava/io/Writer;->write([CII)V

    .line 1245
    if-lt v2, p1, :cond_4

    .line 1252
    .end local v4           #c:C
    .end local v8           #flushLen:I
    :cond_1
    return-void

    .line 1234
    .restart local v4       #c:C
    :cond_2
    if-le v4, p2, :cond_3

    .line 1235
    const/4 v5, -0x1

    .line 1236
    goto :goto_1

    .line 1238
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_1

    .line 1249
    .restart local v8       #flushLen:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1250
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v9

    .line 1251
    goto :goto_0
.end method

.method private final _writeSegmentCustom(I)V
    .locals 12
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1367
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1368
    .local v7, escCodes:[I
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const v10, 0xffff

    .line 1369
    .local v10, maxNonEscaped:I
    :goto_0
    array-length v0, v7

    add-int/lit8 v1, v10, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1370
    .local v8, escLimit:I
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 1372
    .local v6, customEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    const/4 v2, 0x0

    .line 1373
    .local v2, ptr:I
    const/4 v5, 0x0

    .line 1374
    .local v5, escCode:I
    move v11, v2

    .line 1377
    .local v11, start:I
    :goto_1
    if-ge v2, p1, :cond_1

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1382
    .local v4, c:C
    if-ge v4, v8, :cond_3

    .line 1383
    aget v5, v7, v4

    .line 1384
    if-eqz v5, :cond_5

    .line 1400
    :goto_2
    sub-int v9, v2, v11

    .line 1401
    .local v9, flushLen:I
    if-lez v9, :cond_6

    .line 1402
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v11, v9}, Ljava/io/Writer;->write([CII)V

    .line 1403
    if-lt v2, p1, :cond_6

    .line 1410
    .end local v4           #c:C
    .end local v9           #flushLen:I
    :cond_1
    return-void

    .line 1368
    .end local v2           #ptr:I
    .end local v5           #escCode:I
    .end local v6           #customEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .end local v8           #escLimit:I
    .end local v10           #maxNonEscaped:I
    .end local v11           #start:I
    :cond_2
    iget v10, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1387
    .restart local v2       #ptr:I
    .restart local v4       #c:C
    .restart local v5       #escCode:I
    .restart local v6       #customEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .restart local v8       #escLimit:I
    .restart local v10       #maxNonEscaped:I
    .restart local v11       #start:I
    :cond_3
    if-le v4, v10, :cond_4

    .line 1388
    const/4 v5, -0x1

    .line 1389
    goto :goto_2

    .line 1391
    :cond_4
    invoke-virtual {v6, v4}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v0, :cond_5

    .line 1392
    const/4 v5, -0x2

    .line 1393
    goto :goto_2

    .line 1396
    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_2

    .line 1407
    .restart local v9       #flushLen:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 1408
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v11

    .line 1409
    goto :goto_1
.end method

.method private _writeString(Ljava/lang/String;)V
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 966
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 967
    .local v0, len:I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_0

    .line 968
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeLongString(Ljava/lang/String;)V

    .line 986
    :goto_0
    return-void

    .line 974
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_1

    .line 975
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 977
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 979
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v1, :cond_2

    .line 980
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringCustom(I)V

    goto :goto_0

    .line 981
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    if-eqz v1, :cond_3

    .line 982
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringASCII(II)V

    goto :goto_0

    .line 984
    :cond_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString2(I)V

    goto :goto_0
.end method

.method private final _writeString([CII)V
    .locals 8
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1111
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v6, :cond_1

    .line 1112
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringCustom([CII)V

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    if-eqz v6, :cond_2

    .line 1116
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, p1, p2, p3, v6}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringASCII([CIII)V

    goto :goto_0

    .line 1124
    :cond_2
    add-int/2addr p3, p2

    .line 1125
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1126
    .local v1, escCodes:[I
    array-length v2, v1

    .line 1127
    .local v2, escLen:I
    :goto_1
    if-ge p2, p3, :cond_0

    .line 1128
    move v5, p2

    .line 1131
    .local v5, start:I
    :cond_3
    aget-char v0, p1, p2

    .line 1132
    .local v0, c:C
    if-ge v0, v2, :cond_6

    aget v6, v1, v0

    if-eqz v6, :cond_6

    move v4, p2

    .line 1141
    .end local p2
    .local v4, offset:I
    :goto_2
    sub-int v3, v4, v5

    .line 1142
    .local v3, newAmount:I
    const/16 v6, 0x20

    if-ge v3, v6, :cond_7

    .line 1144
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v6, v7, :cond_4

    .line 1145
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1147
    :cond_4
    if-lez v3, :cond_5

    .line 1148
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1149
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1156
    :cond_5
    :goto_3
    if-lt v4, p3, :cond_8

    move p2, v4

    .line 1157
    .end local v4           #offset:I
    .restart local p2
    goto :goto_0

    .line 1135
    .end local v3           #newAmount:I
    :cond_6
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_3

    move v4, p2

    .line 1136
    .end local p2
    .restart local v4       #offset:I
    goto :goto_2

    .line 1152
    .restart local v3       #newAmount:I
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1153
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, p1, v5, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1160
    :cond_8
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    aget-char v0, p1, v4

    .line 1161
    aget v6, v1, v0

    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_appendCharacterEscape(CI)V

    goto :goto_1
.end method

.method private _writeString2(I)V
    .locals 8
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 992
    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int v1, v5, p1

    .line 993
    .local v1, end:I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 994
    .local v2, escCodes:[I
    array-length v3, v2

    .line 997
    .local v3, escLen:I
    :goto_0
    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-ge v5, v1, :cond_3

    .line 1001
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aget-char v0, v5, v6

    .line 1002
    .local v0, c:C
    if-ge v0, v3, :cond_2

    aget v5, v2, v0

    if-eqz v5, :cond_2

    .line 1014
    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    sub-int v4, v5, v6

    .line 1015
    .local v4, flushLen:I
    if-lez v4, :cond_1

    .line 1016
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    invoke-virtual {v5, v6, v7, v4}, Ljava/io/Writer;->write([CII)V

    .line 1021
    :cond_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aget-char v0, v5, v6

    .line 1022
    aget v5, v2, v0

    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_0

    .line 1005
    .end local v4           #flushLen:I
    :cond_2
    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v5, v1, :cond_0

    .line 1024
    .end local v0           #c:C
    :cond_3
    return-void
.end method

.method private _writeStringASCII(II)V
    .locals 9
    .parameter "len"
    .parameter "maxNonEscaped"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1179
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int v1, v6, p1

    .line 1180
    .local v1, end:I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1181
    .local v3, escCodes:[I
    array-length v6, v3

    add-int/lit8 v7, p2, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1182
    .local v4, escLimit:I
    const/4 v2, 0x0

    .line 1185
    .local v2, escCode:I
    :goto_0
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-ge v6, v1, :cond_4

    .line 1190
    :cond_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aget-char v0, v6, v7

    .line 1191
    .local v0, c:C
    if-ge v0, v4, :cond_2

    .line 1192
    aget v2, v3, v0

    .line 1193
    if-eqz v2, :cond_3

    .line 1204
    :goto_1
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    sub-int v5, v6, v7

    .line 1205
    .local v5, flushLen:I
    if-lez v5, :cond_1

    .line 1206
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/Writer;->write([CII)V

    .line 1208
    :cond_1
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1209
    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_0

    .line 1196
    .end local v5           #flushLen:I
    :cond_2
    if-le v0, p2, :cond_3

    .line 1197
    const/4 v2, -0x1

    .line 1198
    goto :goto_1

    .line 1200
    :cond_3
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v6, v1, :cond_0

    .line 1211
    .end local v0           #c:C
    :cond_4
    return-void
.end method

.method private final _writeStringASCII([CIII)V
    .locals 8
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .parameter "maxNonEscaped"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1258
    add-int/2addr p3, p2

    .line 1259
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1260
    .local v2, escCodes:[I
    array-length v6, v2

    add-int/lit8 v7, p4, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1262
    .local v3, escLimit:I
    const/4 v1, 0x0

    .line 1264
    .local v1, escCode:I
    :goto_0
    if-ge p2, p3, :cond_3

    .line 1265
    move v5, p2

    .line 1269
    .local v5, start:I
    :cond_0
    aget-char v0, p1, p2

    .line 1270
    .local v0, c:C
    if-ge v0, v3, :cond_4

    .line 1271
    aget v1, v2, v0

    .line 1272
    if-eqz v1, :cond_5

    .line 1285
    :goto_1
    sub-int v4, p2, v5

    .line 1286
    .local v4, newAmount:I
    const/16 v6, 0x20

    if-ge v4, v6, :cond_6

    .line 1288
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v6, v7, :cond_1

    .line 1289
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1291
    :cond_1
    if-lez v4, :cond_2

    .line 1292
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v5, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1293
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1300
    :cond_2
    :goto_2
    if-lt p2, p3, :cond_7

    .line 1307
    .end local v0           #c:C
    .end local v4           #newAmount:I
    .end local v5           #start:I
    :cond_3
    return-void

    .line 1275
    .restart local v0       #c:C
    .restart local v5       #start:I
    :cond_4
    if-le v0, p4, :cond_5

    .line 1276
    const/4 v1, -0x1

    .line 1277
    goto :goto_1

    .line 1279
    :cond_5
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    goto :goto_1

    .line 1296
    .restart local v4       #newAmount:I
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1297
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, p1, v5, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 1304
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 1305
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_appendCharacterEscape(CI)V

    goto :goto_0
.end method

.method private _writeStringCustom(I)V
    .locals 11
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1323
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int v2, v8, p1

    .line 1324
    .local v2, end:I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1325
    .local v4, escCodes:[I
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_2

    const v7, 0xffff

    .line 1326
    .local v7, maxNonEscaped:I
    :goto_0
    array-length v8, v4

    add-int/lit8 v9, v7, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1327
    .local v5, escLimit:I
    const/4 v3, 0x0

    .line 1328
    .local v3, escCode:I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 1331
    .local v1, customEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    :goto_1
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-ge v8, v2, :cond_6

    .line 1336
    :cond_0
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aget-char v0, v8, v9

    .line 1337
    .local v0, c:C
    if-ge v0, v5, :cond_3

    .line 1338
    aget v3, v4, v0

    .line 1339
    if-eqz v3, :cond_5

    .line 1355
    :goto_2
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    sub-int v6, v8, v9

    .line 1356
    .local v6, flushLen:I
    if-lez v6, :cond_1

    .line 1357
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v10, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    invoke-virtual {v8, v9, v10, v6}, Ljava/io/Writer;->write([CII)V

    .line 1359
    :cond_1
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1360
    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_1

    .line 1325
    .end local v0           #c:C
    .end local v1           #customEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .end local v3           #escCode:I
    .end local v5           #escLimit:I
    .end local v6           #flushLen:I
    .end local v7           #maxNonEscaped:I
    :cond_2
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1342
    .restart local v0       #c:C
    .restart local v1       #customEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .restart local v3       #escCode:I
    .restart local v5       #escLimit:I
    .restart local v7       #maxNonEscaped:I
    :cond_3
    if-le v0, v7, :cond_4

    .line 1343
    const/4 v3, -0x1

    .line 1344
    goto :goto_2

    .line 1346
    :cond_4
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v8

    iput-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v8, :cond_5

    .line 1347
    const/4 v3, -0x2

    .line 1348
    goto :goto_2

    .line 1351
    :cond_5
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v8, v2, :cond_0

    .line 1362
    .end local v0           #c:C
    :cond_6
    return-void
.end method

.method private final _writeStringCustom([CII)V
    .locals 10
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1415
    add-int/2addr p3, p2

    .line 1416
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1417
    .local v3, escCodes:[I
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_4

    const v5, 0xffff

    .line 1418
    .local v5, maxNonEscaped:I
    :goto_0
    array-length v8, v3

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1419
    .local v4, escLimit:I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 1421
    .local v1, customEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    const/4 v2, 0x0

    .line 1423
    .local v2, escCode:I
    :goto_1
    if-ge p2, p3, :cond_3

    .line 1424
    move v7, p2

    .line 1428
    .local v7, start:I
    :cond_0
    aget-char v0, p1, p2

    .line 1429
    .local v0, c:C
    if-ge v0, v4, :cond_5

    .line 1430
    aget v2, v3, v0

    .line 1431
    if-eqz v2, :cond_7

    .line 1449
    :goto_2
    sub-int v6, p2, v7

    .line 1450
    .local v6, newAmount:I
    const/16 v8, 0x20

    if-ge v6, v8, :cond_8

    .line 1452
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v8, v9, :cond_1

    .line 1453
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1455
    :cond_1
    if-lez v6, :cond_2

    .line 1456
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v7, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1457
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1464
    :cond_2
    :goto_3
    if-lt p2, p3, :cond_9

    .line 1471
    .end local v0           #c:C
    .end local v6           #newAmount:I
    .end local v7           #start:I
    :cond_3
    return-void

    .line 1417
    .end local v1           #customEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .end local v2           #escCode:I
    .end local v4           #escLimit:I
    .end local v5           #maxNonEscaped:I
    :cond_4
    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1434
    .restart local v0       #c:C
    .restart local v1       #customEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .restart local v2       #escCode:I
    .restart local v4       #escLimit:I
    .restart local v5       #maxNonEscaped:I
    .restart local v7       #start:I
    :cond_5
    if-le v0, v5, :cond_6

    .line 1435
    const/4 v2, -0x1

    .line 1436
    goto :goto_2

    .line 1438
    :cond_6
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v8

    iput-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v8, :cond_7

    .line 1439
    const/4 v2, -0x2

    .line 1440
    goto :goto_2

    .line 1443
    :cond_7
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    goto :goto_2

    .line 1460
    .restart local v6       #newAmount:I
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1461
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v8, p1, v7, v6}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1468
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 1469
    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_appendCharacterEscape(CI)V

    goto :goto_1
.end method

.method private writeRawLong(Ljava/lang/String;)V
    .locals 7
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 587
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v3, v4, v5

    .line 589
    .local v3, room:I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v6, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 590
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 591
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 592
    move v2, v3

    .line 593
    .local v2, offset:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v4, v3

    .line 595
    .local v1, len:I
    :goto_0
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v1, v4, :cond_0

    .line 596
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 597
    .local v0, amount:I
    add-int v4, v2, v0

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 598
    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 599
    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 600
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 601
    add-int/2addr v2, v0

    .line 602
    sub-int/2addr v1, v0

    .line 603
    goto :goto_0

    .line 605
    .end local v0           #amount:I
    :cond_0
    add-int v4, v2, v1

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 606
    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 607
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 608
    return-void
.end method


# virtual methods
.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1794
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    sub-int v0, v2, v3

    .line 1795
    .local v0, len:I
    if-lez v0, :cond_0

    .line 1796
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1797
    .local v1, offset:I
    const/4 v2, 0x0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1798
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1800
    .end local v1           #offset:I
    :cond_0
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 946
    .local v0, buf:[C
    if-eqz v0, :cond_0

    .line 947
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 948
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseConcatBuffer([C)V

    .line 950
    :cond_0
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .locals 1
    .parameter "typeMsg"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 857
    packed-switch p2, :pswitch_data_0

    .line 876
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cantHappen()V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 859
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 862
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 865
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 869
    :pswitch_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 4
    .parameter "typeMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 822
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeValue()I

    move-result v1

    .line 823
    .local v1, status:I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expecting field name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 826
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-nez v2, :cond_2

    .line 828
    packed-switch v1, :pswitch_data_0

    .line 851
    :goto_0
    return-void

    .line 830
    :pswitch_0
    const/16 v0, 0x2c

    .line 842
    .local v0, c:C
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_1

    .line 843
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 845
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v0, v2, v3

    .line 846
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    goto :goto_0

    .line 833
    .end local v0           #c:C
    :pswitch_1
    const/16 v0, 0x3a

    .line 834
    .restart local v0       #c:C
    goto :goto_1

    .line 836
    .end local v0           #c:C
    :pswitch_2
    const/16 v0, 0x20

    .line 837
    .restart local v0       #c:C
    goto :goto_1

    .line 850
    .end local v0           #c:C
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    goto :goto_0

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 9
    .parameter "b64variant"
    .parameter "input"
    .parameter "inputPtr"
    .parameter "inputEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1483
    add-int/lit8 v4, p4, -0x3

    .line 1485
    .local v4, safeInputEnd:I
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    add-int/lit8 v5, v6, -0x6

    .line 1486
    .local v5, safeOutputEnd:I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    .local v1, chunksBeforeLF:I
    move v3, p3

    .line 1489
    .end local p3
    .local v3, inputPtr:I
    :goto_0
    if-gt v3, v4, :cond_2

    .line 1490
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-le v6, v5, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1494
    :cond_0
    add-int/lit8 p3, v3, 0x1

    .end local v3           #inputPtr:I
    .restart local p3
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x8

    .line 1495
    .local v0, b24:I
    add-int/lit8 v3, p3, 0x1

    .end local p3
    .restart local v3       #inputPtr:I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    .line 1496
    shl-int/lit8 v6, v0, 0x8

    add-int/lit8 p3, v3, 0x1

    .end local v3           #inputPtr:I
    .restart local p3
    aget-byte v7, p2, v3

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 1497
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result v6

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1498
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    .line 1500
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v8, 0x5c

    aput-char v8, v6, v7

    .line 1501
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v8, 0x6e

    aput-char v8, v6, v7

    .line 1502
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    :cond_1
    move v3, p3

    .line 1504
    .end local p3
    .restart local v3       #inputPtr:I
    goto :goto_0

    .line 1507
    .end local v0           #b24:I
    :cond_2
    sub-int v2, p4, v3

    .line 1508
    .local v2, inputLeft:I
    if-lez v2, :cond_5

    .line 1509
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-le v6, v5, :cond_3

    .line 1510
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1512
    :cond_3
    add-int/lit8 p3, v3, 0x1

    .end local v3           #inputPtr:I
    .restart local p3
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x10

    .line 1513
    .restart local v0       #b24:I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 1514
    add-int/lit8 v3, p3, 0x1

    .end local p3
    .restart local v3       #inputPtr:I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    move p3, v3

    .line 1516
    .end local v3           #inputPtr:I
    .restart local p3
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v2, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result v6

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1518
    .end local v0           #b24:I
    :goto_1
    return-void

    .end local p3
    .restart local v3       #inputPtr:I
    :cond_5
    move p3, v3

    .end local v3           #inputPtr:I
    .restart local p3
    goto :goto_1
.end method

.method public _writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V
    .locals 7
    .parameter "name"
    .parameter "commaBefore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 327
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V

    .line 362
    :goto_0
    return-void

    .line 332
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 335
    :cond_1
    if-eqz p2, :cond_2

    .line 336
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v4, 0x2c

    aput-char v4, v2, v3

    .line 341
    :cond_2
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedChars()[C

    move-result-object v1

    .line 342
    .local v1, quoted:[C
    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 343
    array-length v2, v1

    invoke-virtual {p0, v1, v5, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V

    goto :goto_0

    .line 347
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v6, v2, v3

    .line 349
    array-length v0, v1

    .line 350
    .local v0, qlen:I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_5

    .line 351
    invoke-virtual {p0, v1, v5, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V

    .line 353
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_4

    .line 354
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 356
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v6, v2, v3

    goto :goto_0

    .line 358
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {v1, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 360
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v6, v2, v3

    goto :goto_0
.end method

.method protected _writeFieldName(Ljava/lang/String;Z)V
    .locals 4
    .parameter "name"
    .parameter "commaBefore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 293
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writePPFieldName(Ljava/lang/String;Z)V

    .line 322
    :goto_0
    return-void

    .line 298
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 301
    :cond_1
    if-eqz p2, :cond_2

    .line 302
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 308
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 309
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 316
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    .line 318
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_4

    .line 319
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method protected final _writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V
    .locals 6
    .parameter "name"
    .parameter "commaBefore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 395
    if-eqz p2, :cond_2

    .line 396
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v1, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 401
    :goto_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedChars()[C

    move-result-object v0

    .line 402
    .local v0, quoted:[C
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v5, v1, v2

    .line 407
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V

    .line 408
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_1

    .line 409
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v5, v1, v2

    .line 415
    :goto_1
    return-void

    .line 398
    .end local v0           #quoted:[C
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v1, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 413
    .restart local v0       #quoted:[C
    :cond_3
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V

    goto :goto_1
.end method

.method protected final _writePPFieldName(Ljava/lang/String;Z)V
    .locals 4
    .parameter "name"
    .parameter "commaBefore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 371
    if-eqz p2, :cond_2

    .line 372
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 377
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 382
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    .line 383
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 390
    :goto_1
    return-void

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 388
    :cond_3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->close()V

    .line 909
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    .line 913
    .local v0, ctxt:Lcom/fasterxml/jackson/core/JsonStreamContext;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 915
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 922
    .end local v0           #ctxt:Lcom/fasterxml/jackson/core/JsonStreamContext;
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 930
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    if-eqz v1, :cond_3

    .line 931
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 932
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 939
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_releaseBuffers()V

    .line 940
    return-void

    .line 933
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 935
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 892
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 893
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 897
    :cond_0
    return-void
.end method

.method public getCharacterEscapes()Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-object v0
.end method

.method public getHighestEscapedChar()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    return v0
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    return-object v0
.end method

.method public setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .parameter "esc"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 158
    if-nez p1, :cond_0

    .line 159
    sget-object v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->sOutputEscapes:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 163
    :goto_0
    return-object p0

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeCodesForAscii()[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    goto :goto_0
.end method

.method public setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .parameter "charCode"

    .prologue
    .line 145
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    iput p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    .line 146
    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 4
    .parameter "b64variant"
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 620
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 622
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 626
    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    .line 628
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 629
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 632
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 5
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x65

    .line 783
    const-string v2, "write boolean value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 784
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 787
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 788
    .local v1, ptr:I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 789
    .local v0, buf:[C
    if-eqz p1, :cond_1

    .line 790
    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 791
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 792
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 793
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 801
    :goto_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 802
    return-void

    .line 795
    :cond_1
    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 796
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x61

    aput-char v2, v0, v1

    .line 797
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 798
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x73

    aput-char v2, v0, v1

    .line 799
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    goto :goto_0
.end method

.method public final writeEndArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndArray(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 256
    return-void

    .line 250
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeEndObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndObject(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 288
    return-void

    .line 282
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 213
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, status:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 215
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 217
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V

    .line 218
    return-void

    .line 217
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, status:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 195
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 197
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeFieldName(Ljava/lang/String;Z)V

    .line 198
    return-void

    .line 197
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 808
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 809
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V

    .line 810
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeString(Ljava/lang/String;)V

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 720
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(F)V
    .locals 1
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeString(Ljava/lang/String;)V

    .line 737
    :goto_0
    return-void

    .line 735
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 736
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(I)V
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 644
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 645
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 646
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedInt(I)V

    .line 654
    :goto_0
    return-void

    .line 650
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 2
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 669
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 670
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 671
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedLong(J)V

    .line 679
    :goto_0
    return-void

    .line 674
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 676
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "encodedValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 758
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 759
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 760
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    .line 764
    :goto_0
    return-void

    .line 762
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 744
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 745
    if-nez p1, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V

    .line 752
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 748
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 750
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 696
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 697
    if-nez p1, :cond_0

    .line 698
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V

    .line 704
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 700
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 702
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw(C)V
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 578
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char p1, v0, v1

    .line 582
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 520
    .local v0, len:I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 522
    .local v1, room:I
    if-nez v1, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 524
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 527
    :cond_0
    if-lt v1, v0, :cond_1

    .line 528
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 529
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 540
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 542
    .local v0, room:I
    if-ge v0, p3, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 544
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 547
    :cond_0
    if-lt v0, p3, :cond_1

    .line 548
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 549
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_1
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw([CII)V
    .locals 3
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 560
    const/16 v1, 0x20

    if-ge p3, v1, :cond_1

    .line 561
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 562
    .local v0, room:I
    if-le p3, v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 572
    .end local v0           #room:I
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 571
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public writeRawUTF8String([BII)V
    .locals 0
    .parameter "text"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportUnsupportedOperation()V

    .line 498
    return-void
.end method

.method public final writeStartArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 229
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 231
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeStartObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 261
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 263
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartObject(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 271
    :goto_0
    return-void

    .line 266
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public final writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 8
    .parameter "sstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x0

    .line 465
    const-string v3, "write text value"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 466
    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 469
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v7, v3, v4

    .line 471
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedChars()[C

    move-result-object v2

    .line 472
    .local v2, text:[C
    array-length v0, v2

    .line 474
    .local v0, len:I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_3

    .line 475
    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v1, v3, v4

    .line 476
    .local v1, room:I
    if-le v0, v1, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 479
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {v2, v6, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 486
    .end local v1           #room:I
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 489
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v7, v3, v4

    .line 490
    return-void

    .line 483
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 484
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v3, v2, v6, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 427
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 428
    if-nez p1, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V

    .line 442
    :goto_0
    return-void

    .line 432
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 436
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    .line 438
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 439
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public writeString([CII)V
    .locals 4
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 448
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 449
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 453
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString([CII)V

    .line 455
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 459
    return-void
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fieldName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeString(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 0
    .parameter "text"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportUnsupportedOperation()V

    .line 506
    return-void
.end method
