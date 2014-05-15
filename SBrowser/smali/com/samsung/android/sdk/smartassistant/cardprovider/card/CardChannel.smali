.class public Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;
.super Ljava/lang/Object;
.source "CardChannel.java"


# instance fields
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

.field private mIsEnabled:Z

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mRegisteredCardTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mIsEnabled:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mAttributes:Ljava/util/Map;

    iput-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mRegisteredCardTypes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mIsEnabled:Z

    iput-object p3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mRegisteredCardTypes:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mAttributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getCardNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mRegisteredCardTypes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardChannel;->mIsEnabled:Z

    return v0
.end method
