.class Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback$1;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
