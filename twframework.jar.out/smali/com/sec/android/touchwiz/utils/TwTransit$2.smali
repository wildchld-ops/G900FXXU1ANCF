.class Lcom/sec/android/touchwiz/utils/TwTransit$2;
.super Ljava/lang/Object;
.source "TwTransit.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;->makeLayoutAndWindow()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

.field final synthetic val$windowLayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwTransit;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$2;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iput-object p2, p0, Lcom/sec/android/touchwiz/utils/TwTransit$2;->val$windowLayout:Landroid/widget/FrameLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$2;->val$windowLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v0, 0x1

    return v0
.end method
