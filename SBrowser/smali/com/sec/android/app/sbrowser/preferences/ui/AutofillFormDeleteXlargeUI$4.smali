.class Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$4;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$4;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$4;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->finish()V

    return-void
.end method
