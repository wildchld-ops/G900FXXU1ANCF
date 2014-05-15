.class public Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
.super Ljava/lang/Object;
.source "FeatureTagGrupper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeatureDescription"
.end annotation


# instance fields
.field public iconId:I

.field public iconPackagename:Ljava/lang/String;

.field public isEnabled:Z

.field public name:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;

.field public uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$UriDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->this$0:Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->uris:Ljava/util/ArrayList;

    return-void
.end method
