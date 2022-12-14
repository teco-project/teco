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

extension Tcaplusdb {
    /// DeleteTableGroup请求参数结构体
    public struct DeleteTableGroupRequest: TCRequestModel {
        /// 表格组所属的集群ID
        public let clusterId: String

        /// 表格组ID
        public let tableGroupId: String

        public init(clusterId: String, tableGroupId: String) {
            self.clusterId = clusterId
            self.tableGroupId = tableGroupId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupId = "TableGroupId"
        }
    }

    /// DeleteTableGroup返回参数结构体
    public struct DeleteTableGroupResponse: TCResponseModel {
        /// 删除表格组所创建的任务ID
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 删除表格组
    @inlinable
    public func deleteTableGroup(_ input: DeleteTableGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTableGroupResponse > {
        self.client.execute(action: "DeleteTableGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除表格组
    @inlinable
    public func deleteTableGroup(_ input: DeleteTableGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTableGroupResponse {
        try await self.client.execute(action: "DeleteTableGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除表格组
    @inlinable
    public func deleteTableGroup(clusterId: String, tableGroupId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTableGroupResponse > {
        self.deleteTableGroup(DeleteTableGroupRequest(clusterId: clusterId, tableGroupId: tableGroupId), logger: logger, on: eventLoop)
    }

    /// 删除表格组
    @inlinable
    public func deleteTableGroup(clusterId: String, tableGroupId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTableGroupResponse {
        try await self.deleteTableGroup(DeleteTableGroupRequest(clusterId: clusterId, tableGroupId: tableGroupId), logger: logger, on: eventLoop)
    }
}
