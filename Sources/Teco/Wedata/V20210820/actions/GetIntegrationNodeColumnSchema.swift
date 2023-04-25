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

extension Wedata {
    /// GetIntegrationNodeColumnSchema请求参数结构体
    public struct GetIntegrationNodeColumnSchemaRequest: TCRequestModel {
        /// 字段示例（json格式）
        public let columnContent: String?

        /// 数据源类型
        public let datasourceType: String?

        public init(columnContent: String? = nil, datasourceType: String? = nil) {
            self.columnContent = columnContent
            self.datasourceType = datasourceType
        }

        enum CodingKeys: String, CodingKey {
            case columnContent = "ColumnContent"
            case datasourceType = "DatasourceType"
        }
    }

    /// GetIntegrationNodeColumnSchema返回参数结构体
    public struct GetIntegrationNodeColumnSchemaResponse: TCResponseModel {
        /// 字段列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let schemas: [IntegrationNodeSchema]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case schemas = "Schemas"
            case requestId = "RequestId"
        }
    }

    /// 提取数据集成节点字段Schema
    @inlinable
    public func getIntegrationNodeColumnSchema(_ input: GetIntegrationNodeColumnSchemaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIntegrationNodeColumnSchemaResponse> {
        self.client.execute(action: "GetIntegrationNodeColumnSchema", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提取数据集成节点字段Schema
    @inlinable
    public func getIntegrationNodeColumnSchema(_ input: GetIntegrationNodeColumnSchemaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIntegrationNodeColumnSchemaResponse {
        try await self.client.execute(action: "GetIntegrationNodeColumnSchema", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提取数据集成节点字段Schema
    @inlinable
    public func getIntegrationNodeColumnSchema(columnContent: String? = nil, datasourceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIntegrationNodeColumnSchemaResponse> {
        self.getIntegrationNodeColumnSchema(.init(columnContent: columnContent, datasourceType: datasourceType), region: region, logger: logger, on: eventLoop)
    }

    /// 提取数据集成节点字段Schema
    @inlinable
    public func getIntegrationNodeColumnSchema(columnContent: String? = nil, datasourceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIntegrationNodeColumnSchemaResponse {
        try await self.getIntegrationNodeColumnSchema(.init(columnContent: columnContent, datasourceType: datasourceType), region: region, logger: logger, on: eventLoop)
    }
}
