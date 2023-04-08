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
    /// DescribeTelSession请求参数结构体
    public struct DescribeTelSessionRequest: TCRequestModel {
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64

        /// 会话 ID
        public let sessionId: String

        public init(sdkAppId: Int64, sessionId: String) {
            self.sdkAppId = sdkAppId
            self.sessionId = sessionId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case sessionId = "SessionId"
        }
    }

    /// DescribeTelSession返回参数结构体
    public struct DescribeTelSessionResponse: TCResponseModel {
        /// 会话信息
        public let session: PSTNSession

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case session = "Session"
            case requestId = "RequestId"
        }
    }

    /// 获取 PSTN 会话信息
    @inlinable
    public func describeTelSession(_ input: DescribeTelSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTelSessionResponse> {
        self.client.execute(action: "DescribeTelSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取 PSTN 会话信息
    @inlinable
    public func describeTelSession(_ input: DescribeTelSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTelSessionResponse {
        try await self.client.execute(action: "DescribeTelSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取 PSTN 会话信息
    @inlinable
    public func describeTelSession(sdkAppId: Int64, sessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTelSessionResponse> {
        self.describeTelSession(.init(sdkAppId: sdkAppId, sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取 PSTN 会话信息
    @inlinable
    public func describeTelSession(sdkAppId: Int64, sessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTelSessionResponse {
        try await self.describeTelSession(.init(sdkAppId: sdkAppId, sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }
}
