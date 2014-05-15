.class Lcom/android/contacts/editor/TextFieldsEditorView$3;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeforeStrImpl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$500(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStrImpl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$400(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFieldChangedImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeforeStrImpl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #setter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$502(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setCurrentStrImpl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #setter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$402(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
