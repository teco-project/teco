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
    /// ModifyTableMemos请求参数结构体
    public struct ModifyTableMemosRequest: TCRequestModel {
        /// 表所属集群实例ID
        public let clusterId: String

        /// 选定表详情列表
        public let tableMemos: [SelectedTableInfoNew]

        public init(clusterId: String, tableMemos: [SelectedTableInfoNew]) {
            self.clusterId = clusterId
            self.tableMemos = tableMemos
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableMemos = "TableMemos"
        }
    }

    /// ModifyTableMemos返回参数结构体
    public struct ModifyTableMemosResponse: TCResponseModel {
        /// 表备注修改结果数量
        public let totalCount: UInt64

        /// 表备注修改结果列表
        public let tableResults: [TableResultNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableResults = "TableResults"
            case requestId = "RequestId"
        }
    }

    /// 修改表备注信息
    @inlinable
    public func modifyTableMemos(_ input: ModifyTableMemosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTableMemosResponse> {
        self.client.execute(action: "ModifyTableMemos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改表备注信息
    @inlinable
    public func modifyTableMemos(_ input: ModifyTableMemosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTableMemosResponse {
        try await self.client.execute(action: "ModifyTableMemos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改表备注信息
    @inlinable
    public func modifyTableMemos(clusterId: String, tableMemos: [SelectedTableInfoNew], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTableMemosResponse> {
        let input = ModifyTableMemosRequest(clusterId: clusterId, tableMemos: tableMemos)
        return self.client.execute(action: "ModifyTableMemos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改表备注信息
    @inlinable
    public func modifyTableMemos(clusterId: String, tableMemos: [SelectedTableInfoNew], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTableMemosResponse {
        let input = ModifyTableMemosRequest(clusterId: clusterId, tableMemos: tableMemos)
        return try await self.client.execute(action: "ModifyTableMemos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
