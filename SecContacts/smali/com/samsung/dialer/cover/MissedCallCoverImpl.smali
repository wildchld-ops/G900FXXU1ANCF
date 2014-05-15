.class public Lcom/samsung/dialer/cover/MissedCallCoverImpl;
.super Ljava/lang/Object;
.source "MissedCallCoverImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTitleTimeText(Landroid/content/Context;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x101

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableLogsTimeBase()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/dialer/util/CallLogUtil;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/dialer/util/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, p1, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->date:J

    const-string v3, "Asia/Shanghai"

    invoke-static {p0, v1, v2, v4, v3}, Lcom/samsung/dialer/util/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v1, p1, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->date:J

    invoke-static {p0, v1, v2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
