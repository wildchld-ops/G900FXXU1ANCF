.class Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$2;
.super Ljava/lang/Object;
.source "AutofillFormDeleteXlargeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->Initialise()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const v1, 0x7f0a0081

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    return-void
.end method
