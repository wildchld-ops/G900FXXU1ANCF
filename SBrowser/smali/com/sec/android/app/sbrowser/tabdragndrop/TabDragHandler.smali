.class public Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragHandler;
.super Ljava/lang/Object;
.source "TabDragHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragHandler$TabDragShadowBuilder;
    }
.end annotation


# static fields
.field public static final TAB_DRAG_LABEL:Ljava/lang/String; = "sbr_tab_drag_n_drop"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startTabDrag(Landroid/content/Context;IZLjava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 4

    new-instance v1, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    invoke-direct {v1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;-><init>(IZLjava/lang/String;)V

    if-eqz p1, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->setMultiInstanceTabDragAndDropData(Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;)V

    :cond_0
    const-string v2, "sbr_tab_drag_n_drop"

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragHandler$TabDragShadowBuilder;

    invoke-direct {v2, p5, p6}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragHandler$TabDragShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p5, v0, v2, p5, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method
