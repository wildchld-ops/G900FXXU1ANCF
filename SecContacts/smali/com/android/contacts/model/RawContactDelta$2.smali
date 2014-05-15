.class Lcom/android/contacts/model/RawContactDelta$2;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/RawContactDelta;->buildDiff(Ljava/util/ArrayList;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/RawContactDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/RawContactDelta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/model/RawContactDelta$2;->this$0:Lcom/android/contacts/model/RawContactDelta;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildSetAggregationModeImpl(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$2;->this$0:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesImpl()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$2;->this$0:Lcom/android/contacts/model/RawContactDelta;

    #getter for: Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/model/RawContactDelta;->access$200(Lcom/android/contacts/model/RawContactDelta;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getValuesImpl()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$2;->this$0:Lcom/android/contacts/model/RawContactDelta;

    #getter for: Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v0}, Lcom/android/contacts/model/RawContactDelta;->access$100(Lcom/android/contacts/model/RawContactDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    return-object v0
.end method

.method public possibleAddImpl(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta$2;->this$0:Lcom/android/contacts/model/RawContactDelta;

    #calls: Lcom/android/contacts/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    invoke-static {v0, p1, p2}, Lcom/android/contacts/model/RawContactDelta;->access$000(Lcom/android/contacts/model/RawContactDelta;Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    return-void
.end method
