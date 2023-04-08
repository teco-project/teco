//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Tsf {
    /// DescribeCreateGatewayApiStatus请求参数结构体
    public struct DescribeCreateGatewayApiStatusRequest: TCRequestModel {
        /// 请求方法
        public let groupId: String?

        /// 微服务ID
        public let microserviceId: String?

        public init(groupId: String? = nil, microserviceId: String? = nil) {
            self.groupId = groupId
            self.microserviceId = microserviceId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case microserviceId = "MicroserviceId"
        }
    }

    /// DescribeCreateGatewayApiStatus返回参数结构体
    public struct DescribeCreateGatewayApiStatusResponse: TCResponseModel {
        /// 是否已完成导入任务
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询一键导入API分组任务的状态
    @inlinable
    public func describeCreateGatewayApiStatus(_ input: DescribeCreateGatewayApiStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCreateGatewayApiStatusResponse> {
        self.client.execute(action: "DescribeCreateGatewayApiStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询一键导入API分组任务的状态
    @inlinable
    public func describeCreateGatewayApiStatus(_ input: DescribeCreateGatewayApiStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCreateGatewayApiStatusResponse {
        try await self.client.execute(action: "DescribeCreateGatewayApiStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询一键导入API分组任务的状态
    @inlinable
    public func describeCreateGatewayApiStatus(groupId: String? = nil, microserviceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCreateGatewayApiStatusResponse> {
        self.describeCreateGatewayApiStatus(.init(groupId: groupId, microserviceId: microserviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询一键导入API分组任务的状态
    @inlinable
    public func describeCreateGatewayApiStatus(groupId: String? = nil, microserviceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCreateGatewayApiStatusResponse {
        try await self.describeCreateGatewayApiStatus(.init(groupId: groupId, microserviceId: microserviceId), region: region, logger: logger, on: eventLoop)
    }
}
