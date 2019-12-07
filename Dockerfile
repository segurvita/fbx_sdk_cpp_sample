FROM gcc:4.9.4

WORKDIR /fbx-sdk/

# Install FBX SDK
RUN curl -L \
    https://www.autodesk.com/content/dam/autodesk/www/adn/fbx/20195/fbx20195_fbxsdk_linux.tar.gz \
    -o /tmp/fbx20195_fbxsdk_linux.tar.gz && \
    mkdir /fbx-sdk/install && \
    tar -zxvf /tmp/fbx20195_fbxsdk_linux.tar.gz -C /fbx-sdk && \
    echo "yes\nn" | /fbx-sdk/fbx20195_fbxsdk_linux /fbx-sdk/install && \
    rm /tmp/fbx20195_fbxsdk_linux.tar.gz
