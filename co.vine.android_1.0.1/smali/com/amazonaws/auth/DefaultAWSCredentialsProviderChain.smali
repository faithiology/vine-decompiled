.class public Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;
.super Lcom/amazonaws/auth/AWSCredentialsProviderChain;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazonaws/auth/AWSCredentialsProvider;

    const/4 v1, 0x0

    new-instance v2, Lcom/amazonaws/auth/SystemPropertiesCredentialsProvider;

    invoke-direct {v2}, Lcom/amazonaws/auth/SystemPropertiesCredentialsProvider;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;

    invoke-direct {v2}, Lcom/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider;-><init>()V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/AWSCredentialsProviderChain;-><init>([Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method
