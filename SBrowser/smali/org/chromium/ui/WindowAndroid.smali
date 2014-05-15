.class public Lorg/chromium/ui/WindowAndroid;
.super Ljava/lang/Object;
.source "WindowAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/WindowAndroid$IntentCallback;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "ui"
.end annotation


# static fields
.field private static final REQUEST_CODE_PREFIX:I = 0x3e8

.field private static final REQUEST_CODE_RANGE_SIZE:I = 0x64

.field static final WINDOW_CALLBACK_ERRORS:Ljava/lang/String; = "window_callback_errors"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mIntentErrors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeWindowAndroid:I

.field private mNextRequestCode:I

.field protected mOutstandingIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/ui/WindowAndroid$IntentCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/chromium/ui/WindowAndroid;->mNativeWindowAndroid:I

    iput v0, p0, Lorg/chromium/ui/WindowAndroid;->mNextRequestCode:I

    iput-object p1, p0, Lorg/chromium/ui/WindowAndroid;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeInit()I
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget v0, p0, Lorg/chromium/ui/WindowAndroid;->mNativeWindowAndroid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/ui/WindowAndroid;->mNativeWindowAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/ui/WindowAndroid;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/ui/WindowAndroid;->mNativeWindowAndroid:I

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/WindowAndroid;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getNativePointer()I
    .locals 1

    iget v0, p0, Lorg/chromium/ui/WindowAndroid;->mNativeWindowAndroid:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/WindowAndroid;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/chromium/ui/WindowAndroid;->mNativeWindowAndroid:I

    :cond_0
    iget v0, p0, Lorg/chromium/ui/WindowAndroid;->mNativeWindowAndroid:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/chromium/ui/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/WindowAndroid$IntentCallback;

    iget-object v3, p0, Lorg/chromium/ui/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v3, p0, Lorg/chromium/ui/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/chromium/ui/WindowAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0, p0, p2, v3, p3}, Lorg/chromium/ui/WindowAndroid$IntentCallback;->onIntentCompleted(Lorg/chromium/ui/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V

    :goto_0
    return v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lorg/chromium/ui/WindowAndroid;->showCallbackNonExistentError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "window_callback_errors"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lorg/chromium/ui/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "window_callback_errors"

    iget-object v1, p0, Lorg/chromium/ui/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/WindowAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected showCallbackNonExistentError(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/WindowAndroid;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/WindowAndroid;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public showIntent(Landroid/content/Intent;Lorg/chromium/ui/WindowAndroid$IntentCallback;Ljava/lang/String;)Z
    .locals 4

    iget v2, p0, Lorg/chromium/ui/WindowAndroid;->mNextRequestCode:I

    add-int/lit16 v1, v2, 0x3e8

    iget v2, p0, Lorg/chromium/ui/WindowAndroid;->mNextRequestCode:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x64

    iput v2, p0, Lorg/chromium/ui/WindowAndroid;->mNextRequestCode:I

    :try_start_0
    iget-object v2, p0, Lorg/chromium/ui/WindowAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/chromium/ui/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p3, :cond_0

    iget-object v2, p0, Lorg/chromium/ui/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method
