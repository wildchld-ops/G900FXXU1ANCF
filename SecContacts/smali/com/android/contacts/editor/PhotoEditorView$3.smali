.class Lcom/android/contacts/editor/PhotoEditorView$3;
.super Ljava/lang/Object;
.source "PhotoEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PhotoEditorView;

.field final synthetic val$state:Lcom/android/contacts/model/RawContactDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PhotoEditorView;Lcom/android/contacts/model/RawContactDelta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView$3;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoEditorView$3;->val$state:Lcom/android/contacts/model/RawContactDelta;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$3;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    const/4 v1, 0x1

    #setter for: Lcom/android/contacts/editor/PhotoEditorView;->mAsyncLoadRequested:Z
    invoke-static {v0, v1}, Lcom/android/contacts/editor/PhotoEditorView;->access$302(Lcom/android/contacts/editor/PhotoEditorView;Z)Z

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$3;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView$3;->val$state:Lcom/android/contacts/model/RawContactDelta;

    #calls: Lcom/android/contacts/editor/PhotoEditorView;->getLargePhoto(Lcom/android/contacts/model/RawContactDelta;)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/PhotoEditorView;->access$400(Lcom/android/contacts/editor/PhotoEditorView;Lcom/android/contacts/model/RawContactDelta;)V

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$3;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    #getter for: Lcom/android/contacts/editor/PhotoEditorView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/editor/PhotoEditorView;->access$500(Lcom/android/contacts/editor/PhotoEditorView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x457

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
