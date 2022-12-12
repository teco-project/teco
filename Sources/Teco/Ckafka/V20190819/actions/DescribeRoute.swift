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

extension Ckafka {
    /// DescribeRoute请求参数结构体
    public struct DescribeRouteRequest: TCRequestModel {
        /// 实例唯一id
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeRoute返回参数结构体
    public struct DescribeRouteResponse: TCResponseModel {
        /// 返回的路由信息结果集
        public let result: RouteResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 查看路由信息
    @inlinable
    public func describeRoute(_ input: DescribeRouteRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRouteResponse > {
        self.client.execute(action: "DescribeRoute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看路由信息
    @inlinable
    public func describeRoute(_ input: DescribeRouteRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteResponse {
        try await self.client.execute(action: "DescribeRoute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
