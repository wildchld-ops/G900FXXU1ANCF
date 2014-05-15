.class public Lcom/samsung/dialer/impl/DialpadHoverImpl;
.super Ljava/lang/Object;
.source "DialpadHoverImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final KEYPAD_ID:[I

.field private mContext:Landroid/content/Context;

.field private mDigitsView:Landroid/view/View;

.field private mHoverListener:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

.field private mKeypadView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/impl/DialpadHoverImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->KEYPAD_ID:[I

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mKeypadView:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mDigitsView:Landroid/view/View;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x89t 0x1t 0x8t 0x7ft
        0x8at 0x1t 0x8t 0x7ft
        0x8bt 0x1t 0x8t 0x7ft
        0x8ct 0x1t 0x8t 0x7ft
        0x8dt 0x1t 0x8t 0x7ft
        0x8et 0x1t 0x8t 0x7ft
        0x8ft 0x1t 0x8t 0x7ft
        0x90t 0x1t 0x8t 0x7ft
        0x91t 0x1t 0x8t 0x7ft
        0x92t 0x1t 0x8t 0x7ft
        0x93t 0x1t 0x8t 0x7ft
        0x94t 0x1t 0x8t 0x7ft
    .end array-data
.end method


# virtual methods
.method public cleanupKeypadHoverListener()V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/samsung/dialer/impl/DialpadHoverImpl;->TAG:Ljava/lang/String;

    const-string v3, "cleanupKeypadHoverListener.."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mKeypadView:Landroid/view/View;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mKeypadView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->KEYPAD_ID:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mHoverListener:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mHoverListener:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    invoke-virtual {v2}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->cleanupListener()V

    iput-object v4, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mHoverListener:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    :cond_2
    return-void
.end method

.method public setupKeypadHoverListener()V
    .locals 5

    sget-object v2, Lcom/samsung/dialer/impl/DialpadHoverImpl;->TAG:Ljava/lang/String;

    const-string v3, "setupKeypadHoverListener.."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mKeypadView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v2, Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    iget-object v3, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mDigitsView:Landroid/view/View;

    invoke-direct {v2, v3, v4}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mHoverListener:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xc

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mKeypadView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->KEYPAD_ID:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadHoverImpl;->mHoverListener:Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
