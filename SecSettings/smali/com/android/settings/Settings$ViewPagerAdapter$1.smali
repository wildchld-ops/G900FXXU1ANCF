.class Lcom/android/settings/Settings$ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Settings$ViewPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/Settings$ViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings$ViewPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/Settings$ViewPagerAdapter$1;->this$1:Lcom/android/settings/Settings$ViewPagerAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/Settings$ViewPagerAdapter$1;->this$1:Lcom/android/settings/Settings$ViewPagerAdapter;

    iget-object v0, v0, Lcom/android/settings/Settings$ViewPagerAdapter;->this$0:Lcom/android/settings/Settings;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/Settings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
