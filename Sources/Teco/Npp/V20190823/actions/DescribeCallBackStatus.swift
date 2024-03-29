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

extension Npp {
    /// DescribeCallBackStatus请求参数结构体
    public struct DescribeCallBackStatusRequest: TCRequest {
        /// 业务appid
        public let bizAppId: String

        /// 回拨请求响应中返回的 callId
        public let callId: String

        /// 主叫号码
        public let src: String?

        /// 被叫号码
        public let dst: String?

        /// 通话最后状态：0：未知状态 1：主叫响铃中 2：主叫接听 3：被叫响铃中 4：正常通话中 5：通话结束
        public let callStatus: String?

        public init(bizAppId: String, callId: String, src: String? = nil, dst: String? = nil, callStatus: String? = nil) {
            self.bizAppId = bizAppId
            self.callId = callId
            self.src = src
            self.dst = dst
            self.callStatus = callStatus
        }

        enum CodingKeys: String, CodingKey {
            case bizAppId = "BizAppId"
            case callId = "CallId"
            case src = "Src"
            case dst = "Dst"
            case callStatus = "CallStatus"
        }
    }

    /// DescribeCallBackStatus返回参数结构体
    public struct DescribeCallBackStatusResponse: TCResponse {
        /// 错误码
        public let errorCode: String

        /// 错误信息
        public let msg: String

        /// 业务appid
        public let appId: String

        /// 回拨请求响应中返回的 callId
        public let callId: String

        /// 主叫号码
        public let src: String

        /// 被叫号码
        public let dst: String

        /// 通话最后状态：0：未知状态 1：主叫响铃中 2：主叫接听 3：被叫响铃中 4：正常通话中 5：通话结束
        public let callStatus: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case msg = "Msg"
            case appId = "AppId"
            case callId = "CallId"
            case src = "Src"
            case dst = "Dst"
            case callStatus = "CallStatus"
            case requestId = "RequestId"
        }
    }

    /// 回拨通话状态获取
    @inlinable
    public func describeCallBackStatus(_ input: DescribeCallBackStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCallBackStatusResponse> {
        self.client.execute(action: "DescribeCallBackStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回拨通话状态获取
    @inlinable
    public func describeCallBackStatus(_ input: DescribeCallBackStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCallBackStatusResponse {
        try await self.client.execute(action: "DescribeCallBackStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回拨通话状态获取
    @inlinable
    public func describeCallBackStatus(bizAppId: String, callId: String, src: String? = nil, dst: String? = nil, callStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCallBackStatusResponse> {
        self.describeCallBackStatus(.init(bizAppId: bizAppId, callId: callId, src: src, dst: dst, callStatus: callStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 回拨通话状态获取
    @inlinable
    public func describeCallBackStatus(bizAppId: String, callId: String, src: String? = nil, dst: String? = nil, callStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCallBackStatusResponse {
        try await self.describeCallBackStatus(.init(bizAppId: bizAppId, callId: callId, src: src, dst: dst, callStatus: callStatus), region: region, logger: logger, on: eventLoop)
    }
}
