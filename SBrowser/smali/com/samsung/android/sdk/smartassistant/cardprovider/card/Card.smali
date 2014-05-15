.class public Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;
.super Ljava/lang/Object;
.source "Card.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;",
            ">;"
        }
    .end annotation
.end field

.field private mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCardElements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;",
            ">;"
        }
    .end annotation
.end field

.field private mCardId:Ljava/lang/String;

.field private mCardType:Ljava/lang/String;

.field private mExpiredTime:J

.field private mTemplate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardId:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardType:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mTemplate:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mExpiredTime:J

    iput-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mActions:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardElements:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mAttributes:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mActions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardElements:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mTemplate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCardAction(Ljava/lang/String;Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mActions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getCardAction(Ljava/lang/String;)Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mActions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    return-object v0
.end method

.method public getCardActionKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mActions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCardElement(Ljava/lang/String;)Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardElements:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;

    return-object v0
.end method

.method public getCardElements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardElements:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mExpiredTime:J

    return-wide v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardElements:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mActions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mAttributes:Ljava/util/Map;

    return-void
.end method

.method public setCardElement(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardElements:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardId:Ljava/lang/String;

    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mCardType:Ljava/lang/String;

    return-void
.end method

.method public setExpirationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->mExpiredTime:J

    return-void
.end method
