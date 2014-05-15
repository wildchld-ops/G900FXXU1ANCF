.class public interface abstract Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAddMemberRequested()V
.end method

.method public abstract onContactSelected(Landroid/net/Uri;)V
.end method

.method public abstract onGroupSizeUpdated(Ljava/lang/String;)V
.end method

.method public abstract onRemoveMemberRequested(Landroid/content/Context;Ljava/util/ArrayList;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public abstract onUpdateSelectMenu(Z)V
.end method
