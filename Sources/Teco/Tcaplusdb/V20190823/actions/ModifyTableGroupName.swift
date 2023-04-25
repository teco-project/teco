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

extension Tcaplusdb {
    /// ModifyTableGroupName请求参数结构体
    public struct ModifyTableGroupNameRequest: TCRequestModel {
        /// 表格组所属的集群ID
        public let clusterId: String

        /// 待修改名称的表格组ID
        public let tableGroupId: String

        /// 新的表格组名称，可以使用中英文字符和符号
        public let tableGroupName: String

        public init(clusterId: String, tableGroupId: String, tableGroupName: String) {
            self.clusterId = clusterId
            self.tableGroupId = tableGroupId
            self.tableGroupName = tableGroupName
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupId = "TableGroupId"
            case tableGroupName = "TableGroupName"
        }
    }

    /// ModifyTableGroupName返回参数结构体
    public struct ModifyTableGroupNameResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改表格组名称
    ///
    /// 修改TcaplusDB表格组名称
    @inlinable @discardableResult
    public func modifyTableGroupName(_ input: ModifyTableGroupNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTableGroupNameResponse> {
        self.client.execute(action: "ModifyTableGroupName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改表格组名称
    ///
    /// 修改TcaplusDB表格组名称
    @inlinable @discardableResult
    public func modifyTableGroupName(_ input: ModifyTableGroupNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTableGroupNameResponse {
        try await self.client.execute(action: "ModifyTableGroupName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改表格组名称
    ///
    /// 修改TcaplusDB表格组名称
    @inlinable @discardableResult
    public func modifyTableGroupName(clusterId: String, tableGroupId: String, tableGroupName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTableGroupNameResponse> {
        self.modifyTableGroupName(.init(clusterId: clusterId, tableGroupId: tableGroupId, tableGroupName: tableGroupName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改表格组名称
    ///
    /// 修改TcaplusDB表格组名称
    @inlinable @discardableResult
    public func modifyTableGroupName(clusterId: String, tableGroupId: String, tableGroupName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTableGroupNameResponse {
        try await self.modifyTableGroupName(.init(clusterId: clusterId, tableGroupId: tableGroupId, tableGroupName: tableGroupName), region: region, logger: logger, on: eventLoop)
    }
}
