.class public abstract Lcom/nuance/connect/util/BaseUiItemController;
.super Ljava/lang/Object;
.source "BaseUiItemController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/BaseUiItemController$IUiItem;,
        Lcom/nuance/connect/util/BaseUiItemController$MenuDisplayState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayStateForItem(Lcom/nuance/connect/util/BaseUiItemController$IUiItem;)Lcom/nuance/connect/util/BaseUiItemController$MenuDisplayState;
    .locals 1

    sget-object v0, Lcom/nuance/connect/util/BaseUiItemController$MenuDisplayState;->HIDDEN:Lcom/nuance/connect/util/BaseUiItemController$MenuDisplayState;

    return-object v0
.end method
