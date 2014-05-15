.class Lcom/android/contacts/editor/PhotoEditorView$1;
.super Landroid/os/Handler;
.source "PhotoEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PhotoEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PhotoEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PhotoEditorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "PhotoEditorView"

    const-string v1, "Nothing selected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    #getter for: Lcom/android/contacts/editor/PhotoEditorView;->mLargeBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/contacts/editor/PhotoEditorView;->access$000(Lcom/android/contacts/editor/PhotoEditorView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView$1;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    #calls: Lcom/android/contacts/editor/PhotoEditorView;->updateLargePhoto()V
    invoke-static {v0}, Lcom/android/contacts/editor/PhotoEditorView;->access$100(Lcom/android/contacts/editor/PhotoEditorView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x457
        :pswitch_0
    .end packed-switch
.end method
