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

extension Tan {
    /// CreateBlockNodeRecords请求参数结构体
    public struct CreateBlockNodeRecordsRequest: TCRequestModel {
        /// 盘查组id，可在“盘查组概览”功能中获取。
        public let groupId: String

        /// 节点id，可在“数据接入管理”中获取。
        public let nodeId: String

        /// 节点数据json，具体demo请参考输入示例，其中key为数据接入管理中节点内创建的属性变量名，value为期望的推送值。
        public let records: String

        public init(groupId: String, nodeId: String, records: String) {
            self.groupId = groupId
            self.nodeId = nodeId
            self.records = records
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case nodeId = "NodeId"
            case records = "Records"
        }
    }

    /// CreateBlockNodeRecords返回参数结构体
    public struct CreateBlockNodeRecordsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 推送节点数据
    @inlinable @discardableResult
    public func createBlockNodeRecords(_ input: CreateBlockNodeRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBlockNodeRecordsResponse> {
        self.client.execute(action: "CreateBlockNodeRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 推送节点数据
    @inlinable @discardableResult
    public func createBlockNodeRecords(_ input: CreateBlockNodeRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBlockNodeRecordsResponse {
        try await self.client.execute(action: "CreateBlockNodeRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 推送节点数据
    @inlinable @discardableResult
    public func createBlockNodeRecords(groupId: String, nodeId: String, records: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBlockNodeRecordsResponse> {
        self.createBlockNodeRecords(.init(groupId: groupId, nodeId: nodeId, records: records), region: region, logger: logger, on: eventLoop)
    }

    /// 推送节点数据
    @inlinable @discardableResult
    public func createBlockNodeRecords(groupId: String, nodeId: String, records: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBlockNodeRecordsResponse {
        try await self.createBlockNodeRecords(.init(groupId: groupId, nodeId: nodeId, records: records), region: region, logger: logger, on: eventLoop)
    }
}
