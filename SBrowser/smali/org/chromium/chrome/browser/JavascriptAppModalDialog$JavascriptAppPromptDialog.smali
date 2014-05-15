.class Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;
.super Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppConfirmDialog;
.source "JavascriptAppModalDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavascriptAppPromptDialog"
.end annotation


# instance fields
.field private mDefaultPromptText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppConfirmDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p4, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public prepare(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppConfirmDialog;->prepare(Landroid/view/ViewGroup;)V

    const v1, 0x7f0a0160

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;->mDefaultPromptText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_0
    return-void
.end method
