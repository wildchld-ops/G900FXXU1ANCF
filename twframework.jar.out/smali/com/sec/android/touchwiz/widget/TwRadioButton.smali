.class public Lcom/sec/android/touchwiz/widget/TwRadioButton;
.super Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;
.source "TwRadioButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x2010001

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->toggle()V

    :cond_0
    return-void
.end method
