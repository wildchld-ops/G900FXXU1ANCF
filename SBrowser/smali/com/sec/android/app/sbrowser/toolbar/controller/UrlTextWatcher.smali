.class public Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;
.super Ljava/lang/Object;
.source "UrlTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method
