.class public Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;
.super Ljava/lang/Object;
.source "SBrowserAppModel.java"


# static fields
.field private static _appModel:Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;->_appModel:Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedModel()Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;->_appModel:Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;->_appModel:Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;->_appModel:Lcom/sec/android/app/sbrowser/model/SBrowserAppModel;

    return-object v0
.end method


# virtual methods
.method public saveValueForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public valueForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
