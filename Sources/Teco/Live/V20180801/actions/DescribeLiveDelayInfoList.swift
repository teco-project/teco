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

extension Live {
    /// DescribeLiveDelayInfoList请求参数结构体
    public struct DescribeLiveDelayInfoListRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeLiveDelayInfoList返回参数结构体
    public struct DescribeLiveDelayInfoListResponse: TCResponseModel {
        /// 延播信息列表。
        public let delayInfoList: [DelayInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case delayInfoList = "DelayInfoList"
            case requestId = "RequestId"
        }
    }

    /// 获取直播延播列表
    ///
    /// 获取直播延播列表。
    @inlinable
    public func describeLiveDelayInfoList(_ input: DescribeLiveDelayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDelayInfoListResponse> {
        self.client.execute(action: "DescribeLiveDelayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播延播列表
    ///
    /// 获取直播延播列表。
    @inlinable
    public func describeLiveDelayInfoList(_ input: DescribeLiveDelayInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDelayInfoListResponse {
        try await self.client.execute(action: "DescribeLiveDelayInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播延播列表
    ///
    /// 获取直播延播列表。
    @inlinable
    public func describeLiveDelayInfoList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDelayInfoListResponse> {
        self.describeLiveDelayInfoList(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取直播延播列表
    ///
    /// 获取直播延播列表。
    @inlinable
    public func describeLiveDelayInfoList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDelayInfoListResponse {
        try await self.describeLiveDelayInfoList(.init(), region: region, logger: logger, on: eventLoop)
    }
}
