//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotvideo {
    /// CreateCOSCredentials请求参数结构体
    public struct CreateCOSCredentialsRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        public init (productId: String, deviceName: String) {
            self.productId = productId
            self.deviceName = deviceName
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }
    }
    
    /// CreateCOSCredentials返回参数结构体
    public struct CreateCOSCredentialsResponse: TCResponseModel {
        /// COS存储桶名称
        public let storageBucket: String
        
        /// COS存储桶区域
        public let storageRegion: String
        
        /// COS存储桶路径
        public let storagePath: String
        
        /// COS上传用的SecretID
        public let secretID: String
        
        /// COS上传用的SecretKey
        public let secretKey: String
        
        /// COS上传用的Token
        public let token: String
        
        /// 密钥信息过期时间
        public let expiredTime: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case storageBucket = "StorageBucket"
            case storageRegion = "StorageRegion"
            case storagePath = "StoragePath"
            case secretID = "SecretID"
            case secretKey = "SecretKey"
            case token = "Token"
            case expiredTime = "ExpiredTime"
            case requestId = "RequestId"
        }
    }
    
    /// 创建COS上传密钥
    @inlinable
    public func createCOSCredentials(_ input: CreateCOSCredentialsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCOSCredentialsResponse > {
        self.client.execute(action: "CreateCOSCredentials", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建COS上传密钥
    @inlinable
    public func createCOSCredentials(_ input: CreateCOSCredentialsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCOSCredentialsResponse {
        try await self.client.execute(action: "CreateCOSCredentials", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
