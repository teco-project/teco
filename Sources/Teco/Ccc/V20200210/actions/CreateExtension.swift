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

import TecoCore

extension Ccc {
    /// CreateExtension请求参数结构体
    public struct CreateExtensionRequest: TCRequestModel {
        /// TCCC 实例应用 ID
        public let sdkAppId: UInt64

        /// 分机号
        public let extensionId: String

        /// 分机名称
        public let extensionName: String

        public init(sdkAppId: UInt64, extensionId: String, extensionName: String) {
            self.sdkAppId = sdkAppId
            self.extensionId = extensionId
            self.extensionName = extensionName
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case extensionId = "ExtensionId"
            case extensionName = "ExtensionName"
        }
    }

    /// CreateExtension返回参数结构体
    public struct CreateExtensionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建话机账号
    @inlinable @discardableResult
    public func createExtension(_ input: CreateExtensionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExtensionResponse> {
        self.client.execute(action: "CreateExtension", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建话机账号
    @inlinable @discardableResult
    public func createExtension(_ input: CreateExtensionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExtensionResponse {
        try await self.client.execute(action: "CreateExtension", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建话机账号
    @inlinable @discardableResult
    public func createExtension(sdkAppId: UInt64, extensionId: String, extensionName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExtensionResponse> {
        self.createExtension(.init(sdkAppId: sdkAppId, extensionId: extensionId, extensionName: extensionName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建话机账号
    @inlinable @discardableResult
    public func createExtension(sdkAppId: UInt64, extensionId: String, extensionName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExtensionResponse {
        try await self.createExtension(.init(sdkAppId: sdkAppId, extensionId: extensionId, extensionName: extensionName), region: region, logger: logger, on: eventLoop)
    }
}
