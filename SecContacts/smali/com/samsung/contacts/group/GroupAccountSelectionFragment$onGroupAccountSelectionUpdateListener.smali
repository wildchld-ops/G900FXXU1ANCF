.class public interface abstract Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;
.super Ljava/lang/Object;
.source "GroupAccountSelectionFragment.java"

# interfaces
.implements Lcom/samsung/contacts/listener/ButtonUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupAccountSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onGroupAccountSelectionUpdateListener"
.end annotation


# virtual methods
.method public abstract onAccountSelectedAction(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation
.end method
