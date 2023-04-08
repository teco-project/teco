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

extension Wedata {
    /// DescribeTrendStat请求参数结构体
    public struct DescribeTrendStatRequest: TCRequestModel {
        /// Project id
        public let projectId: String

        /// 开始时间，时间戳到秒
        public let beginDate: String

        /// 结束时间，时间戳到秒
        public let endDate: String

        public init(projectId: String, beginDate: String, endDate: String) {
            self.projectId = projectId
            self.beginDate = beginDate
            self.endDate = endDate
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case beginDate = "BeginDate"
            case endDate = "EndDate"
        }
    }

    /// DescribeTrendStat返回参数结构体
    public struct DescribeTrendStatResponse: TCResponseModel {
        /// 结果
        public let data: [RuleExecDateStat]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 数据质量概览页面趋势接口
    ///
    /// 数据质量概览页面趋势变化接口
    @inlinable
    public func describeTrendStat(_ input: DescribeTrendStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrendStatResponse> {
        self.client.execute(action: "DescribeTrendStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数据质量概览页面趋势接口
    ///
    /// 数据质量概览页面趋势变化接口
    @inlinable
    public func describeTrendStat(_ input: DescribeTrendStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrendStatResponse {
        try await self.client.execute(action: "DescribeTrendStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数据质量概览页面趋势接口
    ///
    /// 数据质量概览页面趋势变化接口
    @inlinable
    public func describeTrendStat(projectId: String, beginDate: String, endDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrendStatResponse> {
        self.describeTrendStat(.init(projectId: projectId, beginDate: beginDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }

    /// 数据质量概览页面趋势接口
    ///
    /// 数据质量概览页面趋势变化接口
    @inlinable
    public func describeTrendStat(projectId: String, beginDate: String, endDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrendStatResponse {
        try await self.describeTrendStat(.init(projectId: projectId, beginDate: beginDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }
}
