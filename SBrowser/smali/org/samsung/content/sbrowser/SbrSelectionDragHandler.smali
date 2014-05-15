.class public Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;
.super Ljava/lang/Object;
.source "SbrSelectionDragHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/content/sbrowser/SbrSelectionDragHandler$MyDragShadowBuilder;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SbrSelectionDragHandler"

.field public static final SELECTION_DRAG_LABEL:Ljava/lang/String; = "selection-drag-label"

.field private static final TYPE_HTML:I = 0x2

.field private static final TYPE_IMAGE:I = 0x3

.field private static final TYPE_TEXT:I = 0x1

.field private static isDragSelection:Z

.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static mInstance:Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;

.field public static mOnDragListener:Landroid/view/View$OnDragListener;

.field private static mSelectedMarkup:Ljava/lang/String;

.field private static mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mType:I

    const/4 v0, 0x0

    sput-boolean v0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->isDragSelection:Z

    new-instance v0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler$1;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler$1;-><init>()V

    sput-object v0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mOnDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    sput-object p0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->isDragSelection:Z

    return p0
.end method

.method public static getInstance()Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mInstance:Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;-><init>()V

    sput-object v0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mInstance:Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;

    :cond_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mInstance:Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;

    return-object v0
.end method

.method public static isDragSelection()Z
    .locals 1

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->isDragSelection:Z

    return v0
.end method

.method static startDragSelection(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "SbrSelectionDragHandler"

    const-string v2, "startDragSelection: Called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x3

    sput v1, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mType:I

    new-instance v1, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler$MyDragShadowBuilder;

    invoke-direct {v1, p0}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/chromium/content/browser/ContentView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SbrSelectionDragHandler"

    const-string v2, "startDragSelection: starDrag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->isDragSelection:Z

    sget-object v1, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ContentView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "SbrSelectionDragHandler"

    const-string v2, "startDragSelection: starDrag Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->isDragSelection:Z

    goto :goto_0
.end method


# virtual methods
.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    sput-object p1, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setMarkup(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mSelectedMarkup:Ljava/lang/String;

    return-void
.end method

.method public startDragSelection(Lorg/chromium/content/browser/ContentView;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "SbrSelectionDragHandler"

    const-string v3, "startDragSelection: Called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Lorg/chromium/content/browser/ContentView;->performHapticFeedback(I)Z

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getHtmlDragAndDropEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "selection-drag-label"

    sget-object v3, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mSelectedMarkup:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v1

    :goto_0
    sput v5, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mType:I

    new-instance v2, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler$MyDragShadowBuilder;

    invoke-direct {v2, p1}, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/chromium/content/browser/ContentView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SbrSelectionDragHandler"

    const-string v3, "startDragSelection: starDrag"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->isDragSelection:Z

    sget-object v2, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {p1, v2}, Lorg/chromium/content/browser/ContentView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "selection-drag-label"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "SbrSelectionDragHandler"

    const-string v3, "startDragSelection: starDrag Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lorg/samsung/content/sbrowser/SbrSelectionDragHandler;->isDragSelection:Z

    goto :goto_1
.end method
