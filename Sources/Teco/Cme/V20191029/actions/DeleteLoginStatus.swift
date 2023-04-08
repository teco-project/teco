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

extension Cme {
    /// DeleteLoginStatus请求参数结构体
    public struct DeleteLoginStatusRequest: TCRequestModel {
        /// 平台名称，指定访问的平台。
        public let platform: String

        /// 用户 Id 列表，N 从 0 开始取值，最大 19。
        public let userIds: [String]

        public init(platform: String, userIds: [String]) {
            self.platform = platform
            self.userIds = userIds
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case userIds = "UserIds"
        }
    }

    /// DeleteLoginStatus返回参数结构体
    public struct DeleteLoginStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除登录态
    ///
    /// 删除用户登录态，使用户登出多媒体创作引擎平台。
    @inlinable @discardableResult
    public func deleteLoginStatus(_ input: DeleteLoginStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoginStatusResponse> {
        self.client.execute(action: "DeleteLoginStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除登录态
    ///
    /// 删除用户登录态，使用户登出多媒体创作引擎平台。
    @inlinable @discardableResult
    public func deleteLoginStatus(_ input: DeleteLoginStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoginStatusResponse {
        try await self.client.execute(action: "DeleteLoginStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除登录态
    ///
    /// 删除用户登录态，使用户登出多媒体创作引擎平台。
    @inlinable @discardableResult
    public func deleteLoginStatus(platform: String, userIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoginStatusResponse> {
        self.deleteLoginStatus(.init(platform: platform, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除登录态
    ///
    /// 删除用户登录态，使用户登出多媒体创作引擎平台。
    @inlinable @discardableResult
    public func deleteLoginStatus(platform: String, userIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoginStatusResponse {
        try await self.deleteLoginStatus(.init(platform: platform, userIds: userIds), region: region, logger: logger, on: eventLoop)
    }
}
