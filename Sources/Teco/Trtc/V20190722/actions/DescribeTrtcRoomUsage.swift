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

extension Trtc {
    /// DescribeTrtcRoomUsage请求参数结构体
    public struct DescribeTrtcRoomUsageRequest: TCRequestModel {
        /// TRTC的SdkAppId，和房间所对应的SdkAppId相同。
        public let sdkAppid: UInt64

        /// 查询开始时间，格式为YYYY-MM-DD HH:MM，精确到分钟级。
        public let startTime: String

        /// 查询结束时间，格式为YYYY-MM-DD HH:MM，单次查询不超过24h。
        public let endTime: String

        public init(sdkAppid: UInt64, startTime: String, endTime: String) {
            self.sdkAppid = sdkAppid
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppid = "SdkAppid"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeTrtcRoomUsage返回参数结构体
    public struct DescribeTrtcRoomUsageResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询TRTC音视频房间维度用量
    ///
    /// 查询TRTC音视频房间维度用量。
    /// - 单次只能查询一天数据，返回查询时间段内的汇总数据；通过多次查询可以查不同天数据。若查询跨天用量，由于统计延迟等原因，返回数据可能不够准确。
    /// - 该接口只用于历史用量数据统计或核对数据使用，关键业务逻辑不能使用。
    /// - 默认接口请求频率限制：1次/15秒。
    @inlinable @discardableResult
    public func describeTrtcRoomUsage(_ input: DescribeTrtcRoomUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrtcRoomUsageResponse> {
        self.client.execute(action: "DescribeTrtcRoomUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询TRTC音视频房间维度用量
    ///
    /// 查询TRTC音视频房间维度用量。
    /// - 单次只能查询一天数据，返回查询时间段内的汇总数据；通过多次查询可以查不同天数据。若查询跨天用量，由于统计延迟等原因，返回数据可能不够准确。
    /// - 该接口只用于历史用量数据统计或核对数据使用，关键业务逻辑不能使用。
    /// - 默认接口请求频率限制：1次/15秒。
    @inlinable @discardableResult
    public func describeTrtcRoomUsage(_ input: DescribeTrtcRoomUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrtcRoomUsageResponse {
        try await self.client.execute(action: "DescribeTrtcRoomUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询TRTC音视频房间维度用量
    ///
    /// 查询TRTC音视频房间维度用量。
    /// - 单次只能查询一天数据，返回查询时间段内的汇总数据；通过多次查询可以查不同天数据。若查询跨天用量，由于统计延迟等原因，返回数据可能不够准确。
    /// - 该接口只用于历史用量数据统计或核对数据使用，关键业务逻辑不能使用。
    /// - 默认接口请求频率限制：1次/15秒。
    @inlinable @discardableResult
    public func describeTrtcRoomUsage(sdkAppid: UInt64, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrtcRoomUsageResponse> {
        self.describeTrtcRoomUsage(.init(sdkAppid: sdkAppid, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询TRTC音视频房间维度用量
    ///
    /// 查询TRTC音视频房间维度用量。
    /// - 单次只能查询一天数据，返回查询时间段内的汇总数据；通过多次查询可以查不同天数据。若查询跨天用量，由于统计延迟等原因，返回数据可能不够准确。
    /// - 该接口只用于历史用量数据统计或核对数据使用，关键业务逻辑不能使用。
    /// - 默认接口请求频率限制：1次/15秒。
    @inlinable @discardableResult
    public func describeTrtcRoomUsage(sdkAppid: UInt64, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrtcRoomUsageResponse {
        try await self.describeTrtcRoomUsage(.init(sdkAppid: sdkAppid, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}