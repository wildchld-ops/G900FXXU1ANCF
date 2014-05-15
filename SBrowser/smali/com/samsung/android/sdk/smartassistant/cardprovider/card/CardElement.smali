.class public Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;
.super Ljava/lang/Object;
.source "CardElement.java"


# instance fields
.field private mAction:Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

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

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->mAction:Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->mAttributes:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->mAction:Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    return-object v0
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

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->mAction:Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    return-void
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

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;->mAttributes:Ljava/util/Map;

    return-void
.end method
