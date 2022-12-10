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

extension Cam {
    /// 更新访问密钥
    ///
    /// 为CAM用户更新访问密钥
    @inlinable
    public func updateAccessKey(_ input: UpdateAccessKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateAccessKeyResponse > {
        self.client.execute(action: "UpdateAccessKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新访问密钥
    ///
    /// 为CAM用户更新访问密钥
    @inlinable
    public func updateAccessKey(_ input: UpdateAccessKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAccessKeyResponse {
        try await self.client.execute(action: "UpdateAccessKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateAccessKey请求参数结构体
    public struct UpdateAccessKeyRequest: TCRequestModel {
        /// 指定需要更新的AccessKeyId
        public let accessKeyId: String
        
        /// 密钥状态，激活（Active）或未激活（Inactive）
        public let status: String
        
        /// 指定用户Uin，不填默认为当前用户更新访问密钥
        public let targetUin: UInt64?
        
        public init (accessKeyId: String, status: String, targetUin: UInt64?) {
            self.accessKeyId = accessKeyId
            self.status = status
            self.targetUin = targetUin
        }
        
        enum CodingKeys: String, CodingKey {
            case accessKeyId = "AccessKeyId"
            case status = "Status"
            case targetUin = "TargetUin"
        }
    }
    
    /// UpdateAccessKey返回参数结构体
    public struct UpdateAccessKeyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
