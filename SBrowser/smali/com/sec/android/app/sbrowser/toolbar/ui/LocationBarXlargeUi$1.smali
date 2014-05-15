.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi$1;
.super Ljava/lang/Object;
.source "LocationBarXlargeUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->mTb_toolbar_bookmark:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;->access$000(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarXlargeUi;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
