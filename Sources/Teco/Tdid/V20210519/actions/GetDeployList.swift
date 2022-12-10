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

extension Tdid {
    /// 合约部署列表
    @inlinable
    public func getDeployList(_ input: GetDeployListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetDeployListResponse > {
        self.client.execute(action: "GetDeployList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 合约部署列表
    @inlinable
    public func getDeployList(_ input: GetDeployListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeployListResponse {
        try await self.client.execute(action: "GetDeployList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetDeployList请求参数结构体
    public struct GetDeployListRequest: TCRequestModel {
        /// 网络ID
        public let clusterId: String
        
        /// 群组ID
        public let groupId: UInt64
        
        /// 起始位置
        public let displayStart: UInt64
        
        /// 长度
        public let displayLength: UInt64
        
        public init (clusterId: String, groupId: UInt64, displayStart: UInt64, displayLength: UInt64) {
            self.clusterId = clusterId
            self.groupId = groupId
            self.displayStart = displayStart
            self.displayLength = displayLength
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case displayStart = "DisplayStart"
            case displayLength = "DisplayLength"
        }
    }
    
    /// GetDeployList返回参数结构体
    public struct GetDeployListResponse: TCResponseModel {
        /// 合约总数
        public let allCount: UInt64
        
        /// 合约部署列表
        public let result: [Contract]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case allCount = "AllCount"
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
