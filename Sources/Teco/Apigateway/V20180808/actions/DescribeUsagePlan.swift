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
    /// DescribeUsagePlan请求参数结构体
    public struct DescribeUsagePlanRequest: TCRequestModel {
        /// 待查询的使用计划唯一 ID。
        public let usagePlanId: String

        public init(usagePlanId: String) {
            self.usagePlanId = usagePlanId
        }

        enum CodingKeys: String, CodingKey {
            case usagePlanId = "UsagePlanId"
        }
    }

    /// DescribeUsagePlan返回参数结构体
    public struct DescribeUsagePlanResponse: TCResponseModel {
        /// 使用计划详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: UsagePlanInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询使用计划详情
    ///
    /// 本接口（DescribeUsagePlan）用于查询一个使用计划的详细信息，包括名称、QPS、创建时间绑定的环境等。
    @inlinable
    public func describeUsagePlan(_ input: DescribeUsagePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsagePlanResponse> {
        self.client.execute(action: "DescribeUsagePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询使用计划详情
    ///
    /// 本接口（DescribeUsagePlan）用于查询一个使用计划的详细信息，包括名称、QPS、创建时间绑定的环境等。
    @inlinable
    public func describeUsagePlan(_ input: DescribeUsagePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsagePlanResponse {
        try await self.client.execute(action: "DescribeUsagePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询使用计划详情
    ///
    /// 本接口（DescribeUsagePlan）用于查询一个使用计划的详细信息，包括名称、QPS、创建时间绑定的环境等。
    @inlinable
    public func describeUsagePlan(usagePlanId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsagePlanResponse> {
        self.describeUsagePlan(.init(usagePlanId: usagePlanId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询使用计划详情
    ///
    /// 本接口（DescribeUsagePlan）用于查询一个使用计划的详细信息，包括名称、QPS、创建时间绑定的环境等。
    @inlinable
    public func describeUsagePlan(usagePlanId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsagePlanResponse {
        try await self.describeUsagePlan(.init(usagePlanId: usagePlanId), region: region, logger: logger, on: eventLoop)
    }
}
