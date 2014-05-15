.class Lcom/android/mms/ui/BubbleTypePicker$5;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BubbleTypePicker;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BubbleTypePicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BubbleTypePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/BubbleTypePicker;->finish()V

    return-void
.end method
