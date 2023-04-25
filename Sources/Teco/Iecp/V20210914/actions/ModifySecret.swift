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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Iecp {
    /// ModifySecret请求参数结构体
    public struct ModifySecretRequest: TCRequestModel {
        /// 边缘单元ID
        public let edgeUnitID: UInt64

        /// Secret名
        public let secretName: String

        /// Secret的Yaml格式
        public let yaml: String

        /// Secret命名空间（默认:default）
        public let secretNamespace: String?

        public init(edgeUnitID: UInt64, secretName: String, yaml: String, secretNamespace: String? = nil) {
            self.edgeUnitID = edgeUnitID
            self.secretName = secretName
            self.yaml = yaml
            self.secretNamespace = secretNamespace
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case secretName = "SecretName"
            case yaml = "Yaml"
            case secretNamespace = "SecretNamespace"
        }
    }

    /// ModifySecret返回参数结构体
    public struct ModifySecretResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改Secret
    @inlinable @discardableResult
    public func modifySecret(_ input: ModifySecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecretResponse> {
        self.client.execute(action: "ModifySecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改Secret
    @inlinable @discardableResult
    public func modifySecret(_ input: ModifySecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecretResponse {
        try await self.client.execute(action: "ModifySecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改Secret
    @inlinable @discardableResult
    public func modifySecret(edgeUnitID: UInt64, secretName: String, yaml: String, secretNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecretResponse> {
        self.modifySecret(.init(edgeUnitID: edgeUnitID, secretName: secretName, yaml: yaml, secretNamespace: secretNamespace), region: region, logger: logger, on: eventLoop)
    }

    /// 修改Secret
    @inlinable @discardableResult
    public func modifySecret(edgeUnitID: UInt64, secretName: String, yaml: String, secretNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecretResponse {
        try await self.modifySecret(.init(edgeUnitID: edgeUnitID, secretName: secretName, yaml: yaml, secretNamespace: secretNamespace), region: region, logger: logger, on: eventLoop)
    }
}
