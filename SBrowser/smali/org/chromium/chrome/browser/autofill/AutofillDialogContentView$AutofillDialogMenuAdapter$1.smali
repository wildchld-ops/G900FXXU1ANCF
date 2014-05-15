.class Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;
.super Ljava/lang/Object;
.source "AutofillDialogContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->initView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;->val$parent:Landroid/view/ViewGroup;

    iput p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x4

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    sget-boolean v1, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mOnItemEditButtonClickedListener:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;
    invoke-static {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->access$200(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;)Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mOnItemEditButtonClickedListener:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;
    invoke-static {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->access$200(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;)Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mOnItemEditButtonClickedListener:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;
    invoke-static {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->access$200(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;)Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;->this$0:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    #getter for: Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->mSection:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->access$300(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;)I

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter$1;->val$position:I

    invoke-interface {v1, v2, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;->onItemEditButtonClicked(II)V

    :cond_1
    return-void
.end method
