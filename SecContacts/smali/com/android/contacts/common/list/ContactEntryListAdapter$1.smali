.class Lcom/android/contacts/common/list/ContactEntryListAdapter$1;
.super Ljava/lang/Object;
.source "ContactEntryListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactEntryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactEntryListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactEntryListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v5, v5, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_running"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move-object v2, p1

    new-instance v1, Lcom/android/contacts/common/list/ContactEntryListAdapter$1$1;

    invoke-direct {v1, p0, v2, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter$1$1;-><init>(Lcom/android/contacts/common/list/ContactEntryListAdapter$1;Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/content/ClipData;

    const-string v5, "lookupUri"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v5, v5, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_running"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v1, v5, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method
