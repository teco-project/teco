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

extension Tcb {
    /// ReplaceActivityRecord请求参数结构体
    public struct ReplaceActivityRecordRequest: TCRequest {
        /// 活动id
        public let activityId: Int64

        /// 状态码
        public let status: Int64

        /// 自定义子状态
        public let subStatus: String?

        /// 鉴权token
        public let channelToken: String?

        /// 渠道名，不同渠道对应不同secretKey
        public let channel: String?

        public init(activityId: Int64, status: Int64, subStatus: String? = nil, channelToken: String? = nil, channel: String? = nil) {
            self.activityId = activityId
            self.status = status
            self.subStatus = subStatus
            self.channelToken = channelToken
            self.channel = channel
        }

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case status = "Status"
            case subStatus = "SubStatus"
            case channelToken = "ChannelToken"
            case channel = "Channel"
        }
    }

    /// ReplaceActivityRecord返回参数结构体
    public struct ReplaceActivityRecordResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新活动详情
    @inlinable @discardableResult
    public func replaceActivityRecord(_ input: ReplaceActivityRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplaceActivityRecordResponse> {
        self.client.execute(action: "ReplaceActivityRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新活动详情
    @inlinable @discardableResult
    public func replaceActivityRecord(_ input: ReplaceActivityRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceActivityRecordResponse {
        try await self.client.execute(action: "ReplaceActivityRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新活动详情
    @inlinable @discardableResult
    public func replaceActivityRecord(activityId: Int64, status: Int64, subStatus: String? = nil, channelToken: String? = nil, channel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplaceActivityRecordResponse> {
        self.replaceActivityRecord(.init(activityId: activityId, status: status, subStatus: subStatus, channelToken: channelToken, channel: channel), region: region, logger: logger, on: eventLoop)
    }

    /// 更新活动详情
    @inlinable @discardableResult
    public func replaceActivityRecord(activityId: Int64, status: Int64, subStatus: String? = nil, channelToken: String? = nil, channel: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceActivityRecordResponse {
        try await self.replaceActivityRecord(.init(activityId: activityId, status: status, subStatus: subStatus, channelToken: channelToken, channel: channel), region: region, logger: logger, on: eventLoop)
    }
}
