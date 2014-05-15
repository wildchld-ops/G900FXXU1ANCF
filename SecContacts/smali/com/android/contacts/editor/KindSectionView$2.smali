.class Lcom/android/contacts/editor/KindSectionView$2;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/KindSectionView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/KindSectionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$2;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView$2;->this$0:Lcom/android/contacts/editor/KindSectionView;

    #getter for: Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/contacts/editor/KindSectionView;->access$000(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView$2;->this$0:Lcom/android/contacts/editor/KindSectionView;

    #getter for: Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/contacts/editor/KindSectionView;->access$000(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView$2;->this$0:Lcom/android/contacts/editor/KindSectionView;

    #getter for: Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/contacts/editor/KindSectionView;->access$000(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/editor/TextFieldsEditorView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView$2;->this$0:Lcom/android/contacts/editor/KindSectionView;

    #getter for: Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/contacts/editor/KindSectionView;->access$000(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/TextFieldsEditorView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->getFirstFocusableViewId()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->getFirstFocusableViewId()I

    move-result v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusDownId(I)V

    :cond_1
    return-void
.end method
