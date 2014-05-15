.class public Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;
.super Ljava/lang/Object;
.source "AutofillDialogMenuItem.java"


# instance fields
.field public final mButtonIcon:Landroid/graphics/Bitmap;

.field public final mButtonLabelResourceId:I

.field public final mIcon:Landroid/graphics/Bitmap;

.field public final mIndex:I

.field public final mLine1:Ljava/lang/String;

.field public final mLine2:Ljava/lang/String;

.field public final mShowButton:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const-string v3, ""

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mIndex:I

    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mLine1:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mLine2:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mIcon:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mShowButton:Z

    iput p6, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mButtonLabelResourceId:I

    iput-object p7, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;->mButtonIcon:Landroid/graphics/Bitmap;

    return-void
.end method
