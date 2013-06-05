.class public interface abstract Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract deleteIdentity(Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;)Lcom/amazonaws/services/simpleemail/model/DeleteIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract deleteVerifiedEmailAddress(Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
.end method

.method public abstract getIdentityDkimAttributes(Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;)Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getIdentityNotificationAttributes(Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;)Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getIdentityVerificationAttributes(Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;)Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getSendQuota()Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getSendQuota(Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;)Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getSendStatistics()Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract getSendStatistics(Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;)Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract listIdentities()Lcom/amazonaws/services/simpleemail/model/ListIdentitiesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract listIdentities(Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;)Lcom/amazonaws/services/simpleemail/model/ListIdentitiesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract listVerifiedEmailAddresses()Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract listVerifiedEmailAddresses(Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;)Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract sendEmail(Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;)Lcom/amazonaws/services/simpleemail/model/SendEmailResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract sendRawEmail(Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;)Lcom/amazonaws/services/simpleemail/model/SendRawEmailResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract setEndpoint(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setIdentityDkimEnabled(Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;)Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract setIdentityFeedbackForwardingEnabled(Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;)Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract setIdentityNotificationTopic(Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;)Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract setRegion(Lcom/amazonaws/regions/Region;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method

.method public abstract verifyDomainDkim(Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;)Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract verifyDomainIdentity(Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;)Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract verifyEmailAddress(Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method

.method public abstract verifyEmailIdentity(Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;)Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation
.end method
