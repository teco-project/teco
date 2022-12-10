//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cvm {
    /// 修改镜像属性
    ///
    /// 本接口（ModifyImageAttribute）用于修改镜像属性。
    /// * 已分享的镜像无法修改属性。
    @inlinable
    public func modifyImageAttribute(_ input: ModifyImageAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyImageAttributeResponse > {
        self.client.execute(action: "ModifyImageAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改镜像属性
    ///
    /// 本接口（ModifyImageAttribute）用于修改镜像属性。
    /// * 已分享的镜像无法修改属性。
    @inlinable
    public func modifyImageAttribute(_ input: ModifyImageAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyImageAttributeResponse {
        try await self.client.execute(action: "ModifyImageAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyImageAttribute请求参数结构体
    public struct ModifyImageAttributeRequest: TCRequestModel {
        /// 镜像ID，形如`img-gvbnzy6f`。镜像ID可以通过如下方式获取：<br><li>通过[DescribeImages](https://cloud.tencent.com/document/api/213/15715)接口返回的`ImageId`获取。<br><li>通过[镜像控制台](https://console.cloud.tencent.com/cvm/image)获取。
        public let imageId: String
        
        /// 设置新的镜像名称；必须满足下列限制：<br> <li> 不得超过20个字符。<br> <li> 镜像名称不能与已有镜像重复。
        public let imageName: String?
        
        /// 设置新的镜像描述；必须满足下列限制：<br> <li> 不得超过60个字符。
        public let imageDescription: String?
        
        public init (imageId: String, imageName: String?, imageDescription: String?) {
            self.imageId = imageId
            self.imageName = imageName
            self.imageDescription = imageDescription
        }
        
        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
            case imageName = "ImageName"
            case imageDescription = "ImageDescription"
        }
    }
    
    /// ModifyImageAttribute返回参数结构体
    public struct ModifyImageAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}