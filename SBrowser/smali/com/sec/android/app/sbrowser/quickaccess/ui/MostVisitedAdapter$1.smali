.class Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter$1;
.super Ljava/lang/Object;
.source "MostVisitedAdapter.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->updateViewInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

.field final synthetic val$mostVisitedTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter$1;->val$mostVisitedTitle:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter$1;->val$mostVisitedTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter$1;->val$mostVisitedTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    return v6

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter$1;->val$mostVisitedTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020282

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
