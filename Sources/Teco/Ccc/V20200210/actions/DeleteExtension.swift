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
    /// DeleteExtension请求参数结构体
    public struct DeleteExtensionRequest: TCRequestModel {
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

    /// DeleteExtension返回参数结构体
    public struct DeleteExtensionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除话机账号
    @inlinable @discardableResult
    public func deleteExtension(_ input: DeleteExtensionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteExtensionResponse> {
        self.client.execute(action: "DeleteExtension", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除话机账号
    @inlinable @discardableResult
    public func deleteExtension(_ input: DeleteExtensionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteExtensionResponse {
        try await self.client.execute(action: "DeleteExtension", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除话机账号
    @inlinable @discardableResult
    public func deleteExtension(sdkAppId: UInt64, extensionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteExtensionResponse> {
        let input = DeleteExtensionRequest(sdkAppId: sdkAppId, extensionId: extensionId)
        return self.client.execute(action: "DeleteExtension", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除话机账号
    @inlinable @discardableResult
    public func deleteExtension(sdkAppId: UInt64, extensionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteExtensionResponse {
        let input = DeleteExtensionRequest(sdkAppId: sdkAppId, extensionId: extensionId)
        return try await self.client.execute(action: "DeleteExtension", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
