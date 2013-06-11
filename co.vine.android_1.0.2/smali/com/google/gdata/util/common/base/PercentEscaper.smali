.class public Lcom/google/gdata/util/common/base/PercentEscaper;
.super Lcom/google/gdata/util/common/base/UnicodeEscaper;
.source "PercentEscaper.java"


# static fields
.field public static final SAFECHARS_URLENCODER:Ljava/lang/String; = "-_.*"

.field public static final SAFEPATHCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$&,;="

.field public static final SAFEQUERYSTRINGCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$,;/?:"

.field private static final UPPER_HEX_DIGITS:[C

.field private static final URI_ESCAPED_SPACE:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/gdata/util/common/base/PercentEscaper;->URI_ESCAPED_SPACE:[C

    .line 87
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "safeChars"
    .parameter "plusForSpace"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/gdata/util/common/base/UnicodeEscaper;-><init>()V

    .line 115
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'%\' character cannot be specified as \'safe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    iput-boolean p2, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->plusForSpace:Z

    .line 131
    invoke-static {p1}, Lcom/google/gdata/util/common/base/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    .line 132
    return-void
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 9
    .parameter "safeChars"

    .prologue
    const/4 v8, 0x1

    .line 140
    const/16 v4, 0x7a

    .line 141
    .local v4, maxChar:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 142
    .local v6, safeCharArray:[C
    move-object v0, v6

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 143
    .local v1, c:C
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v1           #c:C
    :cond_0
    add-int/lit8 v7, v4, 0x1

    new-array v5, v7, [Z

    .line 146
    .local v5, octets:[Z
    const/16 v1, 0x30

    .local v1, c:I
    :goto_1
    const/16 v7, 0x39

    if-gt v1, v7, :cond_1

    .line 147
    aput-boolean v8, v5, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    :cond_1
    const/16 v1, 0x41

    :goto_2
    const/16 v7, 0x5a

    if-gt v1, v7, :cond_2

    .line 150
    aput-boolean v8, v5, v1

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 152
    :cond_2
    const/16 v1, 0x61

    :goto_3
    const/16 v7, 0x7a

    if-gt v1, v7, :cond_3

    .line 153
    aput-boolean v8, v5, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 155
    :cond_3
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    .end local v1           #c:I
    :goto_4
    if-ge v2, v3, :cond_4

    aget-char v1, v0, v2

    .line 156
    .local v1, c:C
    aput-boolean v8, v5, v1

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 158
    .end local v1           #c:C
    :cond_4
    return-object v5
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 185
    .local v2, slen:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 186
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 187
    .local v0, c:C
    iget-object v3, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_2

    .line 188
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/gdata/util/common/base/PercentEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 191
    .end local v0           #c:C
    .end local p1
    :cond_1
    return-object p1

    .line 185
    .restart local v0       #c:C
    .restart local p1
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected escape(I)[C
    .locals 7
    .parameter "cp"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x25

    .line 201
    iget-object v1, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    .line 203
    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->plusForSpace:Z

    if-eqz v1, :cond_1

    .line 204
    sget-object v0, Lcom/google/gdata/util/common/base/PercentEscaper;->URI_ESCAPED_SPACE:[C

    goto :goto_0

    .line 205
    :cond_1
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_2

    .line 208
    new-array v0, v6, [C

    .line 209
    .local v0, dest:[C
    aput-char v2, v0, v3

    .line 210
    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 211
    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_0

    .line 213
    .end local v0           #dest:[C
    :cond_2
    const/16 v1, 0x7ff

    if-gt p1, v1, :cond_3

    .line 216
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 217
    .restart local v0       #dest:[C
    aput-char v2, v0, v3

    .line 218
    aput-char v2, v0, v6

    .line 219
    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 220
    ushr-int/lit8 p1, p1, 0x4

    .line 221
    const/4 v1, 0x4

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 222
    ushr-int/lit8 p1, p1, 0x2

    .line 223
    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 224
    ushr-int/lit8 p1, p1, 0x4

    .line 225
    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    or-int/lit8 v2, p1, 0xc

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_0

    .line 227
    .end local v0           #dest:[C
    :cond_3
    const v1, 0xffff

    if-gt p1, v1, :cond_4

    .line 230
    const/16 v1, 0x9

    new-array v0, v1, [C

    .line 231
    .restart local v0       #dest:[C
    aput-char v2, v0, v3

    .line 232
    const/16 v1, 0x45

    aput-char v1, v0, v4

    .line 233
    aput-char v2, v0, v6

    .line 234
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 235
    const/16 v1, 0x8

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 236
    ushr-int/lit8 p1, p1, 0x4

    .line 237
    const/4 v1, 0x7

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 238
    ushr-int/lit8 p1, p1, 0x2

    .line 239
    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 240
    ushr-int/lit8 p1, p1, 0x4

    .line 241
    const/4 v1, 0x4

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 242
    ushr-int/lit8 p1, p1, 0x2

    .line 243
    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    aget-char v1, v1, p1

    aput-char v1, v0, v5

    goto/16 :goto_0

    .line 245
    .end local v0           #dest:[C
    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    .line 246
    const/16 v1, 0xc

    new-array v0, v1, [C

    .line 249
    .restart local v0       #dest:[C
    aput-char v2, v0, v3

    .line 250
    const/16 v1, 0x46

    aput-char v1, v0, v4

    .line 251
    aput-char v2, v0, v6

    .line 252
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 253
    const/16 v1, 0x9

    aput-char v2, v0, v1

    .line 254
    const/16 v1, 0xb

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 255
    ushr-int/lit8 p1, p1, 0x4

    .line 256
    const/16 v1, 0xa

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 257
    ushr-int/lit8 p1, p1, 0x2

    .line 258
    const/16 v1, 0x8

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 259
    ushr-int/lit8 p1, p1, 0x4

    .line 260
    const/4 v1, 0x7

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 261
    ushr-int/lit8 p1, p1, 0x2

    .line 262
    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 263
    ushr-int/lit8 p1, p1, 0x4

    .line 264
    const/4 v1, 0x4

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 265
    ushr-int/lit8 p1, p1, 0x2

    .line 266
    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    goto/16 :goto_0

    .line 270
    .end local v0           #dest:[C
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid unicode character value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2
    .parameter "csq"
    .parameter "index"
    .parameter "end"

    .prologue
    .line 168
    :goto_0
    if-ge p2, p3, :cond_0

    .line 169
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 170
    .local v0, c:C
    iget-object v1, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 174
    .end local v0           #c:C
    :cond_0
    return p2

    .line 168
    .restart local v0       #c:C
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
