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

extension Tcss {
    /// DescribeEscapeEventTypeSummary请求参数结构体
    public struct DescribeEscapeEventTypeSummaryRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeEscapeEventTypeSummary返回参数结构体
    public struct DescribeEscapeEventTypeSummaryResponse: TCResponseModel {
        /// 容器逃逸事件数
        public let containerEscapeEventCount: Int64

        /// 程序提权事件数
        public let processPrivilegeEventCount: Int64

        /// 风险容器事件数
        public let riskContainerEventCount: Int64

        /// 逃逸事件待处理数
        public let pendingEscapeEventCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case containerEscapeEventCount = "ContainerEscapeEventCount"
            case processPrivilegeEventCount = "ProcessPrivilegeEventCount"
            case riskContainerEventCount = "RiskContainerEventCount"
            case pendingEscapeEventCount = "PendingEscapeEventCount"
            case requestId = "RequestId"
        }
    }

    /// 统计容器逃逸各事件类型和待处理事件数
    @inlinable
    public func describeEscapeEventTypeSummary(_ input: DescribeEscapeEventTypeSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEscapeEventTypeSummaryResponse> {
        self.client.execute(action: "DescribeEscapeEventTypeSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 统计容器逃逸各事件类型和待处理事件数
    @inlinable
    public func describeEscapeEventTypeSummary(_ input: DescribeEscapeEventTypeSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEscapeEventTypeSummaryResponse {
        try await self.client.execute(action: "DescribeEscapeEventTypeSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 统计容器逃逸各事件类型和待处理事件数
    @inlinable
    public func describeEscapeEventTypeSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEscapeEventTypeSummaryResponse> {
        let input = DescribeEscapeEventTypeSummaryRequest()
        return self.client.execute(action: "DescribeEscapeEventTypeSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 统计容器逃逸各事件类型和待处理事件数
    @inlinable
    public func describeEscapeEventTypeSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEscapeEventTypeSummaryResponse {
        let input = DescribeEscapeEventTypeSummaryRequest()
        return try await self.client.execute(action: "DescribeEscapeEventTypeSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
