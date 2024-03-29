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

import Logging
import NIOCore
import TecoCore

extension Apigateway {
    /// DescribeExclusiveInstanceDetail请求参数结构体
    public struct DescribeExclusiveInstanceDetailRequest: TCRequest {
        /// 独享实例唯一id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeExclusiveInstanceDetail返回参数结构体
    public struct DescribeExclusiveInstanceDetailResponse: TCResponse {
        /// 独享实例详情
        public let result: InstanceDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询独享实例详情
    ///
    /// 本接口（DescribeExclusiveInstanceDetail）用于查询独享实例详情信息。
    @inlinable
    public func describeExclusiveInstanceDetail(_ input: DescribeExclusiveInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExclusiveInstanceDetailResponse> {
        self.client.execute(action: "DescribeExclusiveInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询独享实例详情
    ///
    /// 本接口（DescribeExclusiveInstanceDetail）用于查询独享实例详情信息。
    @inlinable
    public func describeExclusiveInstanceDetail(_ input: DescribeExclusiveInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExclusiveInstanceDetailResponse {
        try await self.client.execute(action: "DescribeExclusiveInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询独享实例详情
    ///
    /// 本接口（DescribeExclusiveInstanceDetail）用于查询独享实例详情信息。
    @inlinable
    public func describeExclusiveInstanceDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExclusiveInstanceDetailResponse> {
        self.describeExclusiveInstanceDetail(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询独享实例详情
    ///
    /// 本接口（DescribeExclusiveInstanceDetail）用于查询独享实例详情信息。
    @inlinable
    public func describeExclusiveInstanceDetail(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExclusiveInstanceDetailResponse {
        try await self.describeExclusiveInstanceDetail(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
