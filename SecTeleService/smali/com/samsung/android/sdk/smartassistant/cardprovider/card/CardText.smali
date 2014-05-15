.class public Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;
.super Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;
.source "CardText.java"


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;->mValue:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;->mValue:Ljava/lang/String;

    return-object v0
.end method
