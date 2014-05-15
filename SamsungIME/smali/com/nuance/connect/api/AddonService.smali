.class public interface abstract Lcom/nuance/connect/api/AddonService;
.super Ljava/lang/Object;
.source "AddonService.java"


# virtual methods
.method public abstract getAddonList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/internal/common/Addon;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentDownloadingAddons()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract installAddon(Ljava/lang/String;)V
.end method
