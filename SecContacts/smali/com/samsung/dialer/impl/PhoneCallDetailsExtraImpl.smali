.class public Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;
.super Ljava/lang/Object;
.source "PhoneCallDetailsExtraImpl.java"


# instance fields
.field public logCount:I

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field public sharedFilePath:Ljava/lang/String;

.field public voicemailUri:Ljava/lang/String;

.field public vvmId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->vvmId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->logCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->voicemailUri:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->mCursor:Landroid/database/Cursor;

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->sharedFilePath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/dialer/CallDetailActivity;

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0xb

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->setVvmInfo(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->logCount:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getCnamIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "sip"

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    return-object v1

    :cond_0
    const-string v3, "tel"

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".action.SHOW_OR_CREATE_CONTACT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public setVvmInfo(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->vvmId:I

    iput-object p2, p0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->voicemailUri:Ljava/lang/String;

    return-void
.end method
