.class public final Lcom/android/dialer/PhoneCallDetailsViews;
.super Ljava/lang/Object;
.source "PhoneCallDetailsViews.java"


# instance fields
.field public final callIndi:Landroid/widget/ImageView;

.field public final groupCount:Landroid/widget/TextView;

.field public final logType:Landroid/widget/ImageView;

.field public final nameView:Landroid/widget/TextView;

.field public final numberView:Landroid/widget/TextView;

.field public final timeView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/dialer/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/dialer/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/dialer/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/android/dialer/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/dialer/PhoneCallDetailsViews;
    .locals 7

    new-instance v0, Lcom/android/dialer/PhoneCallDetailsViews;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/android/dialer/PhoneCallDetailsViews;
    .locals 7

    new-instance v0, Lcom/android/dialer/PhoneCallDetailsViews;

    const v1, 0x7f0800c7

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0800c6

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0800cb

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0800c9

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0800c3

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0800c4

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0
.end method
