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

extension Tdid {
    /// GetDidList请求参数结构体
    public struct GetDidListRequest: TCRequestModel {
        /// 每页大小
        public let pageSize: Int64

        /// 页码，从1开始
        public let pageNumber: Int64

        /// Did信息
        public let did: String?

        /// 网络ID
        public let clusterId: String?

        /// 群组ID
        public let groupId: Int64?

        public init(pageSize: Int64, pageNumber: Int64, did: String? = nil, clusterId: String? = nil, groupId: Int64? = nil) {
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.did = did
            self.clusterId = clusterId
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case did = "Did"
            case clusterId = "ClusterId"
            case groupId = "GroupId"
        }
    }

    /// GetDidList返回参数结构体
    public struct GetDidListResponse: TCResponseModel {
        /// 数据列表
        public let dataList: [DidData]

        /// 数据总条数
        public let allCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataList = "DataList"
            case allCount = "AllCount"
            case requestId = "RequestId"
        }
    }

    /// DID列表
    @inlinable
    public func getDidList(_ input: GetDidListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetDidListResponse > {
        self.client.execute(action: "GetDidList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DID列表
    @inlinable
    public func getDidList(_ input: GetDidListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDidListResponse {
        try await self.client.execute(action: "GetDidList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// DID列表
    @inlinable
    public func getDidList(pageSize: Int64, pageNumber: Int64, did: String? = nil, clusterId: String? = nil, groupId: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetDidListResponse > {
        self.getDidList(GetDidListRequest(pageSize: pageSize, pageNumber: pageNumber, did: did, clusterId: clusterId, groupId: groupId), logger: logger, on: eventLoop)
    }

    /// DID列表
    @inlinable
    public func getDidList(pageSize: Int64, pageNumber: Int64, did: String? = nil, clusterId: String? = nil, groupId: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDidListResponse {
        try await self.getDidList(GetDidListRequest(pageSize: pageSize, pageNumber: pageNumber, did: did, clusterId: clusterId, groupId: groupId), logger: logger, on: eventLoop)
    }
}
