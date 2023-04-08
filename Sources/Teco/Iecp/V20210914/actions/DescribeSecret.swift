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
    /// DescribeSecret请求参数结构体
    public struct DescribeSecretRequest: TCRequestModel {
        /// 边缘单元ID
        public let edgeUnitID: UInt64

        /// secret名
        public let secretName: String

        /// 命名空间(默认值:default）
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

    /// DescribeSecret返回参数结构体
    public struct DescribeSecretResponse: TCResponseModel {
        /// Secret名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 命名空间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let namespace: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// secret的yaml格式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let yaml: String?

        /// secret的json格式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let json: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case namespace = "Namespace"
            case createTime = "CreateTime"
            case yaml = "Yaml"
            case json = "Json"
            case requestId = "RequestId"
        }
    }

    /// 获取Secret详情
    @inlinable
    public func describeSecret(_ input: DescribeSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecretResponse> {
        self.client.execute(action: "DescribeSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Secret详情
    @inlinable
    public func describeSecret(_ input: DescribeSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecretResponse {
        try await self.client.execute(action: "DescribeSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Secret详情
    @inlinable
    public func describeSecret(edgeUnitID: UInt64, secretName: String, secretNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecretResponse> {
        self.describeSecret(.init(edgeUnitID: edgeUnitID, secretName: secretName, secretNamespace: secretNamespace), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Secret详情
    @inlinable
    public func describeSecret(edgeUnitID: UInt64, secretName: String, secretNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecretResponse {
        try await self.describeSecret(.init(edgeUnitID: edgeUnitID, secretName: secretName, secretNamespace: secretNamespace), region: region, logger: logger, on: eventLoop)
    }
}
