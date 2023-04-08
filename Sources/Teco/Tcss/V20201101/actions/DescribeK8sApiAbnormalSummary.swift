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

extension Tcss {
    /// DescribeK8sApiAbnormalSummary请求参数结构体
    public struct DescribeK8sApiAbnormalSummaryRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeK8sApiAbnormalSummary返回参数结构体
    public struct DescribeK8sApiAbnormalSummaryResponse: TCResponseModel {
        /// 待处理事件个数
        public let unhandleEventCount: UInt64

        /// 待处理高危事件个数
        public let unhandleHighLevelEventCount: UInt64

        /// 待处理中危事件个数
        public let unhandleMediumLevelEventCount: UInt64

        /// 待处理低危事件个数
        public let unhandleLowLevelEventCount: UInt64

        /// 待处理提示级别事件个数
        public let unhandleNoticeLevelEventCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case unhandleEventCount = "UnhandleEventCount"
            case unhandleHighLevelEventCount = "UnhandleHighLevelEventCount"
            case unhandleMediumLevelEventCount = "UnhandleMediumLevelEventCount"
            case unhandleLowLevelEventCount = "UnhandleLowLevelEventCount"
            case unhandleNoticeLevelEventCount = "UnhandleNoticeLevelEventCount"
            case requestId = "RequestId"
        }
    }

    /// 查询k8sapi异常事件统计
    @inlinable
    public func describeK8sApiAbnormalSummary(_ input: DescribeK8sApiAbnormalSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeK8sApiAbnormalSummaryResponse> {
        self.client.execute(action: "DescribeK8sApiAbnormalSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询k8sapi异常事件统计
    @inlinable
    public func describeK8sApiAbnormalSummary(_ input: DescribeK8sApiAbnormalSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeK8sApiAbnormalSummaryResponse {
        try await self.client.execute(action: "DescribeK8sApiAbnormalSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询k8sapi异常事件统计
    @inlinable
    public func describeK8sApiAbnormalSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeK8sApiAbnormalSummaryResponse> {
        self.describeK8sApiAbnormalSummary(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询k8sapi异常事件统计
    @inlinable
    public func describeK8sApiAbnormalSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeK8sApiAbnormalSummaryResponse {
        try await self.describeK8sApiAbnormalSummary(.init(), region: region, logger: logger, on: eventLoop)
    }
}
