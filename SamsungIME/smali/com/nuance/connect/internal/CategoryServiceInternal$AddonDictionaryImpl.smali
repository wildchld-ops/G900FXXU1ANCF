.class public Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
.super Ljava/lang/Object;
.source "CategoryServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/CategoryServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddonDictionaryImpl"
.end annotation


# instance fields
.field private final category:Ljava/lang/String;

.field private final dictionary:Ljava/lang/String;

.field private final id:I

.field private final language:I

.field private final name:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->id:I

    iput-object p3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->category:Ljava/lang/String;

    iput p5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->language:I

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->dictionary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDictionary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->dictionary:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->id:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->language:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hasUpdate()Z
    .locals 2

    const-string v0, "STATUS_INSTALLED_WITH_UPDATE"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .locals 2

    const-string v0, "STATUS_INSTALLED"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "STATUS_INSTALLED_WITH_UPDATE"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubscribed()Z
    .locals 2

    const-string v0, "STATUS_AVAILABLE"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    return-void
.end method
