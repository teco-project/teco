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

extension Trtc {
    /// DescribeScaleInfo请求参数结构体
    public struct DescribeScaleInfoRequest: TCRequestModel {
        /// 用户SdkAppId（如：1400xxxxxx）
        public let sdkAppId: UInt64

        /// 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        /// 注意：支持查询14天内的数据。
        public let startTime: UInt64

        /// 查询结束时间，本地unix时间戳，单位为秒（如：1590065877），建议与StartTime间隔时间超过24小时。
        /// 注意：按天统计，结束时间小于前一天，否则查询数据为空（如：需查询20号数据，结束时间需小于20号0点）。
        public let endTime: UInt64

        public init(sdkAppId: UInt64, startTime: UInt64, endTime: UInt64) {
            self.sdkAppId = sdkAppId
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeScaleInfo返回参数结构体
    public struct DescribeScaleInfoResponse: TCResponseModel {
        /// 返回的数据条数
        public let total: UInt64

        /// 返回的数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scaleList: [ScaleInfomation]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case scaleList = "ScaleList"
            case requestId = "RequestId"
        }
    }

    /// 查询历史房间和用户数
    ///
    /// 可查询SdkAppId每天的房间数和用户数，按天统计，可查询最近14天的数据。当天未结束，数据未统计完成，无法查到当天的房间数与用户数。（同老接口DescribeHistoryScale）
    @inlinable
    public func describeScaleInfo(_ input: DescribeScaleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScaleInfoResponse> {
        self.client.execute(action: "DescribeScaleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询历史房间和用户数
    ///
    /// 可查询SdkAppId每天的房间数和用户数，按天统计，可查询最近14天的数据。当天未结束，数据未统计完成，无法查到当天的房间数与用户数。（同老接口DescribeHistoryScale）
    @inlinable
    public func describeScaleInfo(_ input: DescribeScaleInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScaleInfoResponse {
        try await self.client.execute(action: "DescribeScaleInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询历史房间和用户数
    ///
    /// 可查询SdkAppId每天的房间数和用户数，按天统计，可查询最近14天的数据。当天未结束，数据未统计完成，无法查到当天的房间数与用户数。（同老接口DescribeHistoryScale）
    @inlinable
    public func describeScaleInfo(sdkAppId: UInt64, startTime: UInt64, endTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScaleInfoResponse> {
        self.describeScaleInfo(.init(sdkAppId: sdkAppId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询历史房间和用户数
    ///
    /// 可查询SdkAppId每天的房间数和用户数，按天统计，可查询最近14天的数据。当天未结束，数据未统计完成，无法查到当天的房间数与用户数。（同老接口DescribeHistoryScale）
    @inlinable
    public func describeScaleInfo(sdkAppId: UInt64, startTime: UInt64, endTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScaleInfoResponse {
        try await self.describeScaleInfo(.init(sdkAppId: sdkAppId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
