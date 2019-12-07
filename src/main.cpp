#include <stdio.h>
#include <fbxsdk.h>

int main()
{
    // Create manager
    FbxManager *lSdkManager = FbxManager::Create();

    // Destroy manager
    lSdkManager->Destroy();

    // Show
    printf("Success!\n");
}
