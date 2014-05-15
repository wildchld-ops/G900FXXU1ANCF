.class Lcom/android/contacts/editor/TextFieldsEditorView$2$1;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView$2;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/TextFieldsEditorView$2;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;->this$1:Lcom/android/contacts/editor/TextFieldsEditorView$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtfullyOccupiedCaseLen()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;->this$1:Lcom/android/contacts/editor/TextFieldsEditorView$2;

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$200(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v0

    return v0
.end method

.method public getTotalTextByte()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;->this$1:Lcom/android/contacts/editor/TextFieldsEditorView$2;

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->mTotalTextByte:I

    return v0
.end method

.method public setExtfullyOccupiedCaseLen(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;->this$1:Lcom/android/contacts/editor/TextFieldsEditorView$2;

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #setter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$202(Lcom/android/contacts/editor/TextFieldsEditorView;I)I

    return-void
.end method

.method public setTotalTextByte(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;->this$1:Lcom/android/contacts/editor/TextFieldsEditorView$2;

    iput p1, v0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->mTotalTextByte:I

    return-void
.end method
