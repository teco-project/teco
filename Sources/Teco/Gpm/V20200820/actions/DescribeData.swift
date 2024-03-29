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

extension Gpm {
    /// DescribeData请求参数结构体
    public struct DescribeDataRequest: TCRequest {
        /// 起始时间，单位：秒
        public let startTime: Int64

        /// 截止时间，单位：秒
        public let endTime: Int64

        /// 时间粒度，1表示1天；2表示1小时；3表示1分钟；4表示10分钟；5表示30分钟
        public let timeType: Int64

        /// 匹配code
        public let matchCode: String?

        public init(startTime: Int64, endTime: Int64, timeType: Int64, matchCode: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.timeType = timeType
            self.matchCode = matchCode
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case timeType = "TimeType"
            case matchCode = "MatchCode"
        }
    }

    /// DescribeData返回参数结构体
    public struct DescribeDataResponse: TCResponse {
        /// 匹配概况
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let overviewData: ReportOverviewData?

        /// 匹配请求次数趋势数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trendData: ReportTrendData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case overviewData = "OverviewData"
            case trendData = "TrendData"
            case requestId = "RequestId"
        }
    }

    /// 统计数据
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeData(_ input: DescribeDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataResponse> {
        fatalError("'DescribeData' is no longer available.")
    }

    /// 统计数据
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeData(_ input: DescribeDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataResponse {
        fatalError("'DescribeData' is no longer available.")
    }

    /// 统计数据
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeData(startTime: Int64, endTime: Int64, timeType: Int64, matchCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataResponse> {
        fatalError("'DescribeData' is no longer available.")
    }

    /// 统计数据
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeData(startTime: Int64, endTime: Int64, timeType: Int64, matchCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataResponse {
        fatalError("'DescribeData' is no longer available.")
    }
}
