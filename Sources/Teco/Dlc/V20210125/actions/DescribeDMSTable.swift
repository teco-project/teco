//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Dlc {
    /// DescribeDMSTable请求参数结构体
    public struct DescribeDMSTableRequest: TCRequestModel {
        /// 数据库名称
        public let dbName: String?
        
        /// 数据库schema名称
        public let schemaName: String?
        
        /// 表名称
        public let name: String?
        
        /// 数据目录
        public let catalog: String?
        
        /// 查询关键词
        public let keyword: String?
        
        /// 查询模式
        public let pattern: String?
        
        /// 表类型
        public let type: String?
        
        public init (dbName: String? = nil, schemaName: String? = nil, name: String? = nil, catalog: String? = nil, keyword: String? = nil, pattern: String? = nil, type: String? = nil) {
            self.dbName = dbName
            self.schemaName = schemaName
            self.name = name
            self.catalog = catalog
            self.keyword = keyword
            self.pattern = pattern
            self.type = type
        }
        
        enum CodingKeys: String, CodingKey {
            case dbName = "DbName"
            case schemaName = "SchemaName"
            case name = "Name"
            case catalog = "Catalog"
            case keyword = "Keyword"
            case pattern = "Pattern"
            case type = "Type"
        }
    }
    
    /// DescribeDMSTable返回参数结构体
    public struct DescribeDMSTableResponse: TCResponseModel {
        /// 基础对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asset: Asset?
        
        /// 视图文本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let viewOriginalText: String?
        
        /// 视图文本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let viewExpandedText: String?
        
        /// hive维护版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let retention: Int64?
        
        /// 存储对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sds: DMSSds?
        
        /// 分区列
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let partitionKeys: [DMSColumn]?
        
        /// 分区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let partitions: [DMSPartition]?
        
        /// 表类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?
        
        /// 数据库名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dbName: String?
        
        /// Schame名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let schemaName: String?
        
        /// 存储大小
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let storageSize: Int64?
        
        /// 记录数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordCount: Int64?
        
        /// 生命周期
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lifeTime: Int64?
        
        /// 最后访问时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var lastAccessTime: Date?
        
        /// 数据更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var dataUpdateTime: Date?
        
        /// 结构更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var structUpdateTime: Date?
        
        /// 列
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let columns: [DMSColumn]?
        
        /// 表名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case asset = "Asset"
            case viewOriginalText = "ViewOriginalText"
            case viewExpandedText = "ViewExpandedText"
            case retention = "Retention"
            case sds = "Sds"
            case partitionKeys = "PartitionKeys"
            case partitions = "Partitions"
            case type = "Type"
            case dbName = "DbName"
            case schemaName = "SchemaName"
            case storageSize = "StorageSize"
            case recordCount = "RecordCount"
            case lifeTime = "LifeTime"
            case lastAccessTime = "LastAccessTime"
            case dataUpdateTime = "DataUpdateTime"
            case structUpdateTime = "StructUpdateTime"
            case columns = "Columns"
            case name = "Name"
            case requestId = "RequestId"
        }
    }
    
    /// DMS元数据获取表
    @inlinable
    public func describeDMSTable(_ input: DescribeDMSTableRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDMSTableResponse > {
        self.client.execute(action: "DescribeDMSTable", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// DMS元数据获取表
    @inlinable
    public func describeDMSTable(_ input: DescribeDMSTableRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDMSTableResponse {
        try await self.client.execute(action: "DescribeDMSTable", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DMS元数据获取表
    @inlinable
    public func describeDMSTable(dbName: String? = nil, schemaName: String? = nil, name: String? = nil, catalog: String? = nil, keyword: String? = nil, pattern: String? = nil, type: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDMSTableResponse > {
        self.describeDMSTable(DescribeDMSTableRequest(dbName: dbName, schemaName: schemaName, name: name, catalog: catalog, keyword: keyword, pattern: pattern, type: type), logger: logger, on: eventLoop)
    }
    
    /// DMS元数据获取表
    @inlinable
    public func describeDMSTable(dbName: String? = nil, schemaName: String? = nil, name: String? = nil, catalog: String? = nil, keyword: String? = nil, pattern: String? = nil, type: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDMSTableResponse {
        try await self.describeDMSTable(DescribeDMSTableRequest(dbName: dbName, schemaName: schemaName, name: name, catalog: catalog, keyword: keyword, pattern: pattern, type: type), logger: logger, on: eventLoop)
    }
}
