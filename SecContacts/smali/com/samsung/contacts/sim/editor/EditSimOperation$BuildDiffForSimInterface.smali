.class public interface abstract Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;
.super Ljava/lang/Object;
.source "EditSimOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/sim/editor/EditSimOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BuildDiffForSimInterface"
.end annotation


# virtual methods
.method public abstract buildSetAggregationModeImpl(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
.end method

.method public abstract getEntriesImpl()Ljava/util/HashMap;
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
.end method

.method public abstract getValuesImpl()Lcom/android/contacts/common/model/ValuesDelta;
.end method

.method public abstract possibleAddImpl(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
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
.end method
