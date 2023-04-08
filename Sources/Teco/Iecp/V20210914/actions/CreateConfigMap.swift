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
    /// CreateConfigMap请求参数结构体
    public struct CreateConfigMapRequest: TCRequestModel {
        /// 单元ID
        public let edgeUnitID: UInt64

        /// ConfigMap名称
        public let configMapName: String

        /// ConfigMap内容
        public let configMapData: [KeyValueObj]

        /// ConfigMap命名空间,默认：default
        public let configMapNamespace: String?

        public init(edgeUnitID: UInt64, configMapName: String, configMapData: [KeyValueObj], configMapNamespace: String? = nil) {
            self.edgeUnitID = edgeUnitID
            self.configMapName = configMapName
            self.configMapData = configMapData
            self.configMapNamespace = configMapNamespace
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case configMapName = "ConfigMapName"
            case configMapData = "ConfigMapData"
            case configMapNamespace = "ConfigMapNamespace"
        }
    }

    /// CreateConfigMap返回参数结构体
    public struct CreateConfigMapResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建ConfigMap
    @inlinable @discardableResult
    public func createConfigMap(_ input: CreateConfigMapRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigMapResponse> {
        self.client.execute(action: "CreateConfigMap", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建ConfigMap
    @inlinable @discardableResult
    public func createConfigMap(_ input: CreateConfigMapRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConfigMapResponse {
        try await self.client.execute(action: "CreateConfigMap", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建ConfigMap
    @inlinable @discardableResult
    public func createConfigMap(edgeUnitID: UInt64, configMapName: String, configMapData: [KeyValueObj], configMapNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigMapResponse> {
        self.createConfigMap(.init(edgeUnitID: edgeUnitID, configMapName: configMapName, configMapData: configMapData, configMapNamespace: configMapNamespace), region: region, logger: logger, on: eventLoop)
    }

    /// 创建ConfigMap
    @inlinable @discardableResult
    public func createConfigMap(edgeUnitID: UInt64, configMapName: String, configMapData: [KeyValueObj], configMapNamespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConfigMapResponse {
        try await self.createConfigMap(.init(edgeUnitID: edgeUnitID, configMapName: configMapName, configMapData: configMapData, configMapNamespace: configMapNamespace), region: region, logger: logger, on: eventLoop)
    }
}
