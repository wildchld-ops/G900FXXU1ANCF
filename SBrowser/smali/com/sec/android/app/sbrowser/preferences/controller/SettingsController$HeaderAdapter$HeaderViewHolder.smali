.class Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "SettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field mCheckbox:Landroid/widget/CheckBox;

.field mSummary:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->this$1:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;)V

    return-void
.end method
