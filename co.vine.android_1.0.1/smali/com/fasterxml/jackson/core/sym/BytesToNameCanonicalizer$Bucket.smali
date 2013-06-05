.class final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field private final _length:I

.field protected final _name:Lcom/fasterxml/jackson/core/sym/Name;

.field protected final _next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V
    .locals 1
    .parameter "name"
    .parameter "next"

    .prologue
    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1082
    iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1083
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_length:I

    .line 1084
    return-void

    .line 1083
    :cond_0
    iget v0, p2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public find(III)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 3
    .parameter "hash"
    .parameter "firstQuad"
    .parameter "secondQuad"

    .prologue
    .line 1090
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1091
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v2, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1092
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1103
    :cond_0
    :goto_0
    return-object v1

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, curr:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-eqz v0, :cond_3

    .line 1096
    iget-object v1, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1097
    .local v1, currName:Lcom/fasterxml/jackson/core/sym/Name;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 1098
    invoke-virtual {v1, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1095
    :cond_2
    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1

    .line 1103
    .end local v1           #currName:Lcom/fasterxml/jackson/core/sym/Name;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public find(I[II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 3
    .parameter "hash"
    .parameter "quads"
    .parameter "qlen"

    .prologue
    .line 1108
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1109
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v2, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1121
    :cond_0
    :goto_0
    return-object v1

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, curr:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-eqz v0, :cond_3

    .line 1114
    iget-object v1, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1115
    .local v1, currName:Lcom/fasterxml/jackson/core/sym/Name;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 1116
    invoke-virtual {v1, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1113
    :cond_2
    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1

    .line 1121
    .end local v1           #currName:Lcom/fasterxml/jackson/core/sym/Name;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_length:I

    return v0
.end method
