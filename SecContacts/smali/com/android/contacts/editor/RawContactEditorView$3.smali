.class Lcom/android/contacts/editor/RawContactEditorView$3;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactEditorView;->postWhenWindowFocused(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactEditorView;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$3;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView$3;->val$r:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$3;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$3;->val$r:Ljava/lang/Runnable;

    #calls: Lcom/android/contacts/editor/RawContactEditorView;->runWhenWindowFocused(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->access$300(Lcom/android/contacts/editor/RawContactEditorView;Ljava/lang/Runnable;)V

    return-void
.end method
