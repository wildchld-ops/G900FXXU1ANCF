.class public Lcom/kikin/content/sbrowser/KikinSelectionHandler$ContentViewThemeDetector;
.super Ljava/lang/Object;
.source "KikinSelectionHandler.java"

# interfaces
.implements Lcom/kikin/theme/ThemeDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/content/sbrowser/KikinSelectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentViewThemeDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kikin/content/sbrowser/KikinSelectionHandler;


# direct methods
.method public constructor <init>(Lcom/kikin/content/sbrowser/KikinSelectionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/kikin/content/sbrowser/KikinSelectionHandler$ContentViewThemeDetector;->this$0:Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarTheme(Landroid/view/View;)Lcom/kikin/theme/ThemeDetector$KikinTheme;
    .locals 1

    sget-object v0, Lcom/kikin/theme/ThemeDetector$KikinTheme;->SBROWSER:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    return-object v0
.end method
