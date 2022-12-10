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

extension Iotcloud {
    /// 获取用户资源信息
    ///
    /// 本接口（GetUserResourceInfo）用于查询用户资源使用信息。
    @inlinable
    public func getUserResourceInfo(_ input: GetUserResourceInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetUserResourceInfoResponse > {
        self.client.execute(action: "GetUserResourceInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取用户资源信息
    ///
    /// 本接口（GetUserResourceInfo）用于查询用户资源使用信息。
    @inlinable
    public func getUserResourceInfo(_ input: GetUserResourceInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUserResourceInfoResponse {
        try await self.client.execute(action: "GetUserResourceInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetUserResourceInfo请求参数结构体
    public struct GetUserResourceInfoRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// GetUserResourceInfo返回参数结构体
    public struct GetUserResourceInfoResponse: TCResponseModel {
        /// 已使用的资源字节数
        public let usedSize: UInt64
        
        /// 可以使用资源的总大小
        public let limit: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case usedSize = "UsedSize"
            case limit = "Limit"
            case requestId = "RequestId"
        }
    }
}
