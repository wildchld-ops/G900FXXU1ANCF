.class public Lcom/sec/android/app/sbrowser/history/ui/SpinnerTrigger;
.super Landroid/widget/Spinner;
.source "SpinnerTrigger.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private final OLD_SELECTION:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    const-string v0, "mOldSelectedPosition"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/SpinnerTrigger;->OLD_SELECTION:Ljava/lang/String;

    const-class v0, Lcom/sec/android/app/sbrowser/history/ui/SpinnerTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/SpinnerTrigger;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "mOldSelectedPosition"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/SpinnerTrigger;->OLD_SELECTION:Ljava/lang/String;

    const-class v0, Lcom/sec/android/app/sbrowser/history/ui/SpinnerTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/SpinnerTrigger;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private resetOldSelection()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mOldSelectedPosition"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, -0x1

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/SpinnerTrigger;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception Raised during reflection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public setSelection(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/ui/SpinnerTrigger;->resetOldSelection()V

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/ui/SpinnerTrigger;->resetOldSelection()V

    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method
