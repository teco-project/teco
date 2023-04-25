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
    /// DescribeUnusualEvent请求参数结构体
    public struct DescribeUnusualEventRequest: TCRequestModel {
        /// 用户SdkAppId（如：1400xxxxxx）
        public let sdkAppId: UInt64

        /// 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        /// 注意：支持查询14天内的数据
        public let startTime: UInt64

        /// 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）注意：与StartTime间隔时间不超过1小时。
        public let endTime: UInt64

        /// 房间号，查询房间内任意20条以内异常体验事件
        public let roomId: String?

        public init(sdkAppId: UInt64, startTime: UInt64, endTime: UInt64, roomId: String? = nil) {
            self.sdkAppId = sdkAppId
            self.startTime = startTime
            self.endTime = endTime
            self.roomId = roomId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case roomId = "RoomId"
        }
    }

    /// DescribeUnusualEvent返回参数结构体
    public struct DescribeUnusualEventResponse: TCResponseModel {
        /// 返回的数据总条数
        /// 范围：[0，20]
        public let total: UInt64

        /// 异常体验列表
        public let abnormalExperienceList: [AbnormalExperience]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case abnormalExperienceList = "AbnormalExperienceList"
            case requestId = "RequestId"
        }
    }

    /// 查询异常体验事件
    ///
    /// 查询SdkAppId下任意20条异常体验事件，返回异常体验ID与可能产生异常体验的原因。可查询14天内数据，查询起止时间不超过1个小时。支持跨天查询。（同老接口DescribeAbnormalEvent）
    /// 异常体验ID映射见：https://cloud.tencent.com/document/product/647/44916
    @inlinable
    public func describeUnusualEvent(_ input: DescribeUnusualEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUnusualEventResponse> {
        self.client.execute(action: "DescribeUnusualEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询异常体验事件
    ///
    /// 查询SdkAppId下任意20条异常体验事件，返回异常体验ID与可能产生异常体验的原因。可查询14天内数据，查询起止时间不超过1个小时。支持跨天查询。（同老接口DescribeAbnormalEvent）
    /// 异常体验ID映射见：https://cloud.tencent.com/document/product/647/44916
    @inlinable
    public func describeUnusualEvent(_ input: DescribeUnusualEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnusualEventResponse {
        try await self.client.execute(action: "DescribeUnusualEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询异常体验事件
    ///
    /// 查询SdkAppId下任意20条异常体验事件，返回异常体验ID与可能产生异常体验的原因。可查询14天内数据，查询起止时间不超过1个小时。支持跨天查询。（同老接口DescribeAbnormalEvent）
    /// 异常体验ID映射见：https://cloud.tencent.com/document/product/647/44916
    @inlinable
    public func describeUnusualEvent(sdkAppId: UInt64, startTime: UInt64, endTime: UInt64, roomId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUnusualEventResponse> {
        self.describeUnusualEvent(.init(sdkAppId: sdkAppId, startTime: startTime, endTime: endTime, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询异常体验事件
    ///
    /// 查询SdkAppId下任意20条异常体验事件，返回异常体验ID与可能产生异常体验的原因。可查询14天内数据，查询起止时间不超过1个小时。支持跨天查询。（同老接口DescribeAbnormalEvent）
    /// 异常体验ID映射见：https://cloud.tencent.com/document/product/647/44916
    @inlinable
    public func describeUnusualEvent(sdkAppId: UInt64, startTime: UInt64, endTime: UInt64, roomId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnusualEventResponse {
        try await self.describeUnusualEvent(.init(sdkAppId: sdkAppId, startTime: startTime, endTime: endTime, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }
}
