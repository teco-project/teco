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

extension Tke {
    /// DisableEncryptionProtection请求参数结构体
    public struct DisableEncryptionProtectionRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DisableEncryptionProtection返回参数结构体
    public struct DisableEncryptionProtectionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 关闭加密信息保护
    @inlinable @discardableResult
    public func disableEncryptionProtection(_ input: DisableEncryptionProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableEncryptionProtectionResponse> {
        self.client.execute(action: "DisableEncryptionProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭加密信息保护
    @inlinable @discardableResult
    public func disableEncryptionProtection(_ input: DisableEncryptionProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableEncryptionProtectionResponse {
        try await self.client.execute(action: "DisableEncryptionProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭加密信息保护
    @inlinable @discardableResult
    public func disableEncryptionProtection(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableEncryptionProtectionResponse> {
        self.disableEncryptionProtection(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭加密信息保护
    @inlinable @discardableResult
    public func disableEncryptionProtection(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableEncryptionProtectionResponse {
        try await self.disableEncryptionProtection(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}