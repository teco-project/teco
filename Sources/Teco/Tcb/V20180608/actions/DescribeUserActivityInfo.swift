//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcb {
    /// DescribeUserActivityInfo请求参数结构体
    public struct DescribeUserActivityInfoRequest: TCRequestModel {
        /// 活动id
        public let activityId: Int64

        /// 渠道加密token
        public let channelToken: String?

        /// 渠道来源，每个来源对应不同secretKey
        public let channel: String?

        /// 团id, 1元钱裂变中活动团id不为空时根据团id来查询记录，为空时查询uin最新记录
        public let groupId: String?

        public init(activityId: Int64, channelToken: String? = nil, channel: String? = nil, groupId: String? = nil) {
            self.activityId = activityId
            self.channelToken = channelToken
            self.channel = channel
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case channelToken = "ChannelToken"
            case channel = "Channel"
            case groupId = "GroupId"
        }
    }

    /// DescribeUserActivityInfo返回参数结构体
    public struct DescribeUserActivityInfoResponse: TCResponseModel {
        /// 自定义标记，1元钱裂变需求中即代指`团id`
        public let tag: String

        /// 自定义备注，1元钱裂变需求中返回`团列表`，uin列表通过","拼接
        public let notes: String

        /// 活动剩余时间，单位为s.1元钱裂变需求中即为 time(活动过期时间)-Now()), 过期后为0，即返回必为自然数
        public let activityTimeLeft: Int64

        /// 拼团剩余时间，单位为s.1元钱裂变需求中即为time(成团时间)+24H-Now()，过期后为0，即返回必为自然数
        public let groupTimeLeft: Int64

        /// 昵称列表,通过","拼接， 1元钱裂变活动中与Notes中uin一一对应
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nickNameList: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tag = "Tag"
            case notes = "Notes"
            case activityTimeLeft = "ActivityTimeLeft"
            case groupTimeLeft = "GroupTimeLeft"
            case nickNameList = "NickNameList"
            case requestId = "RequestId"
        }
    }

    /// 查询用户活动信息
    @inlinable
    public func describeUserActivityInfo(_ input: DescribeUserActivityInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserActivityInfoResponse> {
        self.client.execute(action: "DescribeUserActivityInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户活动信息
    @inlinable
    public func describeUserActivityInfo(_ input: DescribeUserActivityInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserActivityInfoResponse {
        try await self.client.execute(action: "DescribeUserActivityInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户活动信息
    @inlinable
    public func describeUserActivityInfo(activityId: Int64, channelToken: String? = nil, channel: String? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserActivityInfoResponse> {
        self.describeUserActivityInfo(DescribeUserActivityInfoRequest(activityId: activityId, channelToken: channelToken, channel: channel, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户活动信息
    @inlinable
    public func describeUserActivityInfo(activityId: Int64, channelToken: String? = nil, channel: String? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserActivityInfoResponse {
        try await self.describeUserActivityInfo(DescribeUserActivityInfoRequest(activityId: activityId, channelToken: channelToken, channel: channel, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
