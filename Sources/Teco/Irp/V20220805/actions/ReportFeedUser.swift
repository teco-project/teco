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

extension Irp {
    /// ReportFeedUser请求参数结构体
    public struct ReportFeedUserRequest: TCRequest {
        /// 实例ID，在控制台获取
        public let instanceId: String

        /// 上报的用户信息数组，数量不超过50
        public let feedUserList: [FeedUserInfo]

        public init(instanceId: String, feedUserList: [FeedUserInfo]) {
            self.instanceId = instanceId
            self.feedUserList = feedUserList
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case feedUserList = "FeedUserList"
        }
    }

    /// ReportFeedUser返回参数结构体
    public struct ReportFeedUserResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上报信息流用户信息
    ///
    /// 上报信息流用户信息，请务必确认用户的唯一性，并在请求推荐结果时指定用户的唯一标识信息（UserId），否则将无法进行千人千面的推荐
    @inlinable @discardableResult
    public func reportFeedUser(_ input: ReportFeedUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportFeedUserResponse> {
        self.client.execute(action: "ReportFeedUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报信息流用户信息
    ///
    /// 上报信息流用户信息，请务必确认用户的唯一性，并在请求推荐结果时指定用户的唯一标识信息（UserId），否则将无法进行千人千面的推荐
    @inlinable @discardableResult
    public func reportFeedUser(_ input: ReportFeedUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportFeedUserResponse {
        try await self.client.execute(action: "ReportFeedUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报信息流用户信息
    ///
    /// 上报信息流用户信息，请务必确认用户的唯一性，并在请求推荐结果时指定用户的唯一标识信息（UserId），否则将无法进行千人千面的推荐
    @inlinable @discardableResult
    public func reportFeedUser(instanceId: String, feedUserList: [FeedUserInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportFeedUserResponse> {
        self.reportFeedUser(.init(instanceId: instanceId, feedUserList: feedUserList), region: region, logger: logger, on: eventLoop)
    }

    /// 上报信息流用户信息
    ///
    /// 上报信息流用户信息，请务必确认用户的唯一性，并在请求推荐结果时指定用户的唯一标识信息（UserId），否则将无法进行千人千面的推荐
    @inlinable @discardableResult
    public func reportFeedUser(instanceId: String, feedUserList: [FeedUserInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportFeedUserResponse {
        try await self.reportFeedUser(.init(instanceId: instanceId, feedUserList: feedUserList), region: region, logger: logger, on: eventLoop)
    }
}
