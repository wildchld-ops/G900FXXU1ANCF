.class Lcom/sec/android/app/sbrowser/preferences/DataCompressionView$1;
.super Ljava/lang/Object;
.source "DataCompressionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionView;->resetTurboData()V

    return-void
.end method
