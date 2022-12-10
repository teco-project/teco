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

extension Tsf {
    /// 查询分组管理日志配置列表
    @inlinable
    public func describeGroupBusinessLogConfigs(_ input: DescribeGroupBusinessLogConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupBusinessLogConfigsResponse > {
        self.client.execute(action: "DescribeGroupBusinessLogConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询分组管理日志配置列表
    @inlinable
    public func describeGroupBusinessLogConfigs(_ input: DescribeGroupBusinessLogConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupBusinessLogConfigsResponse {
        try await self.client.execute(action: "DescribeGroupBusinessLogConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeGroupBusinessLogConfigs请求参数结构体
    public struct DescribeGroupBusinessLogConfigsRequest: TCRequestModel {
        /// 分组ID
        public let groupId: String
        
        public init (groupId: String) {
            self.groupId = groupId
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }
    
    /// DescribeGroupBusinessLogConfigs返回参数结构体
    public struct DescribeGroupBusinessLogConfigsResponse: TCResponseModel {
        /// 业务日志配置列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageBusinessLogConfig
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
