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

extension Dlc {
    /// CreateInternalTable请求参数结构体
    public struct CreateInternalTableRequest: TCRequestModel {
        /// 表基本信息
        public let tableBaseInfo: TableBaseInfo

        /// 表字段信息
        public let columns: [TColumn]

        /// 表分区信息
        public let partitions: [TPartition]?

        /// 表属性信息
        public let properties: [Property]?

        public init(tableBaseInfo: TableBaseInfo, columns: [TColumn], partitions: [TPartition]? = nil, properties: [Property]? = nil) {
            self.tableBaseInfo = tableBaseInfo
            self.columns = columns
            self.partitions = partitions
            self.properties = properties
        }

        enum CodingKeys: String, CodingKey {
            case tableBaseInfo = "TableBaseInfo"
            case columns = "Columns"
            case partitions = "Partitions"
            case properties = "Properties"
        }
    }

    /// CreateInternalTable返回参数结构体
    public struct CreateInternalTableResponse: TCResponseModel {
        /// 创建托管存储内表sql语句描述
        public let execution: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case execution = "Execution"
            case requestId = "RequestId"
        }
    }

    /// 创建托管存储内表
    ///
    /// 创建托管存储内表（该接口已废弃）
    @inlinable
    public func createInternalTable(_ input: CreateInternalTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInternalTableResponse> {
        self.client.execute(action: "CreateInternalTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建托管存储内表
    ///
    /// 创建托管存储内表（该接口已废弃）
    @inlinable
    public func createInternalTable(_ input: CreateInternalTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInternalTableResponse {
        try await self.client.execute(action: "CreateInternalTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建托管存储内表
    ///
    /// 创建托管存储内表（该接口已废弃）
    @inlinable
    public func createInternalTable(tableBaseInfo: TableBaseInfo, columns: [TColumn], partitions: [TPartition]? = nil, properties: [Property]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInternalTableResponse> {
        self.createInternalTable(.init(tableBaseInfo: tableBaseInfo, columns: columns, partitions: partitions, properties: properties), region: region, logger: logger, on: eventLoop)
    }

    /// 创建托管存储内表
    ///
    /// 创建托管存储内表（该接口已废弃）
    @inlinable
    public func createInternalTable(tableBaseInfo: TableBaseInfo, columns: [TColumn], partitions: [TPartition]? = nil, properties: [Property]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInternalTableResponse {
        try await self.createInternalTable(.init(tableBaseInfo: tableBaseInfo, columns: columns, partitions: partitions, properties: properties), region: region, logger: logger, on: eventLoop)
    }
}
