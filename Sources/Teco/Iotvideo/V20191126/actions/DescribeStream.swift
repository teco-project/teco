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

extension Iotvideo {
    /// DescribeStream请求参数结构体
    public struct DescribeStreamRequest: TCRequest {
        /// 设备TID
        public let tid: String?

        /// 终端用户ID
        public let accessId: String?

        /// 直播协议, 可选值：RTSP、RTMP、HLS、HLS-fmp4
        public let `protocol`: String?

        /// 音视频流地址
        public let address: String?

        /// 设备访问token，访问用户未绑定的设备时，需提供该参数
        public let accessToken: String?

        public init(tid: String? = nil, accessId: String? = nil, protocol: String? = nil, address: String? = nil, accessToken: String? = nil) {
            self.tid = tid
            self.accessId = accessId
            self.protocol = `protocol`
            self.address = address
            self.accessToken = accessToken
        }

        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case accessId = "AccessId"
            case `protocol` = "Protocol"
            case address = "Address"
            case accessToken = "AccessToken"
        }
    }

    /// DescribeStream返回参数结构体
    public struct DescribeStreamResponse: TCResponse {
        /// 返回参数结构
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Data?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 请求设备直播流地址
    @inlinable
    public func describeStream(_ input: DescribeStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamResponse> {
        self.client.execute(action: "DescribeStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 请求设备直播流地址
    @inlinable
    public func describeStream(_ input: DescribeStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamResponse {
        try await self.client.execute(action: "DescribeStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 请求设备直播流地址
    @inlinable
    public func describeStream(tid: String? = nil, accessId: String? = nil, protocol: String? = nil, address: String? = nil, accessToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamResponse> {
        self.describeStream(.init(tid: tid, accessId: accessId, protocol: `protocol`, address: address, accessToken: accessToken), region: region, logger: logger, on: eventLoop)
    }

    /// 请求设备直播流地址
    @inlinable
    public func describeStream(tid: String? = nil, accessId: String? = nil, protocol: String? = nil, address: String? = nil, accessToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamResponse {
        try await self.describeStream(.init(tid: tid, accessId: accessId, protocol: `protocol`, address: address, accessToken: accessToken), region: region, logger: logger, on: eventLoop)
    }
}
