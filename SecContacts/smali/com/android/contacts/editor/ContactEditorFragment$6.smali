.class Lcom/android/contacts/editor/ContactEditorFragment$6;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field final synthetic val$adapter:Lcom/android/contacts/common/util/AccountsListAdapter;

.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field final synthetic val$currentState:Lcom/android/contacts/model/RawContactDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/view/View;Lcom/android/contacts/common/util/AccountsListAdapter;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/AccountTypeManager;Lcom/android/contacts/model/RawContactDelta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$anchorView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$adapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    iput-object p4, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object p5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iput-object p6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$currentState:Lcom/android/contacts/model/RawContactDelta;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$anchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$anchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$adapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$6$1;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment$6$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$6;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
