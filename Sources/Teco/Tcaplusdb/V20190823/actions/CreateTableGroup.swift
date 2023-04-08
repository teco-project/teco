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

import TecoCore

extension Tcaplusdb {
    /// CreateTableGroup请求参数结构体
    public struct CreateTableGroupRequest: TCRequestModel {
        /// 表格组所属集群ID
        public let clusterId: String

        /// 表格组名称，可以采用中文、英文或数字字符，最大长度32个字符
        public let tableGroupName: String

        /// 表格组ID，可以由用户指定，但在同一个集群内不能重复，如果不指定则采用自增的模式
        public let tableGroupId: String?

        /// 表格组标签列表
        public let resourceTags: [TagInfoUnit]?

        public init(clusterId: String, tableGroupName: String, tableGroupId: String? = nil, resourceTags: [TagInfoUnit]? = nil) {
            self.clusterId = clusterId
            self.tableGroupName = tableGroupName
            self.tableGroupId = tableGroupId
            self.resourceTags = resourceTags
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupName = "TableGroupName"
            case tableGroupId = "TableGroupId"
            case resourceTags = "ResourceTags"
        }
    }

    /// CreateTableGroup返回参数结构体
    public struct CreateTableGroupResponse: TCResponseModel {
        /// 创建成功的表格组ID
        public let tableGroupId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tableGroupId = "TableGroupId"
            case requestId = "RequestId"
        }
    }

    /// 新建表格组
    ///
    /// 在TcaplusDB集群下创建表格组
    @inlinable
    public func createTableGroup(_ input: CreateTableGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTableGroupResponse> {
        self.client.execute(action: "CreateTableGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建表格组
    ///
    /// 在TcaplusDB集群下创建表格组
    @inlinable
    public func createTableGroup(_ input: CreateTableGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTableGroupResponse {
        try await self.client.execute(action: "CreateTableGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建表格组
    ///
    /// 在TcaplusDB集群下创建表格组
    @inlinable
    public func createTableGroup(clusterId: String, tableGroupName: String, tableGroupId: String? = nil, resourceTags: [TagInfoUnit]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTableGroupResponse> {
        self.createTableGroup(.init(clusterId: clusterId, tableGroupName: tableGroupName, tableGroupId: tableGroupId, resourceTags: resourceTags), region: region, logger: logger, on: eventLoop)
    }

    /// 新建表格组
    ///
    /// 在TcaplusDB集群下创建表格组
    @inlinable
    public func createTableGroup(clusterId: String, tableGroupName: String, tableGroupId: String? = nil, resourceTags: [TagInfoUnit]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTableGroupResponse {
        try await self.createTableGroup(.init(clusterId: clusterId, tableGroupName: tableGroupName, tableGroupId: tableGroupId, resourceTags: resourceTags), region: region, logger: logger, on: eventLoop)
    }
}
