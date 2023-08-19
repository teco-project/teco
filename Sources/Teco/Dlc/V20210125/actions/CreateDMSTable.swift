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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Dlc {
    /// CreateDMSTable请求参数结构体
    public struct CreateDMSTableRequest: TCRequest {
        /// 基础对象
        public let asset: Asset?

        /// 表类型
        public let type: String?

        /// 数据库名称
        public let dbName: String?

        /// 存储大小
        public let storageSize: Int64?

        /// 记录数量
        public let recordCount: Int64?

        /// 生命周期
        public let lifeTime: Int64?

        /// 数据更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var dataUpdateTime: Date?

        /// 结构更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var structUpdateTime: Date?

        /// 最后访问时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var lastAccessTime: Date?

        /// 存储对象
        public let sds: DMSSds?

        /// 列
        public let columns: [DMSColumn]?

        /// 分区键值
        public let partitionKeys: [DMSColumn]?

        /// 视图文本
        public let viewOriginalText: String?

        /// 视图文本
        public let viewExpandedText: String?

        /// 分区
        public let partitions: [DMSPartition]?

        /// 表名称
        public let name: String?

        public init(asset: Asset? = nil, type: String? = nil, dbName: String? = nil, storageSize: Int64? = nil, recordCount: Int64? = nil, lifeTime: Int64? = nil, dataUpdateTime: Date? = nil, structUpdateTime: Date? = nil, lastAccessTime: Date? = nil, sds: DMSSds? = nil, columns: [DMSColumn]? = nil, partitionKeys: [DMSColumn]? = nil, viewOriginalText: String? = nil, viewExpandedText: String? = nil, partitions: [DMSPartition]? = nil, name: String? = nil) {
            self.asset = asset
            self.type = type
            self.dbName = dbName
            self.storageSize = storageSize
            self.recordCount = recordCount
            self.lifeTime = lifeTime
            self._dataUpdateTime = .init(wrappedValue: dataUpdateTime)
            self._structUpdateTime = .init(wrappedValue: structUpdateTime)
            self._lastAccessTime = .init(wrappedValue: lastAccessTime)
            self.sds = sds
            self.columns = columns
            self.partitionKeys = partitionKeys
            self.viewOriginalText = viewOriginalText
            self.viewExpandedText = viewExpandedText
            self.partitions = partitions
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case asset = "Asset"
            case type = "Type"
            case dbName = "DbName"
            case storageSize = "StorageSize"
            case recordCount = "RecordCount"
            case lifeTime = "LifeTime"
            case dataUpdateTime = "DataUpdateTime"
            case structUpdateTime = "StructUpdateTime"
            case lastAccessTime = "LastAccessTime"
            case sds = "Sds"
            case columns = "Columns"
            case partitionKeys = "PartitionKeys"
            case viewOriginalText = "ViewOriginalText"
            case viewExpandedText = "ViewExpandedText"
            case partitions = "Partitions"
            case name = "Name"
        }
    }

    /// CreateDMSTable返回参数结构体
    public struct CreateDMSTableResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// DMS元数据创建表
    @inlinable @discardableResult
    public func createDMSTable(_ input: CreateDMSTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDMSTableResponse> {
        self.client.execute(action: "CreateDMSTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DMS元数据创建表
    @inlinable @discardableResult
    public func createDMSTable(_ input: CreateDMSTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDMSTableResponse {
        try await self.client.execute(action: "CreateDMSTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// DMS元数据创建表
    @inlinable @discardableResult
    public func createDMSTable(asset: Asset? = nil, type: String? = nil, dbName: String? = nil, storageSize: Int64? = nil, recordCount: Int64? = nil, lifeTime: Int64? = nil, dataUpdateTime: Date? = nil, structUpdateTime: Date? = nil, lastAccessTime: Date? = nil, sds: DMSSds? = nil, columns: [DMSColumn]? = nil, partitionKeys: [DMSColumn]? = nil, viewOriginalText: String? = nil, viewExpandedText: String? = nil, partitions: [DMSPartition]? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDMSTableResponse> {
        self.createDMSTable(.init(asset: asset, type: type, dbName: dbName, storageSize: storageSize, recordCount: recordCount, lifeTime: lifeTime, dataUpdateTime: dataUpdateTime, structUpdateTime: structUpdateTime, lastAccessTime: lastAccessTime, sds: sds, columns: columns, partitionKeys: partitionKeys, viewOriginalText: viewOriginalText, viewExpandedText: viewExpandedText, partitions: partitions, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// DMS元数据创建表
    @inlinable @discardableResult
    public func createDMSTable(asset: Asset? = nil, type: String? = nil, dbName: String? = nil, storageSize: Int64? = nil, recordCount: Int64? = nil, lifeTime: Int64? = nil, dataUpdateTime: Date? = nil, structUpdateTime: Date? = nil, lastAccessTime: Date? = nil, sds: DMSSds? = nil, columns: [DMSColumn]? = nil, partitionKeys: [DMSColumn]? = nil, viewOriginalText: String? = nil, viewExpandedText: String? = nil, partitions: [DMSPartition]? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDMSTableResponse {
        try await self.createDMSTable(.init(asset: asset, type: type, dbName: dbName, storageSize: storageSize, recordCount: recordCount, lifeTime: lifeTime, dataUpdateTime: dataUpdateTime, structUpdateTime: structUpdateTime, lastAccessTime: lastAccessTime, sds: sds, columns: columns, partitionKeys: partitionKeys, viewOriginalText: viewOriginalText, viewExpandedText: viewExpandedText, partitions: partitions, name: name), region: region, logger: logger, on: eventLoop)
    }
}
