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

extension Drm {
    /// 启动DRM加密(该接口已下线)
    ///
    /// 开发者调用该接口，启动一次内容文件的DRM加密工作流。
    /// 注意：该接口已下线。
    @inlinable
    public func startEncryption(_ input: StartEncryptionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StartEncryptionResponse > {
        self.client.execute(action: "StartEncryption", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 启动DRM加密(该接口已下线)
    ///
    /// 开发者调用该接口，启动一次内容文件的DRM加密工作流。
    /// 注意：该接口已下线。
    @inlinable
    public func startEncryption(_ input: StartEncryptionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartEncryptionResponse {
        try await self.client.execute(action: "StartEncryption", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StartEncryption请求参数结构体
    public struct StartEncryptionRequest: TCRequestModel {
        /// cos的end point。
        public let cosEndPoint: String
        
        /// cos api密钥id。
        public let cosSecretId: String
        
        /// cos api密钥。
        public let cosSecretKey: String
        
        /// 使用的DRM方案类型，接口取值WIDEVINE,FAIRPLAY
        public let drmType: String
        
        /// 存储在COS上的原始内容信息
        public let sourceObject: DrmSourceObject
        
        /// 加密后的内容存储到COS的对象
        public let outputObjects: [DrmOutputObject]
        
        public init (cosEndPoint: String, cosSecretId: String, cosSecretKey: String, drmType: String, sourceObject: DrmSourceObject, outputObjects: [DrmOutputObject]) {
            self.cosEndPoint = cosEndPoint
            self.cosSecretId = cosSecretId
            self.cosSecretKey = cosSecretKey
            self.drmType = drmType
            self.sourceObject = sourceObject
            self.outputObjects = outputObjects
        }
        
        enum CodingKeys: String, CodingKey {
            case cosEndPoint = "CosEndPoint"
            case cosSecretId = "CosSecretId"
            case cosSecretKey = "CosSecretKey"
            case drmType = "DrmType"
            case sourceObject = "SourceObject"
            case outputObjects = "OutputObjects"
        }
    }
    
    /// StartEncryption返回参数结构体
    public struct StartEncryptionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}