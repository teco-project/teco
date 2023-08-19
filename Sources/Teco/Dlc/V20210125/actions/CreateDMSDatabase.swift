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
    /// CreateDMSDatabase请求参数结构体
    public struct CreateDMSDatabaseRequest: TCRequest {
        /// 基础元数据对象
        public let asset: Asset?

        /// Schema目录
        public let schemaName: String?

        /// Db存储路径
        public let location: String?

        /// 数据库名称
        public let name: String?

        public init(asset: Asset? = nil, schemaName: String? = nil, location: String? = nil, name: String? = nil) {
            self.asset = asset
            self.schemaName = schemaName
            self.location = location
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case asset = "Asset"
            case schemaName = "SchemaName"
            case location = "Location"
            case name = "Name"
        }
    }

    /// CreateDMSDatabase返回参数结构体
    public struct CreateDMSDatabaseResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// DMS元数据创建库
    @inlinable @discardableResult
    public func createDMSDatabase(_ input: CreateDMSDatabaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDMSDatabaseResponse> {
        self.client.execute(action: "CreateDMSDatabase", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DMS元数据创建库
    @inlinable @discardableResult
    public func createDMSDatabase(_ input: CreateDMSDatabaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDMSDatabaseResponse {
        try await self.client.execute(action: "CreateDMSDatabase", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// DMS元数据创建库
    @inlinable @discardableResult
    public func createDMSDatabase(asset: Asset? = nil, schemaName: String? = nil, location: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDMSDatabaseResponse> {
        self.createDMSDatabase(.init(asset: asset, schemaName: schemaName, location: location, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// DMS元数据创建库
    @inlinable @discardableResult
    public func createDMSDatabase(asset: Asset? = nil, schemaName: String? = nil, location: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDMSDatabaseResponse {
        try await self.createDMSDatabase(.init(asset: asset, schemaName: schemaName, location: location, name: name), region: region, logger: logger, on: eventLoop)
    }
}
