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

extension Vm {
    /// DescribeVideoStat请求参数结构体
    public struct DescribeVideoStatRequest: TCRequestModel {
        /// 审核类型 1: 机器审核; 2: 人工审核
        public let auditType: Int64

        /// 查询条件
        public let filters: [Filters]

        public init(auditType: Int64, filters: [Filters]) {
            self.auditType = auditType
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case auditType = "AuditType"
            case filters = "Filters"
        }
    }

    /// DescribeVideoStat返回参数结构体
    public struct DescribeVideoStatResponse: TCResponseModel {
        /// 识别结果统计
        public let overview: Overview

        /// 识别量统计
        public let trendCount: [TrendCount]

        /// 违规数据分布
        public let evilCount: [EvilCount]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case overview = "Overview"
            case trendCount = "TrendCount"
            case evilCount = "EvilCount"
            case requestId = "RequestId"
        }
    }

    /// 识别统计
    ///
    /// 控制台识别统计
    @inlinable
    public func describeVideoStat(_ input: DescribeVideoStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVideoStatResponse> {
        self.client.execute(action: "DescribeVideoStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 识别统计
    ///
    /// 控制台识别统计
    @inlinable
    public func describeVideoStat(_ input: DescribeVideoStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVideoStatResponse {
        try await self.client.execute(action: "DescribeVideoStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 识别统计
    ///
    /// 控制台识别统计
    @inlinable
    public func describeVideoStat(auditType: Int64, filters: [Filters], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVideoStatResponse> {
        self.describeVideoStat(.init(auditType: auditType, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 识别统计
    ///
    /// 控制台识别统计
    @inlinable
    public func describeVideoStat(auditType: Int64, filters: [Filters], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVideoStatResponse {
        try await self.describeVideoStat(.init(auditType: auditType, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
