.class Lcom/android/contacts/common/model/ValuesDelta$1;
.super Ljava/lang/Object;
.source "ValuesDelta.java"

# interfaces
.implements Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimValuesDeltaInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/model/ValuesDelta;->buildDiffForSim(Landroid/net/Uri;Landroid/content/ContentValues;ZZZ)Landroid/content/ContentProviderOperation$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/model/ValuesDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/ValuesDelta$1;->this$0:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAfterImpl()Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta$1;->this$0:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v0, v0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getIdColumnImpl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta$1;->this$0:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v0, v0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    return-object v0
.end method

.method public getIdImpl()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta$1;->this$0:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
