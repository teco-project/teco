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

extension Redis {
    /// DescribeInstanceMonitorSIP请求参数结构体
    public struct DescribeInstanceMonitorSIPRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeInstanceMonitorSIP返回参数结构体
    public struct DescribeInstanceMonitorSIPResponse: TCResponseModel {
        /// 访问来源信息
        public let data: [SourceInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 查询实例访问来源信息
    @inlinable
    public func describeInstanceMonitorSIP(_ input: DescribeInstanceMonitorSIPRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceMonitorSIPResponse > {
        self.client.execute(action: "DescribeInstanceMonitorSIP", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例访问来源信息
    @inlinable
    public func describeInstanceMonitorSIP(_ input: DescribeInstanceMonitorSIPRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceMonitorSIPResponse {
        try await self.client.execute(action: "DescribeInstanceMonitorSIP", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
