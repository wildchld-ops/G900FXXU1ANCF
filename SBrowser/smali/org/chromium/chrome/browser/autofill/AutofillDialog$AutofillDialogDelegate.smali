.class public interface abstract Lorg/chromium/chrome/browser/autofill/AutofillDialog$AutofillDialogDelegate;
.super Ljava/lang/Object;
.source "AutofillDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/autofill/AutofillDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutofillDialogDelegate"
.end annotation


# virtual methods
.method public abstract accountSelected(I)V
.end method

.method public abstract dialogCancel()V
.end method

.method public abstract dialogDismissed()V
.end method

.method public abstract dialogSubmit()V
.end method

.method public abstract editedOrActivatedField(ILorg/chromium/ui/ViewAndroidDelegate;Ljava/lang/String;Z)V
.end method

.method public abstract editingCancel(I)V
.end method

.method public abstract editingComplete(I)Z
.end method

.method public abstract editingStart(I)V
.end method

.method public abstract getDialogButtonText(I)Ljava/lang/String;
.end method

.method public abstract getIconForField(ILjava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract getLabelForSection(I)Ljava/lang/String;
.end method

.method public abstract getLegalDocumentsText()Ljava/lang/String;
.end method

.method public abstract getListForField(I)[Ljava/lang/String;
.end method

.method public abstract getPlaceholderForField(II)Ljava/lang/String;
.end method

.method public abstract getProgressBarText()Ljava/lang/String;
.end method

.method public abstract getSaveLocallyText()Ljava/lang/String;
.end method

.method public abstract isDialogButtonEnabled(I)Z
.end method

.method public abstract isTheAddItem(II)Z
.end method

.method public abstract itemSelected(II)V
.end method

.method public abstract notificationCheckboxStateChanged(IZ)V
.end method

.method public abstract validateField(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract validateSection(I)V
.end method
