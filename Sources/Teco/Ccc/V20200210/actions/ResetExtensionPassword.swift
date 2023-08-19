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

extension Ccc {
    /// ResetExtensionPassword请求参数结构体
    public struct ResetExtensionPasswordRequest: TCRequest {
        /// TCCC 实例应用 ID
        public let sdkAppId: UInt64

        /// 分机号
        public let extensionId: String

        public init(sdkAppId: UInt64, extensionId: String) {
            self.sdkAppId = sdkAppId
            self.extensionId = extensionId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case extensionId = "ExtensionId"
        }
    }

    /// ResetExtensionPassword返回参数结构体
    public struct ResetExtensionPasswordResponse: TCResponse {
        /// 重置后密码
        public let password: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case password = "Password"
            case requestId = "RequestId"
        }
    }

    /// 重置话机注册密码
    @inlinable
    public func resetExtensionPassword(_ input: ResetExtensionPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetExtensionPasswordResponse> {
        self.client.execute(action: "ResetExtensionPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置话机注册密码
    @inlinable
    public func resetExtensionPassword(_ input: ResetExtensionPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetExtensionPasswordResponse {
        try await self.client.execute(action: "ResetExtensionPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置话机注册密码
    @inlinable
    public func resetExtensionPassword(sdkAppId: UInt64, extensionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetExtensionPasswordResponse> {
        self.resetExtensionPassword(.init(sdkAppId: sdkAppId, extensionId: extensionId), region: region, logger: logger, on: eventLoop)
    }

    /// 重置话机注册密码
    @inlinable
    public func resetExtensionPassword(sdkAppId: UInt64, extensionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetExtensionPasswordResponse {
        try await self.resetExtensionPassword(.init(sdkAppId: sdkAppId, extensionId: extensionId), region: region, logger: logger, on: eventLoop)
    }
}
