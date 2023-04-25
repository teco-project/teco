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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Ecm {
    /// DescribePeakBaseOverview请求参数结构体
    public struct DescribePeakBaseOverviewRequest: TCRequestModel {
        /// 开始时间（xxxx-xx-xx）如2019-08-14，默认为一周之前的日期，不应与当前日期间隔超过90天。
        public let startTime: String?

        /// 结束时间（xxxx-xx-xx）如2019-08-14，默认为昨天，不应与当前日期间隔超过90天。当开始与结束间隔不超过30天时返回1小时粒度的数据，否则返回3小时粒度的数据。
        public let endTime: String?

        public init(startTime: String? = nil, endTime: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribePeakBaseOverview返回参数结构体
    public struct DescribePeakBaseOverviewResponse: TCResponseModel {
        /// 基础峰值列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let peakFamilyInfoSet: [PeakFamilyInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case peakFamilyInfoSet = "PeakFamilyInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 基础信息峰值数据
    ///
    /// CPU 内存 硬盘等基础信息峰值数据
    @inlinable
    public func describePeakBaseOverview(_ input: DescribePeakBaseOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePeakBaseOverviewResponse> {
        self.client.execute(action: "DescribePeakBaseOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 基础信息峰值数据
    ///
    /// CPU 内存 硬盘等基础信息峰值数据
    @inlinable
    public func describePeakBaseOverview(_ input: DescribePeakBaseOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePeakBaseOverviewResponse {
        try await self.client.execute(action: "DescribePeakBaseOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 基础信息峰值数据
    ///
    /// CPU 内存 硬盘等基础信息峰值数据
    @inlinable
    public func describePeakBaseOverview(startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePeakBaseOverviewResponse> {
        self.describePeakBaseOverview(.init(startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 基础信息峰值数据
    ///
    /// CPU 内存 硬盘等基础信息峰值数据
    @inlinable
    public func describePeakBaseOverview(startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePeakBaseOverviewResponse {
        try await self.describePeakBaseOverview(.init(startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
