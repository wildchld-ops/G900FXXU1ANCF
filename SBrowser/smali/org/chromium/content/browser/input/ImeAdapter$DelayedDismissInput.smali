.class Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;
.super Ljava/lang/Object;
.source "ImeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ImeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedDismissInput"
.end annotation


# instance fields
.field private final mNativeImeAdapter:I

.field final synthetic this$0:Lorg/chromium/content/browser/input/ImeAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ImeAdapter;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;->mNativeImeAdapter:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;->mNativeImeAdapter:I

    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNone:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(IIII)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$DelayedDismissInput;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->dismissInput(Z)V

    return-void
.end method
