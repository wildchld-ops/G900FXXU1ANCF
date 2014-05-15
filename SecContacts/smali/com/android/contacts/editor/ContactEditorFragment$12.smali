.class Lcom/android/contacts/editor/ContactEditorFragment$12;
.super Landroid/database/ContentObserver;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationEditorView:Lcom/samsung/contacts/editor/MoreEditorView;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3700(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/samsung/contacts/editor/MoreEditorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationEditorView:Lcom/samsung/contacts/editor/MoreEditorView;
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3700(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/samsung/contacts/editor/MoreEditorView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$12;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mVibrationEditorView:Lcom/samsung/contacts/editor/MoreEditorView;
    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$3700(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/samsung/contacts/editor/MoreEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/editor/MoreEditorView;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/editor/MoreEditorView;->setData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
