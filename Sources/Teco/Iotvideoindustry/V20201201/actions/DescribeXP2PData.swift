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

extension Iotvideoindustry {
    /// DescribeXP2PData请求参数结构体
    public struct DescribeXP2PDataRequest: TCRequest {
        /// P2P应用ID
        public let p2pAppId: String

        /// 查询开始时间，时间戳秒
        public let from: Int64

        /// 查询结束时间，时间戳秒
        public let to: Int64

        /// P2P通路ID
        public let p2pChannelId: String?

        public init(p2pAppId: String, from: Int64, to: Int64, p2pChannelId: String? = nil) {
            self.p2pAppId = p2pAppId
            self.from = from
            self.to = to
            self.p2pChannelId = p2pChannelId
        }

        enum CodingKeys: String, CodingKey {
            case p2pAppId = "P2PAppId"
            case from = "From"
            case to = "To"
            case p2pChannelId = "P2PChannelId"
        }
    }

    /// DescribeXP2PData返回参数结构体
    public struct DescribeXP2PDataResponse: TCResponse {
        /// [log_time,cdn_bytes , p2p_bytes, online_people, stuck_times, stuck_people,request,request_success,request_fail,play_fail]
        /// [时间戳,cdn流量(字节) , p2p流量(字节), 在线人数, 卡播次数, 卡播人数,起播请求次数,起播成功次数,起播失败次数,播放失败次数, pcdn cdn流量（字节), pcdn路由流量(字节), 上传流量(字节)]
        /// [1481016480, 46118502414, 75144943171, 61691, 3853, 0,0,0,0,0, 0, 0, 0]
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取X-P2P的统计数据
    @inlinable
    public func describeXP2PData(_ input: DescribeXP2PDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeXP2PDataResponse> {
        self.client.execute(action: "DescribeXP2PData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取X-P2P的统计数据
    @inlinable
    public func describeXP2PData(_ input: DescribeXP2PDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeXP2PDataResponse {
        try await self.client.execute(action: "DescribeXP2PData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取X-P2P的统计数据
    @inlinable
    public func describeXP2PData(p2pAppId: String, from: Int64, to: Int64, p2pChannelId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeXP2PDataResponse> {
        self.describeXP2PData(.init(p2pAppId: p2pAppId, from: from, to: to, p2pChannelId: p2pChannelId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取X-P2P的统计数据
    @inlinable
    public func describeXP2PData(p2pAppId: String, from: Int64, to: Int64, p2pChannelId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeXP2PDataResponse {
        try await self.describeXP2PData(.init(p2pAppId: p2pAppId, from: from, to: to, p2pChannelId: p2pChannelId), region: region, logger: logger, on: eventLoop)
    }
}
