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

extension Trtc {
    /// DescribeMixTranscodingUsage请求参数结构体
    public struct DescribeMixTranscodingUsageRequest: TCRequestModel {
        /// 查询开始时间，格式为YYYY-MM-DD。
        public let startTime: String

        /// 查询结束时间，格式为YYYY-MM-DD。
        /// 单次查询统计区间最多不能超过31天。
        public let endTime: String

        /// TRTC的SdkAppId，和房间所对应的SdkAppId相同。如果没有这个参数，返回用户下全部实时音视频应用的汇总。
        public let sdkAppId: UInt64?

        public init(startTime: String, endTime: String, sdkAppId: UInt64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case sdkAppId = "SdkAppId"
        }
    }

    /// DescribeMixTranscodingUsage返回参数结构体
    public struct DescribeMixTranscodingUsageResponse: TCResponseModel {
        /// 用量类型，与UsageValue中各个位置的值对应。
        public let usageKey: [String]

        /// 各个时间点用量明细。
        public let usageList: [TrtcUsage]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case usageKey = "UsageKey"
            case usageList = "UsageList"
            case requestId = "RequestId"
        }
    }

    /// 查询TRTC混流转码用量
    ///
    /// 获取TRTC混流转码的用量明细。
    /// - 查询时间小于等于1天时，返回每5分钟粒度的数据；查询时间大于1天时，返回按天汇总的数据。
    /// - 单次查询统计区间最多不能超过31天。
    /// - 若查询当天用量，由于统计延迟等原因，返回数据可能不够准确。
    /// - 该接口只用于历史用量数据统计或核对数据使用，关键业务逻辑不能使用。
    /// - 默认接口请求频率限制：5次/秒。
    @inlinable
    public func describeMixTranscodingUsage(_ input: DescribeMixTranscodingUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMixTranscodingUsageResponse> {
        self.client.execute(action: "DescribeMixTranscodingUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询TRTC混流转码用量
    ///
    /// 获取TRTC混流转码的用量明细。
    /// - 查询时间小于等于1天时，返回每5分钟粒度的数据；查询时间大于1天时，返回按天汇总的数据。
    /// - 单次查询统计区间最多不能超过31天。
    /// - 若查询当天用量，由于统计延迟等原因，返回数据可能不够准确。
    /// - 该接口只用于历史用量数据统计或核对数据使用，关键业务逻辑不能使用。
    /// - 默认接口请求频率限制：5次/秒。
    @inlinable
    public func describeMixTranscodingUsage(_ input: DescribeMixTranscodingUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMixTranscodingUsageResponse {
        try await self.client.execute(action: "DescribeMixTranscodingUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询TRTC混流转码用量
    ///
    /// 获取TRTC混流转码的用量明细。
    /// - 查询时间小于等于1天时，返回每5分钟粒度的数据；查询时间大于1天时，返回按天汇总的数据。
    /// - 单次查询统计区间最多不能超过31天。
    /// - 若查询当天用量，由于统计延迟等原因，返回数据可能不够准确。
    /// - 该接口只用于历史用量数据统计或核对数据使用，关键业务逻辑不能使用。
    /// - 默认接口请求频率限制：5次/秒。
    @inlinable
    public func describeMixTranscodingUsage(startTime: String, endTime: String, sdkAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMixTranscodingUsageResponse> {
        self.describeMixTranscodingUsage(.init(startTime: startTime, endTime: endTime, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询TRTC混流转码用量
    ///
    /// 获取TRTC混流转码的用量明细。
    /// - 查询时间小于等于1天时，返回每5分钟粒度的数据；查询时间大于1天时，返回按天汇总的数据。
    /// - 单次查询统计区间最多不能超过31天。
    /// - 若查询当天用量，由于统计延迟等原因，返回数据可能不够准确。
    /// - 该接口只用于历史用量数据统计或核对数据使用，关键业务逻辑不能使用。
    /// - 默认接口请求频率限制：5次/秒。
    @inlinable
    public func describeMixTranscodingUsage(startTime: String, endTime: String, sdkAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMixTranscodingUsageResponse {
        try await self.describeMixTranscodingUsage(.init(startTime: startTime, endTime: endTime, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
