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

extension Iecp {
    /// ModifyConfigMap请求参数结构体
    public struct ModifyConfigMapRequest: TCRequestModel {
        /// 单元ID
        public let edgeUnitID: UInt64

        /// ConfigMap名称
        public let configMapName: String

        /// Yaml配置, base64之后的串
        public let yaml: String

        /// ConfigMap命名空间
        public let configMapNamespace: String?

        public init(edgeUnitID: UInt64, configMapName: String, yaml: String, configMapNamespace: String? = nil) {
            self.edgeUnitID = edgeUnitID
            self.configMapName = configMapName
            self.yaml = yaml
            self.configMapNamespace = configMapNamespace
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case configMapName = "ConfigMapName"
            case yaml = "Yaml"
            case configMapNamespace = "ConfigMapNamespace"
        }
    }

    /// ModifyConfigMap返回参数结构体
    public struct ModifyConfigMapResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改ConfigMap
    @inlinable @discardableResult
    public func modifyConfigMap(_ input: ModifyConfigMapRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConfigMapResponse> {
        self.client.execute(action: "ModifyConfigMap", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改ConfigMap
    @inlinable @discardableResult
    public func modifyConfigMap(_ input: ModifyConfigMapRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConfigMapResponse {
        try await self.client.execute(action: "ModifyConfigMap", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改ConfigMap
    @inlinable @discardableResult
    public func modifyConfigMap(edgeUnitID: UInt64, configMapName: String, yaml: String, configMapNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConfigMapResponse> {
        self.modifyConfigMap(.init(edgeUnitID: edgeUnitID, configMapName: configMapName, yaml: yaml, configMapNamespace: configMapNamespace), region: region, logger: logger, on: eventLoop)
    }

    /// 修改ConfigMap
    @inlinable @discardableResult
    public func modifyConfigMap(edgeUnitID: UInt64, configMapName: String, yaml: String, configMapNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConfigMapResponse {
        try await self.modifyConfigMap(.init(edgeUnitID: edgeUnitID, configMapName: configMapName, yaml: yaml, configMapNamespace: configMapNamespace), region: region, logger: logger, on: eventLoop)
    }
}
