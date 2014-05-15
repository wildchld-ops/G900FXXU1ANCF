.class public Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;
.super Ljava/lang/Object;
.source "FeatureTagGrupper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$UriDescription;,
        Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
    }
.end annotation


# instance fields
.field mFeatureTagsDetected:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public addInfo(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;-><init>(Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;)V

    iput-boolean p4, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->isEnabled:Z

    iput-object p1, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    iput p2, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconId:I

    iput-object p3, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconPackagename:Ljava/lang/String;

    iput-object p8, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->serviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->isEnabled:Z

    iput-object p3, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconPackagename:Ljava/lang/String;

    iput p2, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconId:I

    new-instance v1, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$UriDescription;

    invoke-direct {v1}, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$UriDescription;-><init>()V

    iput-object p6, v1, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$UriDescription;->displayName:Ljava/lang/String;

    iput-object p7, v1, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$UriDescription;->displayUri:Ljava/lang/String;

    iput-object p5, v1, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$UriDescription;->intent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getFeatureDescriptions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method
