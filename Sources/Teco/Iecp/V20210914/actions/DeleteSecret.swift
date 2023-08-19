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

extension Iecp {
    /// DeleteSecret请求参数结构体
    public struct DeleteSecretRequest: TCRequest {
        /// 单元ID
        public let edgeUnitID: UInt64

        /// secret名称
        public let secretName: String

        /// secret命名空间（默认:default）
        public let secretNamespace: String?

        public init(edgeUnitID: UInt64, secretName: String, secretNamespace: String? = nil) {
            self.edgeUnitID = edgeUnitID
            self.secretName = secretName
            self.secretNamespace = secretNamespace
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case secretName = "SecretName"
            case secretNamespace = "SecretNamespace"
        }
    }

    /// DeleteSecret返回参数结构体
    public struct DeleteSecretResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除Secret
    @inlinable @discardableResult
    public func deleteSecret(_ input: DeleteSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecretResponse> {
        self.client.execute(action: "DeleteSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Secret
    @inlinable @discardableResult
    public func deleteSecret(_ input: DeleteSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecretResponse {
        try await self.client.execute(action: "DeleteSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除Secret
    @inlinable @discardableResult
    public func deleteSecret(edgeUnitID: UInt64, secretName: String, secretNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecretResponse> {
        self.deleteSecret(.init(edgeUnitID: edgeUnitID, secretName: secretName, secretNamespace: secretNamespace), region: region, logger: logger, on: eventLoop)
    }

    /// 删除Secret
    @inlinable @discardableResult
    public func deleteSecret(edgeUnitID: UInt64, secretName: String, secretNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecretResponse {
        try await self.deleteSecret(.init(edgeUnitID: edgeUnitID, secretName: secretName, secretNamespace: secretNamespace), region: region, logger: logger, on: eventLoop)
    }
}
