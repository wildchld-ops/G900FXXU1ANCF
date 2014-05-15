.class public Lcom/samsung/contacts/util/SmartClipUtils;
.super Ljava/lang/Object;
.source "SmartClipUtils.java"


# instance fields
.field private mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/contacts/util/SmartClipUtils;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    return-void
.end method

.method public static getDetailContactUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8

    move-object v5, p0

    const-string v4, ""

    const/4 v3, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    return-object v6
.end method

.method public static isDetailSmartClip(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appto://com.android.contacts/detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isListSmartClip(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "appto://com.android.contacts/list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public updateMetaTag(ILandroid/net/Uri;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    const-string v0, "appto://com.android.contacts/list"

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/util/SmartClipUtils;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    new-instance v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v3, "app_deep_link"

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->addMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    return-void

    :pswitch_0
    const-string v0, "appto://com.android.contacts/list"

    iget-object v1, p0, Lcom/samsung/contacts/util/SmartClipUtils;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    const-string v2, "app_deep_link"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->removeMetaTag(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "appto://com.android.contacts/detail"

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
