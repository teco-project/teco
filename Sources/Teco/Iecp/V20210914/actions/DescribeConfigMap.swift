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
    /// DescribeConfigMap请求参数结构体
    public struct DescribeConfigMapRequest: TCRequestModel {
        /// 单元ID
        public let edgeUnitID: UInt64

        /// ConfigMap名称
        public let configMapName: String

        /// ConfigMap命名空间
        public let configMapNamespace: String?

        public init(edgeUnitID: UInt64, configMapName: String, configMapNamespace: String? = nil) {
            self.edgeUnitID = edgeUnitID
            self.configMapName = configMapName
            self.configMapNamespace = configMapNamespace
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case configMapName = "ConfigMapName"
            case configMapNamespace = "ConfigMapNamespace"
        }
    }

    /// DescribeConfigMap返回参数结构体
    public struct DescribeConfigMapResponse: TCResponseModel {
        /// 名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 命名空间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let namespace: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// yaml配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let yaml: String?

        /// 配置项的json格式(base64编码)
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

    /// 获取ConfigMap详情
    @inlinable
    public func describeConfigMap(_ input: DescribeConfigMapRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigMapResponse> {
        self.client.execute(action: "DescribeConfigMap", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取ConfigMap详情
    @inlinable
    public func describeConfigMap(_ input: DescribeConfigMapRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigMapResponse {
        try await self.client.execute(action: "DescribeConfigMap", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取ConfigMap详情
    @inlinable
    public func describeConfigMap(edgeUnitID: UInt64, configMapName: String, configMapNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigMapResponse> {
        self.describeConfigMap(.init(edgeUnitID: edgeUnitID, configMapName: configMapName, configMapNamespace: configMapNamespace), region: region, logger: logger, on: eventLoop)
    }

    /// 获取ConfigMap详情
    @inlinable
    public func describeConfigMap(edgeUnitID: UInt64, configMapName: String, configMapNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigMapResponse {
        try await self.describeConfigMap(.init(edgeUnitID: edgeUnitID, configMapName: configMapName, configMapNamespace: configMapNamespace), region: region, logger: logger, on: eventLoop)
    }
}
