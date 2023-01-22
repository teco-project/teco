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

extension Ccc {
    /// HangUpCall请求参数结构体
    public struct HangUpCallRequest: TCRequestModel {
        /// TCCC 实例应用 ID
        public let sdkAppId: UInt64

        /// 会话ID
        public let sessionId: String

        public init(sdkAppId: UInt64, sessionId: String) {
            self.sdkAppId = sdkAppId
            self.sessionId = sessionId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case sessionId = "SessionId"
        }
    }

    /// HangUpCall返回参数结构体
    public struct HangUpCallResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 挂断电话
    @inlinable @discardableResult
    public func hangUpCall(_ input: HangUpCallRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HangUpCallResponse> {
        self.client.execute(action: "HangUpCall", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 挂断电话
    @inlinable @discardableResult
    public func hangUpCall(_ input: HangUpCallRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HangUpCallResponse {
        try await self.client.execute(action: "HangUpCall", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 挂断电话
    @inlinable @discardableResult
    public func hangUpCall(sdkAppId: UInt64, sessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HangUpCallResponse> {
        self.hangUpCall(HangUpCallRequest(sdkAppId: sdkAppId, sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }

    /// 挂断电话
    @inlinable @discardableResult
    public func hangUpCall(sdkAppId: UInt64, sessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HangUpCallResponse {
        try await self.hangUpCall(HangUpCallRequest(sdkAppId: sdkAppId, sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }
}