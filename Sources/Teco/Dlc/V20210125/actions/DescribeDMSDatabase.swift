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

extension Dlc {
    /// DescribeDMSDatabase请求参数结构体
    public struct DescribeDMSDatabaseRequest: TCRequest {
        /// 数据库名称
        public let name: String?

        /// schema名称
        public let schemaName: String?

        /// 匹配规则
        public let pattern: String?

        public init(name: String? = nil, schemaName: String? = nil, pattern: String? = nil) {
            self.name = name
            self.schemaName = schemaName
            self.pattern = pattern
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case schemaName = "SchemaName"
            case pattern = "Pattern"
        }
    }

    /// DescribeDMSDatabase返回参数结构体
    public struct DescribeDMSDatabaseResponse: TCResponse {
        /// 数据库名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// schema名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let schemaName: String?

        /// 存储地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let location: String?

        /// 数据对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asset: Asset?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case schemaName = "SchemaName"
            case location = "Location"
            case asset = "Asset"
            case requestId = "RequestId"
        }
    }

    /// DMS元数据获取库
    @inlinable
    public func describeDMSDatabase(_ input: DescribeDMSDatabaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDMSDatabaseResponse> {
        self.client.execute(action: "DescribeDMSDatabase", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DMS元数据获取库
    @inlinable
    public func describeDMSDatabase(_ input: DescribeDMSDatabaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDMSDatabaseResponse {
        try await self.client.execute(action: "DescribeDMSDatabase", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// DMS元数据获取库
    @inlinable
    public func describeDMSDatabase(name: String? = nil, schemaName: String? = nil, pattern: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDMSDatabaseResponse> {
        self.describeDMSDatabase(.init(name: name, schemaName: schemaName, pattern: pattern), region: region, logger: logger, on: eventLoop)
    }

    /// DMS元数据获取库
    @inlinable
    public func describeDMSDatabase(name: String? = nil, schemaName: String? = nil, pattern: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDMSDatabaseResponse {
        try await self.describeDMSDatabase(.init(name: name, schemaName: schemaName, pattern: pattern), region: region, logger: logger, on: eventLoop)
    }
}
