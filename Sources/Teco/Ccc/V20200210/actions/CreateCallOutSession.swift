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
    /// CreateCallOutSession请求参数结构体
    public struct CreateCallOutSessionRequest: TCRequestModel {
        /// 应用 ID
        public let sdkAppId: UInt64

        /// 客服用户 ID，一般为客服邮箱
        public let userId: String

        /// 被叫号码，须带 0086 前缀
        public let callee: String

        /// 主叫号码，须带 0086 前缀
        public let caller: String?

        /// 是否强制使用手机外呼，当前只支持 true，若为 true 请确保已配置白名单
        public let isForceUseMobile: Bool?

        /// 自定义数据，长度限制 1024 字节
        public let uui: String?

        public init(sdkAppId: UInt64, userId: String, callee: String, caller: String? = nil, isForceUseMobile: Bool? = nil, uui: String? = nil) {
            self.sdkAppId = sdkAppId
            self.userId = userId
            self.callee = callee
            self.caller = caller
            self.isForceUseMobile = isForceUseMobile
            self.uui = uui
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case userId = "UserId"
            case callee = "Callee"
            case caller = "Caller"
            case isForceUseMobile = "IsForceUseMobile"
            case uui = "Uui"
        }
    }

    /// CreateCallOutSession返回参数结构体
    public struct CreateCallOutSessionResponse: TCResponseModel {
        /// 新创建的会话 ID
        public let sessionId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
            case requestId = "RequestId"
        }
    }

    /// 创建外呼会话（当前仅支持双呼）
    ///
    /// 创建外呼会话，当前仅支持双呼，即先使用平台号码呼出到坐席手机上，坐席接听后，然后再外呼用户，而且由于运营商频率限制，坐席手机号必须先加白名单，避免频控导致外呼失败。
    @inlinable
    public func createCallOutSession(_ input: CreateCallOutSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCallOutSessionResponse> {
        self.client.execute(action: "CreateCallOutSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建外呼会话（当前仅支持双呼）
    ///
    /// 创建外呼会话，当前仅支持双呼，即先使用平台号码呼出到坐席手机上，坐席接听后，然后再外呼用户，而且由于运营商频率限制，坐席手机号必须先加白名单，避免频控导致外呼失败。
    @inlinable
    public func createCallOutSession(_ input: CreateCallOutSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCallOutSessionResponse {
        try await self.client.execute(action: "CreateCallOutSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建外呼会话（当前仅支持双呼）
    ///
    /// 创建外呼会话，当前仅支持双呼，即先使用平台号码呼出到坐席手机上，坐席接听后，然后再外呼用户，而且由于运营商频率限制，坐席手机号必须先加白名单，避免频控导致外呼失败。
    @inlinable
    public func createCallOutSession(sdkAppId: UInt64, userId: String, callee: String, caller: String? = nil, isForceUseMobile: Bool? = nil, uui: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCallOutSessionResponse> {
        let input = CreateCallOutSessionRequest(sdkAppId: sdkAppId, userId: userId, callee: callee, caller: caller, isForceUseMobile: isForceUseMobile, uui: uui)
        return self.client.execute(action: "CreateCallOutSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建外呼会话（当前仅支持双呼）
    ///
    /// 创建外呼会话，当前仅支持双呼，即先使用平台号码呼出到坐席手机上，坐席接听后，然后再外呼用户，而且由于运营商频率限制，坐席手机号必须先加白名单，避免频控导致外呼失败。
    @inlinable
    public func createCallOutSession(sdkAppId: UInt64, userId: String, callee: String, caller: String? = nil, isForceUseMobile: Bool? = nil, uui: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCallOutSessionResponse {
        let input = CreateCallOutSessionRequest(sdkAppId: sdkAppId, userId: userId, callee: callee, caller: caller, isForceUseMobile: isForceUseMobile, uui: uui)
        return try await self.client.execute(action: "CreateCallOutSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
