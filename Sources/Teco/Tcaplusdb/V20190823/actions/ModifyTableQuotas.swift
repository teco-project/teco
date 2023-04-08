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

extension Tcaplusdb {
    /// ModifyTableQuotas请求参数结构体
    public struct ModifyTableQuotasRequest: TCRequestModel {
        /// 带扩缩容表所属集群ID
        public let clusterId: String

        /// 已选中待修改的表配额列表
        public let tableQuotas: [SelectedTableInfoNew]

        public init(clusterId: String, tableQuotas: [SelectedTableInfoNew]) {
            self.clusterId = clusterId
            self.tableQuotas = tableQuotas
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableQuotas = "TableQuotas"
        }
    }

    /// ModifyTableQuotas返回参数结构体
    public struct ModifyTableQuotasResponse: TCResponseModel {
        /// 扩缩容结果数量
        public let totalCount: UInt64

        /// 扩缩容结果列表
        public let tableResults: [TableResultNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableResults = "TableResults"
            case requestId = "RequestId"
        }
    }

    /// 表扩缩容
    ///
    /// 表格扩缩容
    @inlinable
    public func modifyTableQuotas(_ input: ModifyTableQuotasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTableQuotasResponse> {
        self.client.execute(action: "ModifyTableQuotas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 表扩缩容
    ///
    /// 表格扩缩容
    @inlinable
    public func modifyTableQuotas(_ input: ModifyTableQuotasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTableQuotasResponse {
        try await self.client.execute(action: "ModifyTableQuotas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 表扩缩容
    ///
    /// 表格扩缩容
    @inlinable
    public func modifyTableQuotas(clusterId: String, tableQuotas: [SelectedTableInfoNew], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTableQuotasResponse> {
        self.modifyTableQuotas(.init(clusterId: clusterId, tableQuotas: tableQuotas), region: region, logger: logger, on: eventLoop)
    }

    /// 表扩缩容
    ///
    /// 表格扩缩容
    @inlinable
    public func modifyTableQuotas(clusterId: String, tableQuotas: [SelectedTableInfoNew], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTableQuotasResponse {
        try await self.modifyTableQuotas(.init(clusterId: clusterId, tableQuotas: tableQuotas), region: region, logger: logger, on: eventLoop)
    }
}
